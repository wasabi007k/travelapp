class CreateScheduleHoteldates < ActiveRecord::Migration[6.1]
  def change
    create_table :schedule_hoteldates do |t|
      t.references :schedule, null: false, foreign_key: true
      t.date :hotel_date
      t.string :hotel_name
      t.text :hotel_url
      t.string :image_id
      t.integer :hotel_price

      t.timestamps
    end
  end
end
