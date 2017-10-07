class Subscriber < ApplicationRecord
  has_one :credit_card
  has_one :account
  has_many :video_streams
end
