class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :company_id
      t.text :description
      t.string :part_number
      t.string :price

      t.timestamps
    end
  end
end
