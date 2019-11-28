class BottleFeedingsController < ApplicationController
  def index
    baby = Baby.find(params[:baby_id])
    @bottlefeedings = baby.bottlefeedings
    @breastfeedings = baby.breastfeedings

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

    # Find the baby by user
    @last7 = @bottlefeedings.last(7)
    @last30 = @bottlefeedings.last(30)
  end

  def show
  end

  # def new
  #   @bottle_feeding = Bottlefeeding.new
  #   if last.bottlefeeding.created_at.day == today
  #     updated
  #   else last.bottlefeeding
  #     create
  # end

  def create
  end
end
