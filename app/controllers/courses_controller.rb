class CoursesController < ApplicationController

  skip_before_filter :authorize, :only => :index

  def index
    @user = User.new
    @latest_newsfeed = Newsfeed.latest
    @courses = Course.courses_in_order_by_name
    @categories = Category.all

    respond_to do |format|
      format.html
      format.rss
    end
  end

  def show
    @course = Course.find(params[:id])
  end

end
