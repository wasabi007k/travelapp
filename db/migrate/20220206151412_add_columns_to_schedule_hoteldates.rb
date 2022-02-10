class AddColumnsToScheduleHoteldates < ActiveRecord::Migration[6.1]
  def change
    add_column :schedule_hoteldates, :start_time, :time
  end
end
