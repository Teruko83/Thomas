class Baby < ApplicationRecord
  belongs_to :user
  has_many :breast_feedings, dependent: :destroy
  has_many :bottlefeedings, dependent: :destroy
  has_many :diapers, dependent: :destroy
  has_many :sleeps, dependent: :destroy

  validates :name, :birthdate, presence: true
  has_many :care_takings
end
