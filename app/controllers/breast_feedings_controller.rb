class BreastFeedingsController < ApplicationController
  def show
    @breasts = current_user.breast_feedings
  end

  def index
    @baby = Baby.find(params[:baby_id])
    @breast_feedings = @baby.breast_feedings

    @feedings = @breast_feedings.map do |b|
      feeding = {
        type: "boob",
        breast_side: b.breast_side || ["L", "R"].sample,
        quantity: "#{b.duration_minutes}min",
        start_date: b.start_date,
        user_id: b.user_id,
        id: b.id
      }
    end
    @feedings = @feedings.sort_by { |f| f[:start_date] }.reverse!


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
    @feeding.user = current_user
      if @feeding.save
      redirect_to baby_breast_feedings_path(@baby)
      else
      render "alert"
      end
  end

  def destroy

    breastfeeding = BreastFeeding.find(params[:id])
    breastfeeding.destroy
      if params[:location] == "home"
        redirect_to baby_path(params[:baby_id])

      else
        redirect_to baby_breast_feedings_path(breastfeeding.baby)
      end
  end

  private

  def breastfeedingsparams
    params.require(:breast_feeding).permit(:duration_minutes, :baby_id, :breast_side)
  end
end
