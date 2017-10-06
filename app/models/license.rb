class License < ApplicationRecord
  belongs_to :content_provider
  has_many :videos
end
