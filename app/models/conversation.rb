class Conversation < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  has_many :messages
end
