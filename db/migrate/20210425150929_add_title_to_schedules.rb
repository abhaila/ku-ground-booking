class AddTitleToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :title, :string
  end
end
