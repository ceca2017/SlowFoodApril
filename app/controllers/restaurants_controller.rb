class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @rest_cats = RestCategory.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
