class YachtsController < ApplicationController
  def show
    @yacht = Yacht.find(params[:id])
    @user = User.find(params[:id])
  end

  def new
    @yacht = Yacht.new
  end
end
