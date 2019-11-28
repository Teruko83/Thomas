class Baby < ApplicationRecord
  belongs_to :user
  has_many :breastfeedings, dependent: :destroy
  has_many :bottlefeedings, dependent: :destroy
  validates :name, :birthdate, presence: true
end
