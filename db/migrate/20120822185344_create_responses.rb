class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :inquiry_id
      t.text :body

      t.timestamps
    end
  end
end
