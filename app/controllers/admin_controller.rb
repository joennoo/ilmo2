class AdminController < ApplicationController

  skip_before_filter :authorize

  before_filter :admin_required

  layout "admin"

end
