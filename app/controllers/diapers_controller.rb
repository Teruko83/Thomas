class DiapersController < ApplicationController
  def index
    @baby = Baby.find(params[:baby_id])
    @diapers = @baby.diapers
  end

  def new
    @baby = Baby.find(params[:baby_id])
    @diaper = Diaper.new
  end

  def create
    @baby = Baby.find(params[:baby_id])
    @diaper = Diaper.new(diaper_params)
    @diaper.start_date = DateTime.now
    @diaper.baby = @baby
    @diaper.user = current_user
    if @diaper.save
      if current_user.diapers.where(category: "OMG").count == 10 &&
        current_user.badge_ownerships.where(badge_type: "Diaper Warrior").count == 0
        BadgeOwnership.create(user: current_user, badge_type: "Diaper Warrior")
        redirect_to badge_ownerships_show_path
        # flash[:notice] = "you're a Diaper Warrior"
      else
        redirect_to baby_diapers_path(@baby)
      end
    else
      render "new"
    end
  end

  def destroy
    diaper = Diaper.find(params[:id])
    diaper.destroy
    if params[:location] == "home"
      redirect_to baby_path(params[:baby_id])
    else
      redirect_to baby_diapers_path(diaper.baby)
    end
  end

  private

  def diaper_params
    params.require(:diaper).permit(:category, :comment)
  end
end
