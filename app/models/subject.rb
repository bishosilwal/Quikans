class Subject < ApplicationRecord
  has_many :questions 
  belongs_to :classroom
  has_many :users
  has_many :users, through: :user_subjects
end
