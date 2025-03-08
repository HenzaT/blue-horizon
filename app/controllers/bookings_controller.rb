class BookingsController < ApplicationController

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new(booking_params)
    @booking.yacht = @yacht
    @booking.user =  current_user

    if params[:booking][:start_date] != "" && params[:booking][:end_date] != ""
      start_date = params[:booking][:start_date].to_time

      end_date = params[:booking][:end_date].to_time

      booking_days = ((end_date - start_date) + 86400)/86400
      @booking.price = @yacht.price * booking_days
    end
    if @booking.save
      redirect_to dashboard_path, notice: "Booking was successfully created!"
    else
      render "yachts/show", status: :unprocessable_entity, notice: "Failed to create booking"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
