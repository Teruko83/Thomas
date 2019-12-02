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
        time_fed: b.start_date,
        id: b.id
      }
      @feedings << feeding
    end

    @feedings.sort_by! { |f| f[:time_fed] }.reverse!

    @last7 = @breast_feedings
      .where(start_date: 7.days.ago..DateTime.now)
      .order(:start_date)
    @last30 = @breast_feedings
      .where(start_date: 30.days.ago..DateTime.now)
      .order(:start_date)
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @feeding = BreastFeeding.new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @feeding = BreastFeeding.new(breastfeedingsparams)
    @feeding.start_date = DateTime.now
    @feeding.baby = @baby
      if @feeding.save
      redirect_to baby_breast_feedings_path(@baby)
      else
      render "alert"
      end
  end

  def destroy
    breastfeeding = BreastFeeding.find(params[:id])
    breastfeeding.destroy
    redirect_to baby_breast_feedings_path(breastfeeding.baby)
  end

  private

  def breastfeedingsparams
    params.require(:breast_feeding).permit(:duration_minutes, :baby_id)
  end
end
