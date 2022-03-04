class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :name
      t.string :last_name
      t.string :group
      t.string :subject
      t.string :date_of_birth
      t.string :marks

      t.timestamps
    end
  end
end
