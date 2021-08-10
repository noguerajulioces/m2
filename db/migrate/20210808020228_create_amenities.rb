# frozen_string_literal: true

class CreateAmenities < ActiveRecord::Migration[6.1]
  def change
    create_table :amenities do |t|
      t.string :name
      t.integer :type
      t.boolean :active

      t.timestamps
    end
  end
end
