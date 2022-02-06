class CreateScheduleDriveplans < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_driveplans do |t|
      t.references :schedule_hoteldate, null: false, foreign_key: true
      t.time :start_time
      t.string :d_address
      t.string :a_address
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :price

      t.timestamps
    end
  end
end
