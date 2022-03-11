class RemoveColumnToTeachers < ActiveRecord::Migration[5.2]
  def change
  	remove_column :teachers, :group, :string
  	remove_column :teachers, :marks, :integer
  end
end
