class BabiesController < ApplicationController
  def show
    @baby = Baby.find(params[:id])
  end

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new(params_private_baby)
    @baby.user = current_user
    if @baby.save
      redirect_to user_path(current_user)
    else
      render "babies/new"
  end

  private

  def params_private_baby
    params.require(:baby).permit(:first_name, :date_of_birth, :category, :bio, :photo, :price)
  end
end
