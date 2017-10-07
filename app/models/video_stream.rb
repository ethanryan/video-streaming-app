class VideoStream < ApplicationRecord
  belongs_to :subscriber
  belongs_to :video
end
