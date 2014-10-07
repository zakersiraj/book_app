class BooksController < ApplicationController
  include SessionsHelper
  def show
    @book = Book.find(params[:id])
  end
  
  def index
    if signed_in?
      @books = Book.all
    else
      redirect_to signin_path
    end
  end  

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      flash[:success] = "Book is successfully added!"
      redirect_to @book
    else
      render 'new'
    end
  end
end
