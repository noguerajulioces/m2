# frozen_string_literal: true

json.array! @amenities, partial: 'amenities/amenity', as: :amenity
