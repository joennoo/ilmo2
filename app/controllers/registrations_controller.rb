class RegistrationsController < ApplicationController

  def create
    ex_group = ExerciseGroup.find(params[:ex_group_id])
    registration = current_user.registrations.build :exercise_group_id => ex_group.id

    if registration.save
      flash[:notice] = "Registration for user #{current_user.username} to group #{ex_group.name} was saved"
    else
      flash[:error] = "You is already registered to this course instance"
    end

    redirect_to :back

  end

  def destroy
    registration = current_user.registrations.find_by_exercise_group_id(params[:ex_group_id])
    registration.destroy
    flash[:notice] = "Registration for user #{registration.user.username} to group #{registration.exercise_group.name} was removed"
    redirect_to :back
  end
end
