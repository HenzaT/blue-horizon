class HomePagesController < ApplicationController
  def home
    @featured_yachts = Yacht.limit(3)
    # OR
    # @featured_yachts = Yacht.where(available: true).limit(6)
  end
end
