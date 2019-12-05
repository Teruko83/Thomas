class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :babies, dependent: :destroy
  has_many :diapers, dependent: :destroy
  has_many :sleeps, dependent: :destroy
  has_many :badge_ownerships, dependent: :destroy
  has_many :care_takings
end
