class CreateSafetyHazardApplications < ActiveRecord::Migration
  def change
    create_table :safety_hazard_applications do |t|
      t.string :student_name
      t.integer :cps_id
      t.string :home_address
      t.string :school_of_attendance
      t.string :school_address
      t.string :hazard_location
      t.string :hazard_type
      t.integer :admin_id

      t.timestamps

    end
  end
end
