class Classroom < ApplicationRecord
  has_many :subjects
  has_many :users
end
