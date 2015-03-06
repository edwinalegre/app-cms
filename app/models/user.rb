class User < ActiveRecord::Base
  has_secure_password
  validates :firstname, :lastname, presence: true
  validates :password, confirmation: true
  validates :password, length: { minimum: 6 }, allow_nil: true
  validates :email, uniqueness: {case_sensitive: false}
end
