# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Restaurant.create(
  name: 'Restaurant One',
  address: "1 First Lane",
  phone_number: 4161234567,
  email: 'restaurantone@gmail.com',
  capacity: 100,
  time_open: 1100,
  time_close: 2000,
  cuisine: 'American',
  url: 'https://i.imgur.com/WPcy3B6.jpg',
  summary: 'All Day Breakfast',
  price: 100
)
