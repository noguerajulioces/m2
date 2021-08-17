# frozen_string_literal: true

# == Schema Information
#
# Table name: properties
#
#  id                 :bigint           not null, primary key
#  address            :string
#  currency           :integer
#  expired_date       :date
#  price              :integer
#  property_type      :integer
#  title              :string
#  type_offer         :integer
#  views              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  city_id            :bigint           not null
#  property_detail_id :bigint           not null
#  user_id            :bigint           not null
#
# Indexes
#
#  index_properties_on_city_id             (city_id)
#  index_properties_on_property_detail_id  (property_detail_id)
#  index_properties_on_user_id             (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (city_id => cities.id)
#  fk_rails_...  (property_detail_id => property_details.id)
#  fk_rails_...  (user_id => users.id)
#
class Property < ApplicationRecord
  belongs_to :city
  belongs_to :user
  belongs_to :property_detail

  enum property_type: %i[house apartment land_commercial office farm garage building coworking shed duplex other]
  enum type_offer: %i[sale rent]
  enum currency: %i[usd gs]
end
