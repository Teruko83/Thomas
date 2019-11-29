class BreastFeedingsController < ApplicationController
  def show
    @breasts = current_user.breast_feedings
  end

  def index
    @baby = Baby.find(params[:baby_id])
    @breast_feedings = @baby.breast_feedings

    @feedings = []

    @breast_feedings.each do |b|
      feeding = {
        type: "boob",
        quantity: "#{b.duration_minutes}min",
        time_fed: b.start_date
      }
      @feedings << feeding
    end

    @feedings.sort_by { |f| f[:start_date] }

    @last7 = @breast_feedings.order(:start_date).last(7)
    @last30 = @breast_feedings.order(:start_date).last(30)
  end

  def new
    @feeding = BreastFeeding.new
    @baby = Baby.find(params[:baby_id])
  end

  def create
    @feeding = BreastFeeding.new(breastfeedingsparams)
    @feeding.start_date = Date.today
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
