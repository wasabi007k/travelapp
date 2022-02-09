class Schedule < ApplicationRecord
    belongs_to :user
    attachment :image
    

    
    has_many :schedule_hoteldates, dependent: :destroy
    accepts_nested_attributes_for :schedule_hoteldates, allow_destroy: true
    has_many :schedule_driveplans, dependent: :destroy 
    accepts_nested_attributes_for :schedule_driveplans, allow_destroy: true


end
