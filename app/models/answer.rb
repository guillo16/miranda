class Answer < ApplicationRecord
  belongs_to :question
  has_many :answer_users
  validates :answer, presence: true
  validates :correct, :inclusion => { :in => [true, false] }
end
