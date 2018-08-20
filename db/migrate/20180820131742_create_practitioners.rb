class CreatePractitioners < ActiveRecord::Migration[5.2]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.integer :age
      t.integer :years_experience
      t.string :phone_number
      t.string :integer
      t.string :email

      t.timestamps
    end
  end
end
