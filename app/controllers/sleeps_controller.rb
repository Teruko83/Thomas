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
        time_of_sleep: s.start_date
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
    if @sleep.save
      redirect_to baby_sleeps_path(@baby)
    else
      render "alert"
    end
  end

  def destroy
  end

  private

  def sleepparams
    params.require(:sleep).permit(:sleep_time, :baby_id)
  end
end
