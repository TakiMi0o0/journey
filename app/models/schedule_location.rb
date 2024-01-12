class ScheduleLocation
  include ActiveModel::Model
  attr_accessor :user_id, :book_id, :schedule_id, :summary, :icon_id, :departure_time,
  :departure_time2, :icon2_id, :cost, :url, :url2, :memo, :arrival_time, :departure, :arrival

  with_options presence: true do
    validates :user_id, :book_id, :schedule_id, :summary, :departure_time
  end

  
  def save
    @schedule = Schedule.create(user_id: user_id, book_id: book_id, summary: summary,
      departure_time: departure_time, icon_id: icon_id, cost: cost, url: url, url2: url2, memo: memo)
    Location.create(schedule_id: @schedule.id, departure_time2: departure_time2,
     arrival_time: arrival_time, departure: departure, arrival: arrival, icon2_id: icon2_id)
  end

end