class User < ApplicationRecord
  has_secure_password

  def self.by_utorid(utorid)
    User.where(utorid: utorid).first
  end
end
