class Dog < ApplicationRecord
  has_many :apps
  has_many :users, through: :apps

  validates :name, presence: true, uniqueness: true
  
  
  def self.non_adopted
    arr =[]
    dog_arr = []
    App.all.each{|a|arr<<a.dog_id}
        if Dog.all.each do |d|
            if !arr.include? d.id
                dog_arr << d
                    
            end
            end
        end
        
        dog_arr
    end
end
