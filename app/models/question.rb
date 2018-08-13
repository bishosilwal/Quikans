class Question < ApplicationRecord
  belongs_to :subject
  belongs_to :user
  before_create :default_answer
  default_scope {order(created_at: :desc)}

  private
  def default_answer
    self.answer = "This question has not been answer yet."
  end
end
