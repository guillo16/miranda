class Challenge < ApplicationRecord
  belongs_to :user
  has_one :video
end
