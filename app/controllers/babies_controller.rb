class BabiesController < ApplicationController
  def index
    @babies = current_user.babies
  end

  def show
    @baby = Baby.find(params[:id])
    @bottlefeedings = @baby.bottlefeedings
    @breastfeedings = @baby.breast_feedings
    @diapers = @baby.diapers
    @sleeps = @baby.sleeps

    @feedings = []

    @bottlefeedings.each do |b|
      feeding = {
        type: "bottle",
        quantity: "#{b.quantity}ml",
        start_date: b.start_date,
        id: b.id,
        user_id: b.user_id
      }

    @feedings << feeding
    end

    @breastfeedings.each do |b|
      feeding = {
        type: "boob",
        duration_minutes: "#{b.duration_minutes}min",
        start_date: b.start_date,
        id: b.id,
        user_id: b.user_id
      }

    @feedings << feeding
    end



    @diapers.each do |b|
      diaper = {
        type: "diaper",
        category: "#{b.category}",
        start_date: b.start_date,
        id: b.id,
        user_id: b.user_id
      }

    @feedings << diaper
    end

    @sleeps.each do |b|
      feeding = {
        type: "sleep",
        sleep_time: "#{b.sleep_time}",
        start_date: b.start_date,
        id: b.id,
        user_id: b.user_id
      }

    @feedings << feeding

    end
    @feedings = @feedings.sort_by { |f| f[:start_date] }.reverse!
  end

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new(params_private_baby)
    @baby.user = current_user
    if @baby.save
      redirect_to user_path(current_user)
    else
      render "new_baby"
    end
  end

  private

  def params_private_baby
    params.require(:baby).permit(:name, :birthdate)
  end
end
