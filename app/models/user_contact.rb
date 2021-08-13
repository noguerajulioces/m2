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
class UserContact < ApplicationRecord
  belongs_to :user
end
