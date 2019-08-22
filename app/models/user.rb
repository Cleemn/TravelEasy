class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :articles, dependent: :destroy
  has_many :bookings #as a client
  has_many :messages
  # has_many :bookings_as_owner, through: :products, source: :bookings
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :photo, PhotoUploader
  # validates :name, :address, presence: true

  include PgSearch
  multisearchable against: [:first_name, :last_name ]
end
