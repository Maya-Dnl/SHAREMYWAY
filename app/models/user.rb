class User < ApplicationRecord
  HOBBYS = ["Nature and Outdoors", "Education and Learning", "Sports", "Games and Entertainment", "Food and Gastronomy", "Art and Culture", "Science and Exploration", ""]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :events, through: :bookings
  has_one_attached :photo

  validates :username, presence: true
  validates :language, presence: true
  validates :hobby1, inclusion: { in: HOBBYS }
  validates :hobby2, inclusion: { in: HOBBYS }
  validates :hobby3, inclusion: { in: HOBBYS }
end
