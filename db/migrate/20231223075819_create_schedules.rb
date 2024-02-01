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
      t.integer    :icon_id
      t.integer    :cost
      t.string     :url
      t.string     :url2
      t.text       :memo
      t.timestamps
    end
  end
end
