class BooksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :search]
  before_action :set_item, only: [:edit, :update, :destroy]

  def index
    @books = Book.includes(:user).all
    @books = Book.all.order(start: 'DESC')
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_schedules_path(@book)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @book.destroy
    redirect_to root_path
  end

  def search
    @books = Book.search(params[:keyword])
  end


  private
  def book_params
    params.require(:book)
    .permit(:user, :images, :title, :description, :start, :end, :place, :publication)
    .merge(user_id: current_user.id)
  end

  def set_item
    @book = Book.find(params[:id])
  end

end
