# frozen_string_literal: true

# == Schema Information
#
# Table name: pays
#
#  id          :bigint           not null, primary key
#  amount      :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_pays_on_property_id  (property_id)
#  index_pays_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (property_id => properties.id)
#  fk_rails_...  (user_id => users.id)
#
require 'test_helper'

class PayTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
