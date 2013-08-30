class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :faculty_id

      t.timestamps
    end
  end
end
