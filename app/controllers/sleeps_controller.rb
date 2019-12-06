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
    @allsleeps = @allsleeps.sort_by { |s| s[:time_of_sleep] }.reverse!
    # @allsleeps = @allsleeps.sort_by { |s| s[:start_date] }
  end

  def show
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @sleep = Sleep.new
  end

  def create

  @baby = Baby.find(params[:baby_id])

    @baby = Baby.find(params[:baby_id])
    @sleep = Sleep.new(sleepparams)
    @sleep.start_date = DateTime.now
    @sleep.baby = @baby
    @sleep.user = current_user
    if @sleep.save
      # if current_user.sleeps.count == 20 &&
      # current_user.badge_ownerships.where(badge_type: "Super Sandman").count == 0
      BadgeOwnership.create(user: current_user, badge_type: "Super Sandman")
      redirect_to badge_ownerships_show_path(badge: "sleep")
      # flash[:notice] = "you're a Diaper Warrior"
      # else
      # redirect_to baby_sleeps_path(@baby)
      # end
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
