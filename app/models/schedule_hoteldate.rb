class ScheduleHoteldate < ApplicationRecord
  attachment :image
  belongs_to :schedule


  def self.sum_price
    sum_price = 0
    sum(:hotel_price)
  end

  has_many :schedule_driveplans, dependent: :destroy
  accepts_nested_attributes_for :schedule_driveplans, allow_destroy: true

  
end
