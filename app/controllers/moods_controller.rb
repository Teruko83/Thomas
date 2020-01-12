class MoodsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @moods = @baby.moods
    @moods = @moods.sort_by { |d| d[:start_date] }.reverse!
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @mood = Mood.new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @mood = Mood.new(mood_params)
    @mood.start_date = DateTime.now
    @mood.baby = @baby
    @mood.user = current_user
    if @mood.save
      redirect_to baby_moods_path
      # flash[:notice] = "you're a Diaper Warrior"
      # else
      # redirect_to baby_diapers_path(@baby)
      # end
    else
      render "new"
    end
  end

  def destroy
    mood = Mood.find(params[:id])
    mood.destroy
    if params[:location] == "home"
      redirect_to baby_path(params[:baby_id])
    else
      redirect_to baby_moods_path(mood.baby)
    end
  end
end
