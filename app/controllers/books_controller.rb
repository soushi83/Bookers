class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end
  
  private
  
  def set_book
    @book = Book.find(params[:id])
  end
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
