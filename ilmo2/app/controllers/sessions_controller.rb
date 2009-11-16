class SessionsController < ApplicationController

  skip_before_filter :authorize, :only => :create

  def create
    user = User. find_by_username_and_password(  params[:user][:username],
                                          params[:user][:password])
    if user
      session[:user_id] = user.id
    end
    
    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end


end
