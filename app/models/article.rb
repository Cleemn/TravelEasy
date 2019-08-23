class Article < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :name, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :category, inclusion: { in: %w[valise cabine sac-a-dos],
                                    message: "%{value} is not a valid category" }
  # include PgSearch
  # pg_search_scope :global_search,
  #   against: [ :name, :description, :address ],
  #   associated_against: {
  #     user: [ :first_name, :last_name, :address ]
  #   },
  #   using: {
  #     tsearch: { prefix: true }
  #   }
  include PgSearch
    multisearchable against: [:name, :description, :address]
  end
