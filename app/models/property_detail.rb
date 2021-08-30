# frozen_string_literal: true

# == Schema Information
#
# Table name: property_details
#
#  id              :bigint           not null, primary key
#  area            :float
#  bathrooms       :integer
#  bedrooms        :integer
#  description     :string
#  lat             :float
#  lon             :float
#  parking         :integer
#  property_status :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class PropertyDetail < ApplicationRecord
  has_one :property

  enum property_status: %i[undefined launch in_well excelent good construction require_maintenance]

  MAX_DESCRIPTION_LENGTH = 500

  validates :description, length: { maximum: MAX_DESCRIPTION_LENGTH }
end
