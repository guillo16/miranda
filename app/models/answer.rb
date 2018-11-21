class Answer < ApplicationRecord
  belongs_to :question
  validates :answer, presence: true
  validates :correct, :inclusion => { :in => [true, false] }
end
