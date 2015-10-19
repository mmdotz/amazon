# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.new({
  name: "Michelle",
  email: "hottamale@hotmail.com",
  admin: true
})
user.password = "password"
user.save!

user2 = User.new({
  name: "Jayson",
  email: "peach@hotmail.com",
  admin: false
})
user2.password = "password"
user2.save!

20.times do
  item = Item.create({
    title: Faker::Book.title,
    desc:  Faker::App.author,
    inv_qty: Faker::Number.number(3),
    price: Faker::Number.number(2)
  })
end
