class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
    	t.string :ExamName
    	t.references :student, foreign_key: true, index: true
    	t.references :subject, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
