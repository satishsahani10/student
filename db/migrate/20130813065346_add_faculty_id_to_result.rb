class AddFacultyIdToResult < ActiveRecord::Migration
  def change
    add_column :results, :faculty_id, :integer
  end
end
