# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

Restaurant.create(
  name: 'Porch Restaurant',
   address: "1 First Lane",
   phone_number: 4161234567,
   email: 'porchrest@gmail.com',
   capacity: 100,
   time_open: 1100,
   time_close: 2300,
   cuisine: 'American',
   url: 'https://s-media-cache-ak0.pinimg.com/736x/10/27/83/102783442af8c9123d698308fd36cf95.jpg',
   summary: 'All Day Breakfast!',
   price: 100
 )

Restaurant.create(
   name: 'Thai Restaurant',
   address: "2 First Lane",
   phone_number: 4161234567,
   email: 'thairest@gmail.com',
   capacity: 200,
   time_open: 1100,
   time_close: 2300,
   cuisine: 'Thai',
   url: 'https://s-media-cache-ak0.pinimg.com/736x/2a/c2/67/2ac267a050e640119831934df626f24d.jpg',
   summary: 'Best Thai in town!',
   price: 50
 )

 Restaurant.create(
   name: 'Sushi Restaurant',
   address: "3 First Lane",
   phone_number: 4161234567,
   email: 'sushirest@gmail.com',
   capacity: 50,
   time_open: 1100,
   time_close: 2300,
   cuisine: 'Sushi',
   url: 'https://s-media-cache-ak0.pinimg.com/736x/2f/6b/4a/2f6b4a5b57e6db0b4323a51a4f4156b9.jpg',
   summary: 'Best Sushi in Toronto! ',
   price: 100
 )
