class Video < ApplicationRecord
  has_many :questions
  has_many :bookmarks
  validates :title, presence: true
  validates :url, uniqueness: true, presence: true
  validates :difficulty, presence: true
  validates :category, presence: true
  validates :region, presence: true
end
