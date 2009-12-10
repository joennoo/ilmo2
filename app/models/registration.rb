class Registration < ActiveRecord::Base

  belongs_to :user
  belongs_to :exercise_group

  validate :only_registration_for_this_instance
  validate :maximum_number_of_registrations_not_exceeded
  validates_uniqueness_of :exercise_group_id, :scope => :user_id

  after_create :update_newsfeed

  protected

  def only_registration_for_this_instance
    return if exercise_group.course_instance.allows_multiple_groups?

    errors.add(:exercise_group, "already registered in this instance") if user.exercise_groups.exists?(:course_instance_id => exercise_group.course_instance_id)
  end

  def maximum_number_of_registrations_not_exceeded
    return unless exercise_group.course_instance.allows_multiple_groups?

    currently_registered = user.exercise_groups.count :conditions => { :course_instance_id => exercise_group.course_instance_id }

    errors.add(:exercise_group, "maximum number of registrations reached") if currently_registered == exercise_group.course_instance.max_groups
  end
  
  private

  def update_newsfeed
    Newsfeed.user_registered_to_exercise_group(self)
  end

end
