class MeetingsController < ApplicationController
  def show
    @meetings = Meeting.all
  end

  def create
    @meeting = Meeting.new(meeting_params)
    if @meeting.save
      redirect_to @meeting
    else
      render :new
    end
  end

  def new
    @meeting = Meeting.new
  end

  private

  def meeting_params
    params.require(:meeting).permit(:name, :time_zone, :week_day, :available_time)
  end
end
