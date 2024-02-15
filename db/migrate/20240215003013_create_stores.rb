class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.text :address, null: false
      t.string :phone_number, null: false
      t.text :opening_hours, null: false
      t.text :memo
      t.timestamps
    end
  end
end
