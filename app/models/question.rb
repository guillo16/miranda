class Question < ApplicationRecord
  belongs_to :video
  has_many :answers
  validates :question, presence: true
end
