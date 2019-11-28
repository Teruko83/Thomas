class BreastFeedingsController < ApplicationController
  def show
    @breasts = current_user.breast_feedings
  end

  def index
    @baby = Baby.find(params[:baby_id])
    @breast_feedings = @baby.breast_feedings

    @last7 = @breast_feedings.last(7)
    @last30 = @breast_feedings.last(30)
  end

  def new
    @feeding = BreastFeeding.new
    @baby = Baby.find(params[:baby_id])
  end

  def create
    @feeding = BreastFeeding.new(breastfeedingsparams)
    @baby = Baby.find(params[:baby_id])
    @feeding.baby = @baby
    @feeding.save
    redirect_to baby_breast_feedings_path(@baby)
  end

  private

  def breastfeedingsparams
    params.require(:breast_feeding).permit(:duration_minutes, :baby_id)
  end
end
