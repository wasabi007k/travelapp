class ScheduleDriveplan < ApplicationRecord
  belongs_to :schedule_hoteldate

  geocoded_by :address # addressカラムを基準に緯度経度を算出する。
  after_validation :geocode # 住所変更時に緯度経度も変更する。

  def self.sum_f_price
    sum_price = 0
    sum(:f_price)
  end
  
  with_options presence: true do
    validates :d_address
    validates :a_address
    validates :d_name
    validates :a_name
  end
  
end
