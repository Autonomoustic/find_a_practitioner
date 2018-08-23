class CreateAvailabilities < ActiveRecord::Migration[5.2]
  def change
    create_table :availabilities do |t|
      t.date :date
      t.string :time
      t.belongs_to :practitioner, index: true

      t.timestamps
    end
  end
end
