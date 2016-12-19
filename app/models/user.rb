class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # attr_accessible :email, :password, :password_confirmation, :remember_me, :username
  has_attached_file :avatar, default_url: "", :styles => {
  :medium => "300x300>",
  :thumb => "100x100>"
  }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :friendships
  has_many :friends, :through => :friendships
end
