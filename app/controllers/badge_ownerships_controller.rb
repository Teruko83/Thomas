class BadgeOwnershipsController < ApplicationController
  def show
    @baby = current_user.babies.first
  end

  def index
    @badge_ownerships = BadgeOwnership.all
    @baby = current_user.babies.first
  end
end
