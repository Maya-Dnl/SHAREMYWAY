class Event < ApplicationRecord
  belongs_to :user

  has_many :bookings
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :description, presence: true
end
