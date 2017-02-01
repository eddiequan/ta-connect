class User < ApplicationRecord
  has_secure_password

  def self.by_email(email)
    User.where(email: email).first
  end
end
