class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end

  def show
    @coach = Coach.find(params[:id])
    @meeting = @coach.meetings
  end

  def create
    @coach = Coach.new(coach_params)
    if @coach.save
      redirect_to @coach
    else
      render :new
    end
  end

  def new
    @coach = Coach.new
  end

  private

  def coach_params
    params.require(:coach).permit(:name, :time_zone, :week_day, :available_at, :available_until)
  end
end
