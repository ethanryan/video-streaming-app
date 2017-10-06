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

Genre.create({name: "horror"})

ContentProvider.create({name: "HBO"})

License.create({content_provider_id: 1, exclusive: 1, terms_in_years: 3})

Video.create({content_provider_id: 1, genre_id: 1, title: "Alien", content_type: "movie", concurrent_subscriber_limit: 25})

SubscriberVideoStream.create({subscriber_id: 1, video_id: 1})
