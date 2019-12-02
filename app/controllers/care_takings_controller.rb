class CareTakingsController < ApplicationController
  def new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    if @baby.user == current_user
      @caretaker = User.find_by(email: params[:care_taking][:email])
      unless @caretaker.nil?
        CareTaking.create(baby_id: @baby.id, user_id: @caretaker.id)
      end
    end
  end
end
