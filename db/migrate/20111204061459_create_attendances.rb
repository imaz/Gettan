class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :schedule
      t.integer :period
      t.references :subject

      t.timestamps
    end
    add_index :attendances, :schedule_id
    add_index :attendances, :subject_id
  end
end
