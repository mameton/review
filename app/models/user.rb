class User < ApplicationRecord
  has_many :items
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

        validates :nickname, presence: true
        
        PASSWORD_REGEX =/\A[a-zA-Z0-9]+\z/
        validates_format_of :password, with: PASSWORD_REGEX
end
