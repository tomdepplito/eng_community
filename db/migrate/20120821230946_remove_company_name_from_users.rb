class RemoveCompanyNameFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :company_name
    add_column    :users, :company_id, :integer
  end

  def down
  end
end
