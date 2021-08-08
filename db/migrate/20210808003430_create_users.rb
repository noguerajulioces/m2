# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.boolean :terms_condition
      t.boolean :notification_ofert

      t.timestamps
    end
  end
end
