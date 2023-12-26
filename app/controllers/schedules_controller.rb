class SchedulesController < ApplicationController
  before_action :book_find, only: [:index, :new, :create]

  def index
    @schedules = Schedule.all
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(schedule_params)
    if @schedule.save
      redirect_to book_schedules_path
    else
      render :new, status: :unprocessable_entity
    end
  end


  private
  def schedule_params
    params.require(:schedule)
    .permit(:user, :summary, :date_time, :icon, :location,
      :departure, :arrival, :departure_time, :arrival_time, :cost, :url1, :url2, :memo)
    .merge(user_id: current_user.id, book_id: params[:book_id])
  end

  def book_find
    @book = Book.find(params[:book_id])
  end

end
