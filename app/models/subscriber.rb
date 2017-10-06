class Subscriber < ApplicationRecord
  has_one :credit_card
  has_one :account
  has_many :subscriber_video_streams
end
