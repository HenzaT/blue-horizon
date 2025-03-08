class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @threeYachts = Yacht.limit(3)
    @yachts = Yacht.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @yachts.geocoded.map do |yacht|
      {
        lat: yacht.latitude,
        lng: yacht.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {yacht: yacht})
      }
  end
  end

  def dashboard
    @user_bookings = Booking.where(user_id: current_user.id)
  end
end
