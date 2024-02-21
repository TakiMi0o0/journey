class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @nickname = current_user.nickname
    @books = current_user.books
  end
  
  def show
    @nickname = current_user.nickname
    @books = current_user.books
  end
end
