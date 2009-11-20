class CoursesController < ApplicationController

  skip_before_filter :authorize, :only => :index

  def index
    @user = User.new
    @courses = Course.find(:all)
  end

  def show
    @course = Course.find(params[:id])
  end

end
