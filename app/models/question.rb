class Question < ApplicationRecord
  belongs_to :video
  has_many :answers
  has_many :answer_users, through: :answers
  validates :question, presence: true
end
