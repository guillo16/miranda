class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookmarks
  has_many :answer_users
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  after_create :send_welcome_email

  def index
    @videos = Video.all
  end

  def show
  end

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
