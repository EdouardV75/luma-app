class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :preferences
  has_many :orders
  has_many :posts, dependent: :destroy
  has_many :experiences, through: :orders
  belongs_to :company

  # after_create :send_welcome_email
  after_invitation_accepted :send_welcome_email

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end 
end
