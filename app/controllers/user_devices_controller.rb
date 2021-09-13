# frozen_string_literal: true

class UserDevicesController < ApplicationController
  def destroy

    byebug
    
    device = current_user.user_devices.find(params[:id])

    session_record = ActiveRecord::SessionStore::Session.find_by(session_id: device.session_id)
    session_record.destroy
    redirect_to edit_user_registration_path
  end
end
