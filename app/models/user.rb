class User < ActiveRecord::Base
  has_secure_password

  validates :password, presence: true
  validates :password_confirmation, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :fname, presence: true
  validates :lname, presence: true
 
end
