class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
    	t.string :fname
    	t.string :lname
    	t.integer :dob
    	t.integer :mobile
    	t.references :standard, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
