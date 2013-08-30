class CreateStudentLists < ActiveRecord::Migration
  def change
    create_table :student_lists do |t|
      t.integer :roll_number
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :address
      t.string :phone_number
      t.integer :faculty_id

      t.timestamps
    end
  end
end
