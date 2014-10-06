class SessionsController < ApplicationController
  include SessionsHelper
  
  def new
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      # redirect to the book show page
      sign_in user
      # but for now redirect to index page
      redirect_to books_path
    else
      flash.now[:error] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end

end
