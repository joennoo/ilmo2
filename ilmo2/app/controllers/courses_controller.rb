class CoursesController < ApplicationController
  def index
    @user = User.new
    @courses = Course.find(:all)
  end

  def show
    @course = Course.find(params[:id])
  end

end
