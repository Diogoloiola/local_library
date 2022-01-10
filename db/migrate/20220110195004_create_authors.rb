class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.datetime :date_of_birth
      t.datetime :date_of_death

      t.timestamps
    end
  end
end
