class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def book_params
    params.require(:book)
    .permit(:user, :title, :description, :start, :end, :place, :publication)
    .merge(user_id: current_user.id)
  end

end
