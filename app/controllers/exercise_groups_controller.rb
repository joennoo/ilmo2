class ExerciseGroupsController < ApplicationController

    def show
      @ex_group = ExerciseGroup.find(params[:id])
    end

end
