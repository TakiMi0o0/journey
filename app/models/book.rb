class Book < ApplicationRecord
  belongs_to :user
  has_many :schedules, dependent: :destroy
  has_many :lists, dependent: :destroy
  has_many_attached :images
  
  validates :title, :start, :publication, presence: true

  def self.search(search)
    if search != ""
      Book.where(['title LIKE(?) OR description LIKE(?) OR place LIKE(?)', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      Book.all
    end
  end
  
end
