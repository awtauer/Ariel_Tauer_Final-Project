class CreateSpecialEducationApplications < ActiveRecord::Migration
  def change
    create_table :special_education_applications do |t|
      t.string :student_name
      t.integer :cps_id
      t.string :school_of_attendance
      t.string :daytime
      t.integer :admin_id

      t.timestamps

    end
  end
end
