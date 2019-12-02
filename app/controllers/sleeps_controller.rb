class SleepsController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @sleeps = @baby.sleeps

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
  end

  def create
  end

  def destroy
  end
end
