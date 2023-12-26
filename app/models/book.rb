class Book < ApplicationRecord
  has_many :users
  has_many :schedules
  
  validates :title, :publication, presence: true
end
