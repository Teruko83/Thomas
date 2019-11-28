class BreastFeedingsController < ApplicationController
  def show
    @breastfeeding = current_user.breast_feedings
  end

  def index
  end

  def new
    @breastfeeding = BreastFeeding.new
    @baby = Baby.find(params[:baby_id])
  end

  def create
    @breastfeeding = BreastFeeding.new(breastfeedingsparams)
    @baby = Baby.find(params[:baby_id])
    @breastfeeding.baby = @baby
    @breastfeeding.save
    # redirect _ to
  end

private

  def breastfeedingsparams
    params.require(:breast_feeding).permit(:duration_minutes)
  end
end
