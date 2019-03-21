class Profile < ApplicationRecord
  belongs_to :user
  has_many :posts, dependent: :destroy
  has_many :medicines, dependent: :destroy
  has_many :users, through: :posts

end
