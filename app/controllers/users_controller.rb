class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    binding.pry
    if params[:user][:password] == params[:user][:password_confirmation]
      @user = User.new(whitelist_params(params))
      binding.pry
    else
    end


  end

  private

  def whitelist_params(params)
    params.require(:user).permit(:first_name, :last_name, :address,
                                  :phone_number, :email, :password)
  end
end
