class BreastFeedingsController < ApplicationController
  def show
    @breasts = current_user.breast_feedings
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
      # redirect _ to

  end

  private

    def breastfeedingsparams
      params.require(:breast_feeding).permit(:duration_minutes, :baby_id)
    end

end
