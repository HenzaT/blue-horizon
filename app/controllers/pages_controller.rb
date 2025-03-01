class PagesController < ApplicationController
  def home
    @yachts = Yacht.limit(3)
  end

  def dashboard
  end
end
