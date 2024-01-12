class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.references :user,     null: false, foreign_key: true
      t.references :book,     null: false, foreign_key: true
      t.string     :category, null: false
      t.string     :content,  null: false
      t.integer    :quantity
      t.integer    :price
      t.text       :list_memo
      t.timestamps
    end
  end
end
