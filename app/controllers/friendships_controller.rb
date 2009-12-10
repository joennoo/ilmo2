class FriendshipsController < ApplicationController

  def create
    friend = User.find(params[:friend_id])
    friendship = current_user.friendships.build :user_id => current_user.id,
      :friend_id => friend.id

    if friendship.save
      flash[:notice] = "Friendship to user #{friend.username} added"
    else
      flash[:error] = "This user is already your friend"
    end

    redirect_to :back

  end

  def destroy
    friendship = current_user.friendships.find_by_friend_id(params[:friend_id])
    friendship.destroy

    friend = User.find(params[:friend_id])
    flash[:notice] = "Friendship to user #{friend.username} was removed"

    redirect_to :back
  end

end
