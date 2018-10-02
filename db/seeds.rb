# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kevin = User.create(username: "kev", name: "kevin", mod: 4, language: "javascript", hobby: "dancing")
roberto = User.create(username: "rob", name: "roberto", mod: 4, language: "ruby", hobby: "acting")
amirata = User.create(username: "ami", name: "amirata", mod: 4, language: "javascript", hobby: "git pushing")
prince = User.create(username: "king", name: "prince", mod: 4, language: "rails", hobby: "dancing")
scarlet = User.create(username: "scar", name: "scarlet", mod: 4, language: "react", hobby: "cambio")
gaby = User.create(username: "baby", name: "gaby", mod: 4, language: "ruby", hobby: "coding")