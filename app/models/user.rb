class User < ApplicationRecord
  before_create :assign_default_role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_subjects
  has_many :subjects, through: :user_subjects
  has_many :questions
  belongs_to :classroom, optional: :true
  enum role: { admin: 0, teacher: 1, student: 2, guest: 3 } 

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  private
  def assign_default_role
    self.role ||= "guest"
  end
end
