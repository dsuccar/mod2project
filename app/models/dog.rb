class Dog < ApplicationRecord
  has_many :apps
  has_many :users, through: :apps

  validates :name, presence: true, uniqueness: true
end
