class CartsController < ApplicationController
  def index
    session[:cart] ||= []
    dish = Dish.find(params[:dish_id])
    @restaurant_id = params[:restaurant_id]
    if session[:cart] << dish
      redirect_to restaurant_menus_path(@restaurant_id)
      flash[:notice] = "#{dish.name} added to cart"
    else
      flash[:notice] = "Error: #{dish.name} was NOT added to cart"
    end
  end
end
