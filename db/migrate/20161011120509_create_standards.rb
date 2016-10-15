class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
    	t.string :description
    	t.references :school, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
