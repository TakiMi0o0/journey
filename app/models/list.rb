class List < ApplicationRecord
  has_many :users
  belongs_to :book
  has_one_attached :image

  validates :category, :content, presence: true
  validates :quantity, inclusion: { in: 1..9999, allow_blank: true, message: "は 1～9999 の範囲で入力してください" }
  validates :price, inclusion: { in: 1..99999999, allow_blank: true, message: "は 1～99999999 の範囲で入力してください" }
  validates :quantity, :price, numericality: { only_integer: true, greater_than: 0, allow_blank: true, message: "は数値で入力してください" }
end