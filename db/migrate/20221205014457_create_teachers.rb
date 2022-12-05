class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :Name
      t.string :Mother_Name
      t.string :Father_Name
      t.string :Email
      t.integer :Run
      t.integer :Dv
      t.date :Birthday
      t.date :Deleted_At
      t.string :Password
      t.date :Year_Ingreso
      t.date :Year_Egreso
      t.date :Year_Teacher
      t.integer :Telefono

      t.timestamps
    end
  end
end
