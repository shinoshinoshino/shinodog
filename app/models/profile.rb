class Profile < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :medicines, dependent: :destroy
  belongs_to :user
end
