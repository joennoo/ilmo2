class ExerciseGroupsController < ApplicationController

  def show
    @user = User.find(session[:user_id])
    @ex_group = ExerciseGroup.find(params[:id])
    @registration = Registration.find (:all,:conditions=>["user_id=? AND exercise_group_id=?",@user,@ex_group])
  end

end
