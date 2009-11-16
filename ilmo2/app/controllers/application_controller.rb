# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

  include Authentication
  
  before_filter :authorize

  protected
  
  def authorize
    if logged_in?
      return true
    else
      redirect_to root_url
    end
  end

end
