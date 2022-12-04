class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :Name
      t.string :Mother_Name
      t.string :Father_Name
      t.string :Email
      t.integer :Run
      t.integer :Dv
      t.integer :Telefono
      t.date :Birthday
      t.date :Year_Ingre
      t.date :Deleted_At
      t.string :Password

      t.timestamps
    end
  end
end
