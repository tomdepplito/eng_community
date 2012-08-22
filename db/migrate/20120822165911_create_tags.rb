class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :product_id
      t.text :description

      t.timestamps
    end
  end
end
