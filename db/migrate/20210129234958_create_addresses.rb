class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.references :addressable, polymorphic: true

      t.timestamps
    end
  end
end
