class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :credits
      t.integer :attendance

      t.timestamps
    end
  end
end
