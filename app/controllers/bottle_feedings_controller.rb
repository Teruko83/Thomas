class BottleFeedingsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @bottlefeedings = @baby.bottlefeedings

    @feedings = []

    @bottlefeedings.each do |b|
      feeding = {
        type: "bottle",
        quantity: "#{b.quantity}ml",
        time_fed: b.start_date
      }
    @feedings << feeding
    end

    @feedings.sort_by { |f| f[:start_date] }

    # Find the baby by user

    @last7 = @bottlefeedings.order(:start_date).last(7)
    @last30 = @bottlefeedings.order(:start_date).last(30)
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
    @bottle_feeding.start_date = Date.today
    @bottle_feeding.baby = @baby
    if @bottle_feeding.save
      redirect_to baby_bottle_feedings_path(@baby)
    else
      render "alert"
    end
  end

  private

  def bottlefeedparams
    params.require(:bottle_feeding).permit(:quantity)
  end
end
