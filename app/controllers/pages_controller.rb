class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @yachts = Yacht.limit(3)
  end

  def dashboard
  end
  
end
