class LikesController < ApplicationController
  before_action :set_book

  def create
    like = current_user.likes.build(book_id: params[:book_id])
    like.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    like = Like.find_by(book_id: params[:book_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.js
    end
  end

  def set_book
    @book = Book.find(params[:book_id])
  end
  
end
