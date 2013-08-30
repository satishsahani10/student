class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.integer :university_id

      t.timestamps
    end
  end
end
