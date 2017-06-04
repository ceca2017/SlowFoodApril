class CartsController < ApplicationController
  def add_to_cart
    session[:cart] ||= []
    dish = Dish.find(params[:dish_id])
    @restaurant_id = params[:restaurant_id]
    session[:cart] << dish
    redirect_to restaurant_menus_path(@restaurant_id)
    flash[:notice] = "#{dish.name} added to cart"
  end

  def checkout
    if session[:cart] == nil
      @empty_cart = true
    else
      @items = session[:cart]
      @total_price = 0
      @items.each do |item|
        @total_price += item['price']
      end
      @empty_cart = false
    end
  end
end
