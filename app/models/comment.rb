class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :board
  validates :message, presence: true, length: { maximum: 200 }
end
