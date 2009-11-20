class CourseInstancesController < ApplicationController

    def show
      @course_ins = CourseInstance.find(params[:id])
      @course = Course.find(CourseInstance.find(params[:id]).course_id)
    end

end
