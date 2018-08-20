class CreatePaitents < ActiveRecord::Migration[5.2]
  def change
    create_table :paitents do |t|
      t.string :name
      t.integer :age
      t.string :address
      t.string :medical_history

      t.timestamps
    end
  end
end
