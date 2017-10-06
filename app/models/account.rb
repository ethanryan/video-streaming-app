class Account < ApplicationRecord
  belongs_to :subscriber
  has_one :plan
end
