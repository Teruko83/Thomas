class Baby < ApplicationRecord
  belongs_to :user
  has_many :breastfeedings
  has_many :bottlefeedings
  validates :name, :birthdate, presence: true
end
