class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :referer

  def referer
    Rails.application.routes.recognize_path(request.referer)
  end
end
