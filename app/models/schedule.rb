class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :book
  has_one_attached :image

  validates :summary, :date_time, presence: true
end
