class BooksController < ApplicationController
  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(params[:book])
    if @book.save
      # display all the books in the database
      redirect_to @book
    else
      render 'new'
    end
  end
end
