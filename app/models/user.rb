class User < ApplicationRecord
  has_many :messages
  validates :pseudo, presence:true, length: { minimum: 3, maximum: 20 }, uniqueness: { case_sensitive: false }
  has_secure_password
end