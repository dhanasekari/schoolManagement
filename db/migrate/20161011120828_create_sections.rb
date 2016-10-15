class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
    	t.string :sectionName
    	t.references :standard, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
