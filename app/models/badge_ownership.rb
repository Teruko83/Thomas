class BadgeOwnership < ApplicationRecord
  belongs_to :user
  validates :badge_type, inclusion: {in: [
    "Diaper God",
    "Golden Nipple",
    "Diaper Warrior",
    "Super Sandman"
  ]}
end
