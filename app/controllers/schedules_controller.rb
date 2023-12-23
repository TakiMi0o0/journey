class SchedulesController < ApplicationController

  def index
    @schedules = Schedule.all
  end


  private
  def schedule_params
    params.require(:schedule)
    .permit(:user, :summary, :description, :start, :end, :place, :publication)
    .merge(user_id: current_user.id)
  end

end
