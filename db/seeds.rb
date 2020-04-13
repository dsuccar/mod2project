# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


dog1 = Dog.create(name: "Bentley")
dog2 = Dog.create(name: "Abby")
dog3 = Dog.create(name: "Toro")
dog4 = Dog.create(name: "Sean")
dog5 = Dog.create(name: "Cole")
dog6 = Dog.create(name: "Kanye")
dog7 = Dog.create(name: "Kendrick")
dog8 = Dog.create(name: "Adele")
dog9 = Dog.create(name: "Ted")




user1 = User.create(name:"Paul")
user2 = User.create(name:"Danny")
user3 = User.create(name:"T")
user4 = User.create(name:"Chine")
user5 = User.create(name:"Ann")

app1 = App.create(dog_id:dog2.id, user_id:user2.id)
app1 = App.create(dog_id:dog3.id, user_id:user4.id)
app1 = App.create(dog_id:dog4.id, user_id:user5.id)
app1 = App.create(dog_id:dog5.id, user_id:user1.id)
app1 = App.create(dog_id:dog6.id, user_id:user3.id)
app1 = App.create(dog_id:dog7.id, user_id:user4.id)
app1 = App.create(dog_id:dog8.id, user_id:user2.id)
app1 = App.create(dog_id:dog9.id, user_id:user3.id)
app1 = App.create(dog_id:dog1.id, user_id:user1.id)