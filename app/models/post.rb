class Post < ApplicationRecord
  validates :weight, presence: true
  belongs_to :profile
end
