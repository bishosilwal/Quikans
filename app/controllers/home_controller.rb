class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.role == 'student'
      render 'student_index.html.erb'
    end
  end
end
