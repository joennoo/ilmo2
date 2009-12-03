class Course < ActiveRecord::Base

  has_many :course_instances, :dependent => :destroy

  named_scope :courses_in_order_by_name, :order => "name ASC"

  after_create :update_newsfeed

  private

  def update_newsfeed
    Newsfeed.course_created(self)
  end
  
end
