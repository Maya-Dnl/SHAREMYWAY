class Event < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo

  validates :name, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :description, presence: true
end
