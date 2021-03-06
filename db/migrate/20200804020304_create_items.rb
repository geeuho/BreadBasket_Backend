class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price
      t.string :category
      t.string :quantity_unit
      t.string :image
      t.integer :store_id

      t.timestamps
    end
  end
end
