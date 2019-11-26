class BreastFeedingsController < ApplicationController
  def show
    @breasts = current_user.breast_feedings
  end
end
