class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :article
  validates :status, inclusion: { in: %w(accepted pending declined),
             message: "%{value} is not a valid status" }
end
