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
    @diaper = Diaper.new
    @diaper.start_date = DateTime.now
    @diaper.baby = @baby
      if @diaper.save
      redirect_to baby_diapers_path(@baby)
      else
      render "alert"
      end
  end

  def destroy
  end
end
