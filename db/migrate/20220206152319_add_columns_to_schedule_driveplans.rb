class AddColumnsToScheduleDriveplans < ActiveRecord::Migration[6.1]
  def change
    add_column :schedule_driveplans, :d_name, :string
    add_column :schedule_driveplans, :a_name, :string
    add_column :schedule_driveplans, :s_time, :time
    add_column :schedule_driveplans, :meal_price, :integer
    add_column :schedule_driveplans, :name, :string
    add_column :schedule_driveplans, :comment, :text
    add_column :schedule_driveplans, :image_id, :string
    add_column :schedule_driveplans, :f_price, :integer
  end
end
