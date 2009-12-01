class Newsfeed < ActiveRecord::Base

  named_scope :feeds_in_order_by_time, :order => "created_at DESC"

  def self.user_registered(user)
    create :message => "User #{user.username} registered."
  end

end
