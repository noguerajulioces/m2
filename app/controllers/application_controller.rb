# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :update_user_device

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name last_name terms_condition])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[name last_name])
  end

  private

  def update_user_device
    return unless user_signed_in?

    user_device = UserDevice.find_by(session_id: rack_session_id)
    return unless user_device

    user_device.user = current_user if user_device.user.nil?
    user_device.ip_address = request.remote_ip

    byebug
    
    user_agent = UserAgent.parse(request.user_agent)
    user_device.properties[:browser_name] = user_agent.browser
    user_device.properties[:browser_version] = user_agent.version
    user_device.properties[:os_name] = user_agent.os
    user_device.save
  end

  def rack_session_id
    request.env['rack.session.record'].session_id
  end
  helper_method :rack_session_id
end
