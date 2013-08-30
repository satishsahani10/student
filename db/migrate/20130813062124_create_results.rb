class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :student_list_id
      t.integer :exam_id
      t.string :division
      t.float :percentage

      t.timestamps
    end
  end
end
