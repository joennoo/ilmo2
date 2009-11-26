class Course < ActiveRecord::Base

  has_many :course_instances, :dependent => :destroy

  def self.courses_in_order_by_name
    find(:all, :order => "name ASC")
  end
  
end
