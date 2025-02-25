class YachtsController < ApplicationController
  def show
    @yacht = Yacht.all
  end
end
