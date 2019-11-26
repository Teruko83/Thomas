class BabiesController < ApplicationController
  def index
    @babies = current_user.babies
  end

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
      render "new_baby"
    end
  end

  private

  def params_private_baby
    params.require(:baby).permit(:first_name, :birthdate)
  end
end
