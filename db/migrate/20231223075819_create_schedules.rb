class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.references :user,           null: false, foreign_key: true
      t.string     :summary,        null: false
      t.date       :date_time,      null: false
      t.string     :icon
      t.string     :location
      t.string     :departure 
      t.string     :arrival
      t.date       :departure_time
      t.date       :arrival_time
      t.string     :cost
      t.string     :url1
      t.string     :url2 
      t.text       :memo 
      t.timestamps
    end
  end
end
