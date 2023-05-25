Item.create(
  name: "Inflatable Castle",
  address: " 11111 Moon, Outer Space",
  description: "Take your party to new heights with this gravity-defying inflatable castle on the moon! Bounce around in zero gravity while enjoying stunning views of the Earth. Moonwalks, alien encounters, and lunar selfies guaranteed!",
  price: 250,
  category: "Entertainment",
  user: User.first # Replace with the appropriate user association
)

Item.create(
  name: "Pogo Stick Deluxe",
  address: "66 Fairyland, Cloud Nine",
  description: "Soar to new heights with this magical pogo stick! Bounce among fluffy clouds and explore the enchanting realms of Fairyland. Fairies and unicorns not included, but you may stumble upon some pixie dust and magic beans along the way!",
  price: 75,
  category: "Entertainment",
  user: User.first # Replace with the appropriate user association
)

Item.create(
  name: "Giggle Generator 3000",
  address: "101 Laughter Land, Wonderland",
  description: "Need a dose of laughter? Rent the Giggle Generator 3000! This tickle-inducing device emits an infectious giggle that will turn any frown upside down. Warning: Uncontrollable laughter and excessive cheerfulness may occur.",
  price: 40,
  category: "Entertainment",
  user: User.first # Replace with the appropriate user association
)
Item.create(
  name: "QuirkQuencher",
  address: "23 Quizzical Lane, Eccentricville",
  description: "Feeling a little too ordinary? Time to quench that thirst for quirkiness with the QuirkQuencher! This zany invention turns regular drinks into peculiar potions, infusing them with an extra dose of whimsy. From rainbow-colored lemonade to fizzy sherbet sodas, the QuirkQuencher takes your sips to a whole new level of quirkiness!",
  price: 175,
  category: "Beverages",
  user: User.first # Replace with the appropriate user association
)

Item.create(
  name: "SnuggleMaster 3000",
  address: "42 Wacky Way, Giggleton",
  description: "Experience the warm and fuzzy embrace of this robotic cuddle buddy! With its patented SnuggleSense™ technology, it offers the perfect cuddle every time, complete with customizable cuddle intensity settings and an optional snore simulation feature. Get ready for a snuggle revolution!",
  price: 250,
  category: "Miscellaneous",
  user: User.first # Replace with the appropriate user association
)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
