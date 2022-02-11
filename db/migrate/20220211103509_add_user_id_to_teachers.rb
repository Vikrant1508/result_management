class AddUserIdToTeachers < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :user_id, :integer
    add_index :teachers, :user_id
  end
end
