class CoursesController < ApplicationController

  skip_before_filter :authorize, :only => :index

  def index
    @user = User.new
    @newsfeed = Newsfeed.feeds_in_order_by_time
    @courses = Course.courses_in_order_by_name
  end

  def show
    @course = Course.find(params[:id])
  end

end
