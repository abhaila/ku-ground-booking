class DeleteColumnsFromSchedule < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :opens_at
    remove_column :schedules, :closes_at
    remove_column :schedules, :weekday
    add_column :schedules, :start_time, :datetime
    add_column :schedules, :end_time, :datetime
  end
end
