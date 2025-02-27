class YachtsController < ApplicationController
  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
    @user = User.find(params[:id])
  end

  def new
    @yacht = Yacht.new
  end

  private

  def yacht_params
    params.permit(:yacht).require(:name, :model, :size, :price, :description, :photo)
  end
end
