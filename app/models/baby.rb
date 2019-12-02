class Baby < ApplicationRecord
  belongs_to :user
  has_many :breast_feedings, dependent: :destroy
  has_many :bottlefeedings, dependent: :destroy
  has_many :diapers, dependent: :destroy
  validates :name, :birthdate, presence: true
end
