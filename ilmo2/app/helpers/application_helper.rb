# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def current_time
    return Time.now.strftime("%d.%m.%Y %H:%M")
  end

end
