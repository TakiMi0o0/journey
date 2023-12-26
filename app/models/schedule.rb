class Schedule < ApplicationRecord
  belongs_to :user
  belongs_to :book

  validates :summary, :date_time, presence: true
end
