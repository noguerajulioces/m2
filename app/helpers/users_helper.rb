# frozen_string_literal: true

# Views helpers for users
module UsersHelper
  def fullname
    "#{current_user.name} #{current_user.last_name}"
  end
end
