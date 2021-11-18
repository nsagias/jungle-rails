class User < ActiveRecord::Base
  has_secure_password

  validates :password, presence: true, length: { minimum: 3 }
  validates :password_confirmation, presence: true, length: { minimum: 3 }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :fname, presence: true
  validates :lname, presence: true
 
end
