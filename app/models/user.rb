class User < ApplicationRecord
  has_secure_password

  def self.find_by_username(name)
    User.find_by(name: name)
  end
  
end
