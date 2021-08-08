# frozen_string_literal: true

class Property < ApplicationRecord
  belongs_to :city
  belongs_to :user
  belongs_to :property_detail
end
