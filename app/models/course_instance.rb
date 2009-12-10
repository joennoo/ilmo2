class CourseInstance < ActiveRecord::Base

  belongs_to :course
  has_many :exercise_groups, :dependent => :destroy
  # has_many :registrations, :through => :exercise_groups

  def allows_multiple_groups?
    max_groups && max_groups > 1
  end

  def count_users_in_ex_group(ex_group)
    return ex_group.count(:all)
  end

end
