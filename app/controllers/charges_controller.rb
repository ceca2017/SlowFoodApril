class ChargesController < ApplicationController
  def new
    binding.pry
    @items = session[:cart]
    @total_price = 0
    @items.each do |item|
      @total_price += item['price']
    end
  end

  def create

  end
end
