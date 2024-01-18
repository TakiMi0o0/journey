class ListsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :book_find
  before_action :list_find, only: [:edit, :update, :destroy]

  def index
    @category = params[:category]
    @lists = @book.lists.where(category: @category)
  end

  def new
    @list = List.new
  end

  def create
    @list = @book.lists.new(list_params)
    if @list.save
      redirect_to book_lists_path(@book, category: @list.category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @list.update(list_params)
      redirect_to book_lists_path(@book, category: @list.category)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @list.destroy
    redirect_to book_lists_path(@book, category: @list.category)
  end


  private
  def list_params
    params.require(:list)
    .permit(:category, :content, :quantity, :price, :list_memo)
    .merge(user_id: current_user.id, book_id: params[:book_id])
  end

  def book_find
    @book = Book.find(params[:book_id])
  end

  def list_find
    @list = List.find(params[:id])
  end
end
