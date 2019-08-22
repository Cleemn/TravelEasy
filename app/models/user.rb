class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :articles, dependent: :destroy
  has_many :bookings, through: :articles

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  # validates :name, :address, presence: true

  include PgSearch
  multisearchable against: [:first_name, :last_name ]
end
