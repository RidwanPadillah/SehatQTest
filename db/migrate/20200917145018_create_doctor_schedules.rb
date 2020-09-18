class CreateDoctorSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_schedules do |t|
      t.references :hospital, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.integer :day
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
