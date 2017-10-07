class Video < ApplicationRecord
  belongs_to :genre
  belongs_to :license
  has_many :video_streams
end
