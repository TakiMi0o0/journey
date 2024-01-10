class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.references :user,        null: false, foreign_key: true
      t.string     :title,       null: false
      t.text       :description
      t.date       :start,       null: false
      t.date       :end
      t.string     :place
      t.string     :publication, null: false
      t.timestamps
    end
  end
end