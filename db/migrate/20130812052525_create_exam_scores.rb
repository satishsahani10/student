class CreateExamScores < ActiveRecord::Migration
  def change
    create_table :exam_scores do |t|
      t.integer :exam_id
      t.integer :student_list_id
      t.integer :subject_id
      t.float :mark

      t.timestamps
    end
  end
end
