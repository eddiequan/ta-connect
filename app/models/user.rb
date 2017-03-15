class User < ApplicationRecord
  has_secure_password

  has_many :ta_applications

  def self.by_utorid(utorid)
    User.where(utorid: utorid).first
  end
end
