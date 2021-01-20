class Comment < ApplicationRecord
  belongs_to :prototype
  belongs_to :user
  has_many :comments
  validates :text, presence: true
end
