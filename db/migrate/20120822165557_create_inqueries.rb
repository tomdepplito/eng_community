class CreateInqueries < ActiveRecord::Migration
  def change
    create_table :inqueries do |t|
      t.integer :user_id
      t.text :body

      t.timestamps
    end
  end
end
