class UsersController < ApplicationController
  before_action :authenticate_user!

  def home
    @user = current_user
  end

  def show
    @user = current_user
  end
end