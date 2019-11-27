class BottleFeedingsController < ApplicationController
  def show
  end

  def new
    @baby = Baby.find(params[:baby_id])
  end

  def create
    @baby = Baby.find(params[:baby_id])
    bottle_feeding = Bottlefeeding.new
    bottle_feeding.baby = @baby
    bottle_feeding.quantity = params[:quantity_feeded]
    if bottle_feeding.save
      redirect_to user_path(current_user)
    else
      render "alert"
    end
  end
end
