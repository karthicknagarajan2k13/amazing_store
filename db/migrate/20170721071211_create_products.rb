class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :descrption
      t.integer :amount
      t.integer :product_type_id

      t.timestamps null: false
    end
  end
end
