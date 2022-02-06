class AddMapapiToScheduleDriveplans < ActiveRecord::Migration[6.1]
  def change
    add_column :schedule_driveplans, :distance, :string
    add_column :schedule_driveplans, :duration, :string
  end
end
