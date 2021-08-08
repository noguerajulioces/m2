# frozen_string_literal: true

class Pay < ApplicationRecord
  belongs_to :property
  belongs_to :user
end
