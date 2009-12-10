class User < ActiveRecord::Base

  validates_length_of :username, :in => 3..15
  validates_length_of :password, :in => 5..200
  validates_uniqueness_of :username
  validates_confirmation_of :password

  attr_accessor :password_confirmation

  named_scope :with_email, :conditions => "email IS NOT NULL"

  has_many :registrations
  has_many :exercise_groups,
            :through => :registrations
  has_many :roles, :dependent => :destroy
  has_many :friendships, :dependent => :destroy

  before_create :username_to_downcase
  after_create :update_newsfeed

  private

  def username_to_downcase
    self.username.downcase!
  end

  def update_newsfeed
    Newsfeed.user_registered(self)
  end

end
