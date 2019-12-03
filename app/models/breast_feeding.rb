class BreastFeeding < ApplicationRecord
  belongs_to :baby
  belongs_to :user
  validates :breast_side, presence: true
end
