class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      # sign_in @user
      flash.now[:success] = "Welcome..."
      render books_path
    else
      render 'new'
    end
  end

  def delete
  end
end
