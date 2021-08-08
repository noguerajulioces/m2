# frozen_string_literal: true

json.extract! amenity, :id, :name, :type, :active, :created_at, :updated_at
json.url amenity_url(amenity, format: :json)
