class CareTakingsController < ApplicationController
  def new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    if @baby.user == current_user
      @caretaker = User.find_by(email: params[:care_taking][:email])
      unless @caretaker.nil?
        CareTaking.create(baby_id: @baby.id, user_id: @caretaker.id, email: params[:care_taking][:email], name: @caretaker.name)
        redirect_to user_path(current_user)
      end
    end
  end

  def destroy
    @care_taking = CareTaking.find(params[:id])
    @care_taking.destroy
    redirect_to user_path(current_user)
  end
end
