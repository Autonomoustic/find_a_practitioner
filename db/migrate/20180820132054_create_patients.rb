class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :medical_history
      t.belongs_to :clinic, index: true
      t.timestamps
    end
  end
end
