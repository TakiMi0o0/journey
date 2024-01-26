class Schedule < ApplicationRecord
  has_many :users
  belongs_to :book
  has_many :locations
  accepts_nested_attributes_for :locations, allow_destroy: true, reject_if: :all_blank, limit: 5
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :icon

  has_one_attached :image

  validates :summary, :departure_time, presence: true
  
end
