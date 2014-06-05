class CreateParkProgramApplications < ActiveRecord::Migration
  def change
    create_table :park_program_applications do |t|
      t.string :student_name
      t.integer :cps_id
      t.string :school_of_attendance
      t.string :park_name
      t.string :park_address
      t.integer :admin_id

      t.timestamps

    end
  end
end
