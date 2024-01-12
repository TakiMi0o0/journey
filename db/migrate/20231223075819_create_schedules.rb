class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :user,           null: false, foreign_key: true
      t.references :book,           null: false, foreign_key: true
      t.string     :summary,        null: false
      t.datetime   :departure_time, null: false
      t.datetime   :arrival_time
      t.string     :departure
      t.string     :arrival
      t.datetime   :departure_time2
      t.datetime   :arrival_time2
      t.string     :departure2
      t.string     :arrival2
      t.datetime   :departure_time3
      t.datetime   :arrival_time3
      t.string     :departure3
      t.string     :arrival3
      t.datetime   :departure_time4
      t.datetime   :arrival_time4
      t.string     :departure4
      t.string     :arrival4
      t.integer    :icon_id
      t.string     :cost
      t.string     :url
      t.string     :url2
      t.text       :memo
      t.timestamps
    end
  end
end
