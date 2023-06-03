require "open-uri"
puts "Clearing database"
Booking.destroy_all
Item.destroy_all
User.destroy_all

puts "Creating seeds"
User.create!(name: "Bob Sagat", email: "bob@gmail.com", password: "password", phone_number:"1234567", bio: "Bob likes stuff")

item1 = Item.create(
  name: "Inflatable Castle",
  address: " 11111 Moon, Outer Space",
  description: "Take your party to new heights with this gravity-defying inflatable castle on the moon! Bounce around in zero gravity while enjoying stunning views of the Earth. Moonwalks, alien encounters, and lunar selfies guaranteed!",
  price: 250,
  user: User.all.sample# Replace with the appropriate user association
)
file = URI.open("https://res.cloudinary.com/doavhfhmx/image/upload/v1685783434/93677fcf-1428-4a07-86a1-0b370a9db068_cozcgy.png")
item1.photo.attach(io: file, filename: "inflatable castle", content_type: "photo/png")
item1.save

item2 = Item.create(
  name: "Emotional Support Dog for final project",
  address: "66 Fairyland, Cloud Nine",
  description: "Feel the the soft wet nose of a sweet Dalmation tickling your cheek to make you giggle and relax",
  price: 75,
  user: User.all.sample# Replace with the appropriate user association
)
file = URI.open("https://res.cloudinary.com/doavhfhmx/image/upload/v1684411335/cld-sample.jpg")
item2.photo.attach(io: file, filename: "Emotional Support Dog for when you are coding", content_type: "photo/png")
item2.save

item3 = Item.create(
  name: "Flying carpet",
  address: "101 Laughter Land, Wonderland",
  description: "Need a dose of laughter? Rent the Giggle Generator 3000! This tickle-inducing device emits an infectious giggle that will turn any frown upside down. Warning: Uncontrollable laughter and excessive cheerfulness may occur.",
  price: 40,
  user: User.all.sample# Replace with the appropriate user association
)
file = URI.open("https://res.cloudinary.com/doavhfhmx/image/upload/v1685783559/22ebd7d5-d02c-4af3-89f1-7f1f0a64ea96_zkhmdh.png")
item3.photo.attach(io: file, filename: "Flying Carpet", content_type: "photo/png")
item3.save

item4 = Item.create(
  name: "Bubbledome",
  address: "23 Quizzical Lane, Eccentricville",
  description: "Feeling a little too ordinary? Time to quench that thirst for quirkiness with the QuirkQuencher! This zany invention turns regular drinks into peculiar potions, infusing them with an extra dose of whimsy. From rainbow-colored lemonade to fizzy sherbet sodas, the QuirkQuencher takes your sips to a whole new level of quirkiness!",
  price: 175,
  user: User.all.sample# Replace with the appropriate user association
)
file = URI.open("https://res.cloudinary.com/doavhfhmx/image/upload/v1685783551/07324083-8012-4ebc-b66b-f93e0c8e130b_oshdv0.png")
item4.photo.attach(io: file, filename: "Bubbledome", content_type: "photo/png")
item4.save

item5 = Item.create(
  name: "Surfing Unicorn",
  address: "42 Wacky Way, Giggleton",
  description: "Experience the warm and fuzzy embrace of this robotic cuddle buddy! With its patented SnuggleSense™ technology, it offers the perfect cuddle every time, complete with customizable cuddle intensity settings and an optional snore simulation feature. Get ready for a snuggle revolution!",
  price: 250,
  user: User.all.sample # Replace with the appropriate user association
)
file = URI.open("https://res.cloudinary.com/doavhfhmx/image/upload/v1685783603/047a3c1e-9b32-4782-843f-4fa3db12bbbd_c57bmc.png")
item5.photo.attach(io: file, filename: "Surfing Unicorn", content_type: "photo/png")
item5.save

puts "#{Item.count} items created"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
