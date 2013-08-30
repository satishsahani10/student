class RemoveFacultyIdFromExam < ActiveRecord::Migration
  def up
    remove_column :exams, :faculty_id
  end

  def down
    add_column :exams, :faculty_id, :integer
  end
end
