class BadgeOwnershipsController < ApplicationController
  def show
  end

  def index
    @badge_ownerships = BadgeOwnership.all
  end
end
