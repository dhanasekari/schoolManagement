class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :fname
    	t.string :lname
    	t.integer :dob
    	t.string :address
    	t.references :section, foreign_key: true, index: true
    	t.timestamps null: false
    end
  end
end
