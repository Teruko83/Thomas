class UsersController < ApplicationController
  def show
    @user = current_user
    @babies = current_user.babies
  end
end
