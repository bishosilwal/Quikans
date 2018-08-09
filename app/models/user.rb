class User < ApplicationRecord
  before_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_subjects
  enum role: { admin: 0, teacher: 1, student: 2, guest: 3 } 

  private
  def assign_default_role
    self.role ||= "guest"
  end
end
