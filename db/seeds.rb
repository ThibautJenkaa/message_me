# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(pseudo:"tibolebg", password:"testeu")
User.create(pseudo:"micheldu34", password:"testeu")
User.create(pseudo:"admin", password:"testeu")

Message.create(body: "ça va les bros ?", user_id: 1)
Message.create(body: "oué et toa ?", user_id: 2)
Message.create(body: "on est la tavu", user_id: 1)
Message.create(body: "bonjour je suis administrateur", user_id: 3)