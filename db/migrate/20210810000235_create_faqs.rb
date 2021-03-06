# frozen_string_literal: true

class CreateFaqs < ActiveRecord::Migration[6.1]
  def change
    create_table :faqs do |t|
      t.string :question
      t.string :answer
      t.boolean :active

      t.timestamps
    end
  end
end
