class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @nickname = current_user.nickname
    @books = current_user.books.order(start: 'DESC')
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.books.order(start: 'DESC')

    likes = Like.where(user_id: current_user.id).pluck(:book_id)  # ログイン中のユーザーのお気に入りのbook_idカラムを取得
    @like_list = Book.find(likes)     # booksテーブルから、お気に入り登録済みのレコードを取得
  end
end
