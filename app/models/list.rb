class List < ApplicationRecord
  has_many :users
  belongs_to :book
  has_one_attached :image

  validates :category, :content, presence: true

end
