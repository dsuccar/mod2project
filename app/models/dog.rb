class Dog < ApplicationRecord
  has_many :apps
  has_many :users, through: :apps

  validates :name, presence: true, uniqueness: true
  
  
  def self.non_adopted
    arr =[]
    App.all.each{|a| arr << a.dog_id}
    

    # arr = []
    # App.all.each{|a| arr << a.dog_id}
    # {App.all.map(&:dog_id)}
    byebug
#     determine how to find avail dog vs unavail
#     look up active record methods
  end
end
