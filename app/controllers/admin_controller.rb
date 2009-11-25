class AdminController < ApplicationController

  skip_before_filter :authorize

  layout "admin"

end
