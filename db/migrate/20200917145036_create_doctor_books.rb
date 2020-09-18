class CreateDoctorBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :doctor_books do |t|
      t.references :hospital
      t.references :user, null: false, foreign_key: true
      t.references :doctor
      t.datetime :date

      t.timestamps
    end
  end
end
