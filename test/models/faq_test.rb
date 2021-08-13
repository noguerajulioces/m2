# frozen_string_literal: true

# == Schema Information
#
# Table name: faqs
#
#  id         :bigint           not null, primary key
#  active     :boolean
#  answer     :string
#  question   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class FaqTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
