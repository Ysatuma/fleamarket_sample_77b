class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false, index: true
      t.text :text, null: false
      t.integer :price, null: false, index: true
      t.string :brand, index: true
      t.references :category, null: false
      t.references :size
      t.references :status
      t.references :postage, null: false
      t.references :area, null: false
      t.references :shipping_date, null: false
      t.boolean :purchase, null: false, default: false
      t.timestamps
    end
  end
end
