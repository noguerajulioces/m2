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
#  property_status :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'test_helper'

class PropertyDetailTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
