class Location < ApplicationRecord
  belongs_to :schedule
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :icon, class_name: 'Icon'
end
