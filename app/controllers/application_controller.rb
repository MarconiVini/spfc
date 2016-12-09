class ApplicationController < ActionController::Base
  layout 'main_app/application'
  protect_from_forgery with: :exception
end
