# frozen_string_literal: true

class CreatePays < ActiveRecord::Migration[6.1]
  def change
    create_table :pays do |t|
      t.integer :amount
      t.references :property, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
