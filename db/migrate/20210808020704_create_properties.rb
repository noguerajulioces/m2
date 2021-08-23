# frozen_string_literal: true

class CreateProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :properties do |t|
      t.string  :title
      t.integer :type_offer
      t.integer :property_type
      t.references :city, null: false, foreign_key: true
      t.string :neighborhood
      t.string :address
      t.references :user, null: false, foreign_key: true
      t.integer :price
      t.integer :currency
      t.integer :views
      t.references :property_detail, null: false, foreign_key: true
      t.date :expired_date

      t.timestamps
    end
  end
end
