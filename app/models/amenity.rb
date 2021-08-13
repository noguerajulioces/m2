# frozen_string_literal: true

# == Schema Information
#
# Table name: amenities
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  name       :string
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Amenity < ApplicationRecord
end
