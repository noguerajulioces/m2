# frozen_string_literal: true

json.extract! admin_amenity, :id, :created_at, :updated_at
json.url admin_amenity_url(admin_amenity, format: :json)
