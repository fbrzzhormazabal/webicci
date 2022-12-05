class CreateGuests < ActiveRecord::Migration[7.0]
  def change
    create_table :guests do |t|
      t.string :Name
      t.string :Email
      t.integer :Run
      t.integer :Dv
      t.date :Deleted_At
      t.string :Password

      t.timestamps
    end
  end
end
