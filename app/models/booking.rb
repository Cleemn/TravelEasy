class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :article
  has_many :reviews
  has_many :messages
  validates :status, inclusion: { in: %w[accepted pending declined],
                                  message: "%{value} is not a valid status" }
end
