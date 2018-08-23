class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.integer :availability_id
      t.belongs_to :practitioner, index: true
      t.belongs_to :patient, index: true

      t.timestamps
    end
  end
end
