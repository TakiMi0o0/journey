class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      t.integer    :schedule_id,     foreign_key: true
      t.datetime   :departure_time2
      t.datetime   :arrival_time2
      t.string     :departure2
      t.string     :arrival2
      t.integer    :icon_id2
      t.timestamps
    end
  end
end
