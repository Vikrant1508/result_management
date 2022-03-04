class AddColumnToResult < ActiveRecord::Migration[5.2]
  def change
    add_column :results, :user_id, :integer
    add_index :results, :user_id
  end
end
