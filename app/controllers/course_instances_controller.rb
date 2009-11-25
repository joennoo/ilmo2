class CourseInstancesController < ApplicationController

    def show
      @course_ins = CourseInstance.find(params[:id])
    end

end
