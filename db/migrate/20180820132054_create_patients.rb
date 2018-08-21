class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :medical_history
<<<<<<< HEAD
=======
      
>>>>>>> 545cfa282a9e60fabc0da679e4f43d9f14409ef8

      t.timestamps
    end
  end
end
