# frozen_string_literal: true

# == Schema Information
#
# Table name: wichlists
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_wichlists_on_property_id  (property_id)
#  index_wichlists_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (property_id => properties.id)
#  fk_rails_...  (user_id => users.id)
#
class Wichlist < ApplicationRecord
  belongs_to :property
  belongs_to :user
end
