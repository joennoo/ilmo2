class RegistrationsController < ApplicationController

  def create
    @user_id = params[:user_id]
    @ex_group_id = params[:exercise_group_id]
    @registration = Registration.create :user_id => @user_id,
                        :exercise_group_id => @ex_group_id

    @user = User.find(@user_id)
    @ex_group = ExerciseGroup.find(@ex_group_id)

    if @registration.save
      flash[:notice] = "Registration for user #{@user.username} to group #{@ex_group.name} was saved"
      redirect_to course_course_instance_exercise_group_url(@ex_group.course_instance.course, @ex_group.course_instance, @ex_group)
    else
      render :action => :new
    end
  end

  def destroy
    @registration = Registration.find(params[:id])

    @registration.destroy
    flash[:notice] = "Registration for user #{@registration.user.username} to group #{@registration.exercise_group.name} was removed"
    redirect_to course_course_instance_exercise_group_url(
          @registration.exercise_group.course_instance.course,
          @registration.exercise_group.course_instance,
          @registration.exercise_group)
  end
end
