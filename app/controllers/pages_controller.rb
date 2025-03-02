class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @yachts = Yacht.limit(3)
  end

  def dashboard
    @user_bookings = Booking.where(user_id: current_user.id)
  end
end
