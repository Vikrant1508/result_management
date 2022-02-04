class CreateTeachers < ActiveRecord::Migration[5.2]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :group
      t.string :subject
      t.datetime :date_of_birth
      t.integer :marks

      t.timestamps
    end
  end
end
