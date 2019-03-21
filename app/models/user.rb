class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :email, presence: true
  has_many :posts, through: :profiles
  has_many :vaccinations
  has_many :medicines
  has_many :friends
  has_many :profiles

end
