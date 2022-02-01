class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.integer :user_id
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :num_p
      t.string :image_id

      t.timestamps
    end
  end
end
