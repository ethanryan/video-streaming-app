class ContentProvider < ApplicationRecord
  has_many :licenses
  has_many :videos, through: :licenses
end
