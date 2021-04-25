class CreateSlots < ActiveRecord::Migration[6.0]
  def change
    create_table :slots do |t|
      t.integer :duration
      t.integer :cost
      t.string :category

      t.timestamps
    end
  end
end
