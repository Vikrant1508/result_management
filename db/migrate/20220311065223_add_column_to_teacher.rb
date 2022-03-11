class AddColumnToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_column :teachers, :contact_no, :integer
  end
end
