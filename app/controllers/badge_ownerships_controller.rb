class BadgeOwnershipsController < ApplicationController
  def show
    @badge_ownerships = BadgeOwnership.all
    @baby = current_user.babies.first
    if params[:badge] == "diaper"
      @badge = {
        svg: "diaper_warrior.svg",
        title: "Diaper Warrior",
        acomplishement: "You changed 10 'OMG' diapers!",
        comment: "I'm a Diaper Warrior!"
      }
    else params[:badge] == "sleep"
      @badge = {
        svg: "sandman.svg",
        title: "Super Sandman",
        acomplishement: "Your baby sleep so well!",
        comment: "So cool!"
      }
    end
  end

  def index
    @badge_ownerships = BadgeOwnership.all
    @baby = current_user.babies.first
  end
end
