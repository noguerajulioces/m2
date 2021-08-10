# frozen_string_literal: true

class CreatePropertyDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :property_details do |t|
      t.integer :bedrooms
      t.integer :bathrooms
      t.integer :property_status
      t.string :description
      t.float :lat
      t.float :lon
      t.float :area

      t.timestamps
    end
  end
end
