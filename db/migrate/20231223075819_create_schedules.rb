class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.integer    :user_id,        null: false, foreign_key: true
      t.integer    :book_id,        null: false, foreign_key: true
      t.string     :summary,        null: false
      t.datetime   :date_time,      null: false
      t.string     :icon
      t.string     :location
      t.string     :departure
      t.string     :arrival
      t.datetime   :departure_time
      t.datetime   :arrival_time
      t.string     :cost
      t.string     :url1
      t.string     :url2
      t.text       :memo
      t.timestamps
    end
  end
end
