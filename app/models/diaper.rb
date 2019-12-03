class Diaper < ApplicationRecord
   belongs_to :baby
   belongs_to :user
end
