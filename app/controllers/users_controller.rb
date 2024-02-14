class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    @nickname = current_user.nickname
    @books = current_user.books
  end
end
