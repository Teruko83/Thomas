class BreastFeeding < ApplicationRecord
  belongs_to :baby
  validates :breast_side, presence: true
end
