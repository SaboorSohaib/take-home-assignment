class Coach < ApplicationRecord
  has_many :meetings
  belongs_to :user
  validates :name, :time_zone, :week_day, :available_at, :available_until, presence: true
end
