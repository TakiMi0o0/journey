class Schedule < ApplicationRecord
  has_many :users
  belongs_to :book
  has_many :locations, dependent: :destroy
  accepts_nested_attributes_for :locations, allow_destroy: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :icon

  has_one_attached :image

  validates :summary, :departure_time, presence: true
  validates :cost, inclusion: { in: 1..99999999, allow_blank: true, message: "は 1～99999999 の範囲で入力してください" }
  validates :cost, numericality: { only_integer: true, greater_than: 0, allow_blank: true, message: "は数値で入力してください" }

end
