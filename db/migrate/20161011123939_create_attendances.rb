class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
    	t.datetime :day
    	t.boolean :status
    	t.references :student, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
