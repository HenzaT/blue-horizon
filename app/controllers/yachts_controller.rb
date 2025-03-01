class YachtsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @yachts = Yacht.all
  end

  def show
    @yacht = Yacht.find(params[:id])
    @user = @yacht.user
  end

  def new
    @yacht = Yacht.new
  end

  def create
    @yacht = Yacht.new(yacht_params)
    @yacht.user = current_user
    if @yacht.save
      redirect_to yacht_path(@yacht), notice: "Yacht was successfully created!!."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def yacht_params
    params.require(:yacht).permit(:name, :model, :size, :price, :description, :photo)
  end
end
