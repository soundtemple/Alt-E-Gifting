class User < ApplicationRecord
  has_secure_password
  validates :email, length: { minimum: 3 }
  validates :email, length: { maximum: 100 }
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :password, length: { minimum: 3 }
  validates :password, length: { maximum: 50 }

end
