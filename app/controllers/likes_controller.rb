class LikesController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    current_user.likes.create(book: @book)
    render turbo_stream: turbo_stream.append(@book, partial: "likes/like", locals: { book: @book })
  end

  def destroy
    @book = Book.find(params[:book_id])
    Like.find_by(book: @book, user: current_user).destroy
    render turbo_stream: turbo_stream.remove(@book)
  end
end
