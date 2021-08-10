# frozen_string_literal: true

# Common Views Helpers
module ApplicationHelper
  def active_class(link_path)
    current_page?(link_path) ? 'active' : ''
  end
end
