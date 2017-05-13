class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def rest_cat
    cat_chosen = params[:category][:id]
    @restaurants = Restaurant.where(rest_category_id: cat_chosen)
    render 'index'
  end

end
