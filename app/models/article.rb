class Article < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :price, presence: true
  mount_uploader :photo, PhotoUploader
end
