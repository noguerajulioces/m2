class CreateUserDevices < ActiveRecord::Migration[6.1]
  def change
    create_table :user_devices do |t|
      t.references :user
      t.string :ip_address
      t.string :session_id
      t.text :data
      t.json :properties

      t.timestamps
    end
  end
end
