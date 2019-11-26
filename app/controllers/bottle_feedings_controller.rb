class BottleFeedingsController < ApplicationController
  def show
  end

  def new
    @bottle_feeding = Bottlefeeding.new
  end

  def create
  end
end
