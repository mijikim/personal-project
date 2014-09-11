class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :username, :email
  validates_uniqueness_of :username, :email
  validates :password, length: { in: 8..15 }

end