class Article < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
  validates :category, inclusion: { in: %w[valise cabine sac-a-dos],
                                    message: "%{value} is not a valid category" }
end
