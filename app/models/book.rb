class Book < ApplicationRecord
  validates :title, :publication, presence: true
end
