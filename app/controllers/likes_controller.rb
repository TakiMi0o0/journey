class LikesController < ApplicationController

  def create
    @book = Book.find(params[:book_id])
    current_user.likes.create(book: @book)
    render turbo_stream: turbo_stream.append(@book, partial: "likes/like", locals: { book: @book })
  end

  def destroy
    @book = Book.find(params[:book_id])
    @like = Like.find_by(book: @book, user: current_user)
  
    if @like
      @like.destroy
      render turbo_stream: turbo_stream.remove(@book)
    else
      render turbo_stream: turbo_stream.append(@book, partial: "likes/like", locals: { book: @book })
    end
  end
end