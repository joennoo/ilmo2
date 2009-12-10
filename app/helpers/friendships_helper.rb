module FriendshipsHelper

  def user_is_friend?(given_friend)
    current_user.friendships.each do |f_user|
      return true if f_user.user_id == current_user.id && f_user.friend_id == given_friend.id
    end
    false
  end

end
