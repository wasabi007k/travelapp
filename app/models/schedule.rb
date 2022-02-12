class Schedule < ApplicationRecord
    belongs_to :user
    attachment :image
    

    
    has_many :schedule_hoteldates, dependent: :destroy
    accepts_nested_attributes_for :schedule_hoteldates, allow_destroy: true
    
    with_options presence: true do
        validates :num_p
        validates :fuel
        validates :fuel_economy
        validates :title
        validates :start_date
        validates :end_date

    end


end
