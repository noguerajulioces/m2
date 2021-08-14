# frozen_string_literal: true

json.extract! admin_city, :id, :created_at, :updated_at
json.url admin_city_url(admin_city, format: :json)
