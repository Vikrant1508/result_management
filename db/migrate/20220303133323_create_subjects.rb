class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :english
      t.string :Hindi
      t.string :Science
      t.string :social_science
      t.string :maths

      t.timestamps
    end
  end
end
