class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :subject, :string
    add_column :users, :user_id, :integer
    add_index :users, :user_id
    add_column :users, :contact_no, :integer
  end
end
