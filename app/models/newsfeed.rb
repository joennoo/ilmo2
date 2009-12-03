class Newsfeed < ActiveRecord::Base

  default_scope :order => "created_at DESC"

  def self.user_registered(user)
    create :message => "User #{user.username} registered."
  end

  def self.course_created(course)
    create :message => "New course #{course.name} was added."
  end

  def self.user_registered_to_exercise_group(user, course, ex_group)
    create :message => "#{user.username} registered to exercise_group #{ex_group.name}of course #{course.name}."
  end

end
