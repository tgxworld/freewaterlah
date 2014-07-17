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

    if @restaurant.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    if @restaurant.update_attributes(restaurant_params)
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name, :street_address, :postal_code, :website_url
    )
  end
end
