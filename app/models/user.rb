class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookmarks
  has_many :answer_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end