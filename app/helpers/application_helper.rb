# frozen_string_literal: true

# Common Views Helpers
module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? 'active' : ''
  end

  def bootstrap_class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end
end
