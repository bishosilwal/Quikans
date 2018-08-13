class QuestionController < ApplicationController
  before_action :authenticate_user!

  def show
    @question = Question.find(params[:id])
  end

  def create
    question = Question.new(question_params)
    question.user = current_user
    question.save
    redirect_to home_index_url
  end

  private 
  def question_params
    params.require(:question).permit(:subject_id, :title, :body)
  end
end
