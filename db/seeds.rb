require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#commenting these out......

# Subscriber.create({first_name: "Bob", payment_type: "credit card"})
#
# CreditCard.create({subscriber_id: 1, account_number: "1111111111111111", issuer: "Visa"})
#
# Account.create({subscriber_id: 1})
#
# Plan.create({account_id: 1, tier: "Gold"})
#
# Genre.create({name: "horror"})
#
# ContentProvider.create({name: "HBO"})
#
# License.create({content_provider_id: 1, exclusive: 1, terms_in_years: 3})
#
# Video.create({license_id: 1, genre_id: 1, title: "Alien", content_type: "movie", concurrent_subscriber_limit: 25})
#
# SubscriberVideoStream.create({subscriber_id: 1, video_id: 1})

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

500.times do |index|
  Video.create({
    license_id: index,
    genre_id: rand(1..10),
    title: "Alien",
    content_type: "movie",
    concurrent_subscriber_limit: 25
    })
end

800.times do |index|
  SubscriberVideoStream.create({
    subscriber_id: rand(1..50),
    video_id: rand(1..500),
    # date: Date.new(2017,1,rand(1..31))
    date: Date.new(2017,rand(1..2),15) #everything streams in either January or February
    })
end







# (((((((((Below words! returns top 20 video titles for subscriber ID #1 streamed in January 2017. To change subscriber ID, simple change the number in the first "where" method.))))))))))))
#
#
# SubscriberVideoStream.joins(:video).where('subscriber_id' => 1).where(date: Date.new(2017,1,1)..Date.new(2017,1,-1)).group("title").order("count_title desc").limit(20).count("title")
#
# OR CAN ORDER LIKE THIS:
#
# SubscriberVideoStream.where('subscriber_id' => 1).where(date: Date.new(2017,1,1)..Date.new(2017,1,-1)).joins(:video).group("title").order("count_title desc").limit(20).count("title")
#
#
# ((((Both seem to take the same amount of time)))))
#

# NOW JUST NEED TO TRANSLATE THE ABOVE ActiveRecord query into a raw SQL query, and I'll be done with this question.
#

# should be something like::::
#
# SELECT  COUNT(title) AS count_title, title AS title FROM "subscriber_video_streams" INNER JOIN "videos" ON "videos"."id" = "subscriber_video_streams"."video_id" WHERE "subscriber_video_streams"."subscriber_id" = ? AND ("subscriber_video_streams"."date" BETWEEN ? AND ?) GROUP BY title ORDER BY count_title desc LIMIT ?  [["subscriber_id", 1], ["date", "2017-01-01"], ["date", "2017-01-31"], ["LIMIT", 20]]
# ...above is what SQL fires in console when I run the ActiveRecord query....


# ((below works, can make sure my SQL query is right by writing it out similar to below, till I get the correct result))
#
# sql = "SELECT * FROM videos WHERE (videos.id = 10) LIMIT 1"
# records_array = ActiveRecord::Base.connection.execute(sql)
