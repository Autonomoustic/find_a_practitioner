class CreatePractitioners < ActiveRecord::Migration[5.2]
  def change
    create_table :practitioners do |t|

      t.string :name
      t.string :gender
      t.integer :years_experience
      t.integer :phone_number_ext
      t.string :email
      # t.integer :id
      t.belongs_to :department, index: true



      t.timestamps
    end
  end
end
