class CreateDoctorHospitals < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_hospitals do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :hospital, null: false, foreign_key: true

      t.timestamps
    end
  end
end
