require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Subscriber.create({first_name: "Bob", payment_type: "credit card"})

CreditCard.create({subscriber_id: 1, account_number: "1111111111111111", issuer: "Visa"})

Account.create({subscriber_id: 1})

Plan.create({account_id: 1, tier: "Gold"})

Genre.create({name: "horror"})

ContentProvider.create({name: "HBO"})

License.create({content_provider_id: 1, exclusive: 1, terms_in_years: 3})

Video.create({license_id: 1, genre_id: 1, title: "Alien", content_type: "movie", concurrent_subscriber_limit: 25})

SubscriberVideoStream.create({subscriber_id: 1, video_id: 1})

50.times do
  Subscriber.create({
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  payment_type: "credit card"
  })
end

50.times do |index|
  CreditCard.create({
  subscriber_id: index,
  account_number: Faker::Number.number(16).to_s,
  issuer: ["Visa", "MasterCard"].sample
  })
end

50.times do |index|
  Account.create({
  subscriber_id: index
  })
end

50.times do |index|
  Plan.create({
  account_id: index,
  tier: ["Gold", "Silver", "Bronze"].sample
  })
end

50.times do |index|
  Genre.create({
  name: Faker::Book.genre
  })
end

50.times do |index|
  ContentProvider.create({
    name: ["Warner Bros", "Paramount", "20th Century Fox", "Disney", "Sony", "Universal", "Lions Gate Entertainment", "The Weinstein Company", "MGM", "DreamWorks"].sample
    })
end

50.times do |index|
  License.create({
    content_provider_id: index,
    exclusive: 1,
    terms_in_years: [1, 3, 5].sample
    })
end

500.times do |index|
  Video.create({
    license_id: index,
    genre_id: rand(1..10),
    title: Faker::Book.title,
    content_type: ["movie", "movie", "TV show"].sample,
    concurrent_subscriber_limit: 25
    })
end

1000.times do |index|
  SubscriberVideoStream.create({
    subscriber_id: rand(1..50),
    video_id: rand(1..500)
    })
end
