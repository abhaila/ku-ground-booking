class DeleteColumnsFromMultipleModel < ActiveRecord::Migration[6.0]
  def change
    remove_column :slots, :duration
    remove_column :slots, :category
    add_column :slots, :status, :string
    add_reference :slots, :facility, null: false, foreign_key: true
  end
end
