class AddFuelsToSchedules < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :fuel, :integer
    add_column :schedules, :fuel_economy, :float
  end
end
