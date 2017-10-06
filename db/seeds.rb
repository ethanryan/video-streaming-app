# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Subscriber.create({first_name: "Bob", payment_type: "credit card"})

CreditCard.create({subscriber_id: 1, account_number: 11111111, issuer: "Visa"})

Account.create({subscriber_id: 1})

Plan.create({account_id: 1, tier: "Gold"})
