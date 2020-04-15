class App < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  validates :dog, presence: true, uniqueness: true
  

end
