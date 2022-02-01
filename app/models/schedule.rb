class Schedule < ApplicationRecord
    belongs_to :user
    attachment :image
end
