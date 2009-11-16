class SessionsController < ApplicationController

  skip_before_filter :authorize, :only => :create

  def create
    session[:authorized] = true
    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end


end
