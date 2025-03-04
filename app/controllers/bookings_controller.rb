class BookingsController < ApplicationController

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new(booking_params)
    @booking.yacht = @yacht
    @booking.user =  current_user

    start_year = params["booking"]["start_date(1i)"]
    start_month = params["booking"]["start_date(2i)"]
    start_day = params["booking"]["start_date(3i)"]
    start_date = Time.new(start_year, start_month, start_day)

    end_year = params["booking"]["end_date(1i)"]
    end_month = params["booking"]["end_date(2i)"]
    end_day = params["booking"]["end_date(3i)"]
    end_date = Time.new(end_year, end_month, end_day)

    booking_days = ((end_date - start_date) + 86400)/86400
    @booking.price = @yacht.price * booking_days

    if @booking.save
      redirect_to yacht_path(@yacht), notice: "Booking was successfully created!!."
    else
      render "yachts/show", notice: "Failed to create booking"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
