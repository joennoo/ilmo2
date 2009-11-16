class SessionsController < ApplicationController

  def create
    session[:authorized] = true
    redirect_to root_url
  end

  def destroy
    reset_session
    redirect_to root_url
  end


end
