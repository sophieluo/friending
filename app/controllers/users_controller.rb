class UsersController < ApplicationController

  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def show
    @user = current_user
    @matching_users = User.where(native_lang: @user.learn_lang)
  end



end
