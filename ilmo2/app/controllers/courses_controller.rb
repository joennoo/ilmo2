class CoursesController < ApplicationController
  def index
    @courses = Course.find(:all)
  end

  def show
    @course = Course.find(params[:id])
  end

end
