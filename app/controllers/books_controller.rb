class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @books = Book.all.order('created_at DESC')
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

  def show
    @book = Book.find(params[:id])
  end

  private
  def book_params
    params.require(:book)
    .permit(:user, :title, :description, :start, :end, :place, :publication)
    .merge(user_id: current_user.id)
  end

end
