class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string    :student_name
      t.string    :group
      t.string    :subject
      t.string    :grade
      t.datetime  :date_of_birth
      t.decimal   :marks

      t.timestamps
    end
  end
end
