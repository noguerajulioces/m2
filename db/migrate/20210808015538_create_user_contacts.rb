class CreateUserContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :user_contacts do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :type
      t.string :item

      t.timestamps
    end
  end
end
