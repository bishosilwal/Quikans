class QuestionController < ApplicationController
  before_action :authenticate_user!

  def show
    @question = Question.find(params[:id])
  end

  def create
    question = Question.new(question_params)
    question.user = current_user
    if question.save
      flash.notice ="New question added successfully"
    else
      flash.error ="Failed!! Question isnot added"
    end
    redirect_to home_index_url
  end

  def update
    return unless check_role?
    question = Question.find(params[:id])
    question.update(question_params)
  end

  private 

  def question_params
    params.require(:question).permit(:subject_id, :title, :body, :answer)
  end

  def check_role?
    current_user.role == "teacher"
  end
end
