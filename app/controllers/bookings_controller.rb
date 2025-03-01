class BookingsController < ApplicationController

  def create
    @yacht = Yacht.find(params[:yacht_id])
    @booking = Booking.new(booking_params)
    @booking.yacht = @yacht
    @booking.user =  current_user
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
