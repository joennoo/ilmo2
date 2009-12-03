class Newsfeed < ActiveRecord::Base

  default_scope :order => "created_at DESC"

  def self.user_registered(user)
    create :message => "User #{user.username} registered."
  end

  def self.course_created(course)
    create :message => "New course #{course.name} was added."
  end

  def self.user_registered_to_exercise_group(registration)
    @user = registration.user.username
    @eg_name = registration.exercise_group.name
    @ci_name = registration.exercise_group.course_instance.name
    @course_name = registration.exercise_group.course_instance.course.name
    create :message => "#{@user} registered to exercise_group #{@eg_name} of course #{@course_name}, #{@ci_name}."
  end

end
