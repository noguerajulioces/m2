# frozen_string_literal: true

json.extract! property, :id, :type_offer, :property_type, :city_id, :address, :user_id, :price, :currency, :views,
  :property_detail_id, :expired_date, :created_at, :updated_at
json.url property_url(property, format: :json)
