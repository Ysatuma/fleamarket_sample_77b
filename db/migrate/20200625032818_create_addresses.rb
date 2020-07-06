class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :first_name,         null: false
      t.string :last_name,          null: false
      t.string :first_name_kana,    null: false
      t.string :last_name_kana,     null: false
      t.string :city,               null: false
      t.string :number,             null: false
      t.string :building
      t.integer :zip,               null: false
      t.string :phonenumber
      t.references :area,           null: false, foregign_key: true
      t.references :user,           null: false, foregign_key: true
      t.timestamps
    end
  end
end
