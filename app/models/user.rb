class User < ApplicationRecord
  has_many :coaches
  validates :name, :email, presence: true
end
