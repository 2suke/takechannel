class Board < ApplicationRecord
  acts_as_taggable
  acts_as_taggable_on :skills, :interests
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { maximum: 20 }
  validates :tag_list, length: { maximum: 10 }
end
