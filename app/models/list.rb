class List < ApplicationRecord
  has_many :users
  belongs_to :book

  validates :category, :content, presence: true

end
