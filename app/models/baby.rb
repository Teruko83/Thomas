class Baby < ApplicationRecord
  belongs_to :user
  has_many :feedings
  validates :name, :birthdate, presence: true
end
