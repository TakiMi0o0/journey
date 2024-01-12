class SchedulesController < ApplicationController
  before_action :book_find
  before_action :schedule_find, only: [:edit, :update, :destroy]

  def index
    @schedules = @book.schedules.order(departure_time: 'ASC')
    @lists = @book.lists
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

  def edit
  end

  def update
    if @schedule.update(schedule_params)
      redirect_to book_schedules_path(@schedule.book, @schedule)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @schedule.destroy
    redirect_to book_schedules_path
  end

  
  private
  def schedule_params
    params.require(:schedule)
    .permit(:image, :summary, :icon_id, :departure, :arrival,
      :departure_time, :arrival_time, :departure2, :arrival2,
      :departure_time2, :arrival_time2, :departure3, :arrival3,
      :departure_time3, :arrival_time3, :departure4, :arrival4,
      :departure_time4, :arrival_time4,:cost, :url, :url2, :memo)
    .merge(user_id: current_user.id, book_id: params[:book_id])
  end

  def book_find
    @book = Book.find(params[:book_id])
  end

  def schedule_find
    @schedule = Schedule.find(params[:id])
  end

end
