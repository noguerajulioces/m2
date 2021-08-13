# frozen_string_literal: true

# == Schema Information
#
# Table name: user_contacts
#
#  id         :bigint           not null, primary key
#  item       :string
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_contacts_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class UserContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
