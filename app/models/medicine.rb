class Medicine < ApplicationRecord
  validates :drug, presence: true
  validates :date, presence: true
  belongs_to :profile
  belongs_to :user
end
