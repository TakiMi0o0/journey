class Book < ApplicationRecord
  has_many :users
  has_many :schedules
  has_one_attached :image
  
  validates :title, :start, :publication, presence: true
  
end
