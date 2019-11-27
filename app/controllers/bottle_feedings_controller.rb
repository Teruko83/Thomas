class BottleFeedingsController < ApplicationController
  def index
    @bottlefeedings = Baby.find(params[:baby_id]).bottlefeedings
    @breastfeedings = Baby.find(params[:baby_id]).breastfeedings

    @feedings = []
    @bottlefeedings.each do |b|
      feeding = {
        type: "bottle",
        quantity: "#{b.quantity}ml",
        time_fed: b.created_at
      }
    @feedings << feeding
    end

    @breastfeedings.each do |b|
      feeding = {
        type: "boob",
        quantity: "#{b.duration_minutes}min",
        time_fed: b.created_at
      }
    @feedings << feeding
    end

    @feedings.sort_by { |f| f[:time_fed] }
  end

  def show
  end

  def new
    @baby = Baby.find(params[:baby_id])
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @bottle_feeding = Bottlefeeding.new
    @bottle_feeding.baby = @baby
    @bottle_feeding.quantity = params[:quantityFeeded]
    if @bottle_feeding.save
      redirect_to user_path(current_user)
    else
      render "alert"
    end
  end
end
