class User < ApplicationRecord
  has_many :apps
  has_many :dogs, through: :apps

  validates :name, presence: true, uniqueness: true
end
