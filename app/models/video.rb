class Video < ApplicationRecord
  belongs_to :genre
  belongs_to :license
  has_many :subscriber_video_streams
end
