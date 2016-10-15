class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
    	t.integer :marks
    	t.references :student, foreign_key: true, index: true
    	#t.references :subject, foreign_key: true, index: true
    	t.references :exam, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
