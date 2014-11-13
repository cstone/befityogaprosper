class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def get_dynamic_content
    @home_left = DynamicContent.get_value(:home_left).html_safe
    @home_middle = DynamicContent.get_value(:home_middle).html_safe
    @home_right = DynamicContent.get_value(:home_right).html_safe
  end
end
