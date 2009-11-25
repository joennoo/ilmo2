class AdminController < ApplicationController

  skip_before_filter :authorize

end
