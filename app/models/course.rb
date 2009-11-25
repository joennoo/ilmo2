class Course < ActiveRecord::Base

  has_many :course_instances, :dependent => :destroy
  
  named_scope :course_in_order, :order => "name ASC"
  
end
