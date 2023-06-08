class Meeting < ApplicationRecord
    belongs_to :coach

    validates :name, :time_zone, :week_day, :available_time,  presence: true
end
