# frozen_string_literal: true

# == Schema Information
#
# Table name: user_devices
#
#  id         :bigint           not null, primary key
#  data       :text
#  ip_address :string
#  properties :json
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  session_id :string
#  user_id    :bigint
#
# Indexes
#
#  index_user_devices_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe UserDevice, type: :model do
  pending "add some examples to (or delete) #{ __FILE__ }"
end
