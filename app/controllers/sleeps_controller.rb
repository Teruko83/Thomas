class SleepsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @sleeps = @baby.sleeps
    @sleep = Sleep.new

    @allsleeps = []

    @allsleeps.each do |s|
      sleeps = {
        sleep_type: "#{s.sleep_type}",
        sleep_time: "#{s.sleep_time}min",
        time_of_sleep: s.start_date,
        user_id: b.user_id
      }
    @allsleeps << sleeps
    end

    @allsleeps.sort_by { |s| s[:start_date] }
  end

  def show
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @sleep = Sleep.new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @sleep = Sleep.new(sleepparams)
    @sleep.start_date = DateTime.now
    @sleep.baby = @baby
    @sleep.user = current_user
    if @sleep.save
      redirect_to baby_sleeps_path(@baby)
    else
      render "alert"
    end
  end

  def destroy
    sleep = Sleep.find(params[:id])
    sleep.destroy
    if params[:location] == "home"
      redirect_to baby_path(params[:baby_id])
    else
      redirect_to baby_sleeps_path(sleep.baby)
    end
  end

  private

  def sleepparams
    params.require(:sleep).permit(:sleep_time, :baby_id)
  end
end
