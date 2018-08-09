class UserSubject < ApplicationRecord
  belongs_to :user
  belongs_to :subjects
end
