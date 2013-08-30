class AddFacultyIdToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :faculty_id, :integer
  end
end
