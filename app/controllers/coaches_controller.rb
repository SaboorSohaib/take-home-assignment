class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end

  def show
    @user = User.find(params[:user_id])
    @coach = @user.coaches.find(params[:id])
    @meeting = @coach.meetings
  end

  def create
    @user = User.find(params[:user_id])
    @coach = @user.coaches.new(coach_params)
    if @coach.save
      redirect_to user_coaches_path(@user, @coach)
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
