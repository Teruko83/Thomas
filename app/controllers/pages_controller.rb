class PagesController < ApplicationController
  def home
    @baby = current_user.babies.first
  end
end
