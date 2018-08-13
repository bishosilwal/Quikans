class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.role == 'student'
       @subjects = current_user.classroom.subjects.includes(:questions)
      render 'student_index.html.erb'
    elsif current_user.role == 'teacher'
      @subjects = current_user.subjects.includes(:questions)
      render 'teacher_index.html.erb'
    end
  end
end
