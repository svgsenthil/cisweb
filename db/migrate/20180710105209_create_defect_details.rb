class CreateDefectDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :defect_details do |t|
      t.references :defect, foreign_key: true
	  t.string :comment

      t.timestamps
    end
  end
end
