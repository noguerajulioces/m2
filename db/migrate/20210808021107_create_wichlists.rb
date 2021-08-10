# frozen_string_literal: true

class CreateWichlists < ActiveRecord::Migration[6.1]
  def change
    create_table :wichlists do |t|
      t.references :property, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
