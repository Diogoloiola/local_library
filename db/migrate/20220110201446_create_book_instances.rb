class CreateBookInstances < ActiveRecord::Migration[6.1]
  def change
    create_table :book_instances do |t|
      t.datetime :due_back
      t.string :status
      t.string :imprint

      t.timestamps
    end
  end
end
