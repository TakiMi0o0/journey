class Schedule < ApplicationRecord
  has_many :users
  belongs_to :book
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :icon

  has_one_attached :image

  validates :summary, :departure_time, presence: true


end
