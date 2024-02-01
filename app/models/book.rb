class Book < ApplicationRecord
  belongs_to :user
  has_many :schedules, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many_attached :images
  
  validates :title, :start, :publication, presence: true
  
end
