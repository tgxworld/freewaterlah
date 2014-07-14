class RestaurantsController < ApplicationController
  respond_to :json

  def index
    respond_with Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    @restaurant.save

    redirect_to root_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name)
  end
end
