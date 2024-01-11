class Book < ApplicationRecord
  has_many :users
  has_many :schedules, dependent: :destroy 
  has_many_attached :images
  
  validates :title, :start, :publication, presence: true
  
end
