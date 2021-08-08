# frozen_string_literal: true

class Wichlist < ApplicationRecord
  belongs_to :property
  belongs_to :user
end
