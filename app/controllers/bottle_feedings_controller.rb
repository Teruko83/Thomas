class BottleFeedingsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @bottlefeedings = @baby.bottlefeedings

    @feedings = []

    @bottlefeedings.each do |b|
      feeding = {
        type: "bottle",
        quantity: "#{b.quantity}ml",
        time_fed: b.start_date,
        id: b.id
      }
    @feedings << feeding
    end

    @feedings.sort_by! { |f| f[:time_fed] }.reverse!

    # Find the baby by user

    @last7 = @bottlefeedings
      .where(start_date: 7.days.ago..DateTime.now)
      .order(:start_date)
    @last30 = @bottlefeedings
      .where(start_date: 30.days.ago..DateTime.now)
      .order(:start_date)
  end

  def show
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @feeding = Bottlefeeding.new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @bottle_feeding = Bottlefeeding.new(bottlefeedparams)
    @bottle_feeding.start_date = DateTime.now
    @bottle_feeding.baby = @baby
    if @bottle_feeding.save
      redirect_to baby_bottle_feedings_path(@baby)
    else
      render "alert"
    end
  end

  def destroy
    bottlefeeding = Bottlefeeding.find(params[:id])
    bottlefeeding.destroy
    if params[:location] == "home"
      redirect_to baby_path(params[:baby_id])
    else
      redirect_to baby_bottle_feedings_path(bottlefeeding.baby)
    end
  end

  private

  def bottlefeedparams
    params.require(:bottle_feeding).permit(:quantity)
  end
end
