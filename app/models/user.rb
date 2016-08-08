class User < ActiveRecord::Base
  # Remember to create a migration!

  has_secure_password
  validates :username, presence: true
  validates :password, length: { minimum: 6 }

  # def password
  #   @password ||= BCrypt::Password.new(password_digest)
  #   binding.pry
  # end
  #
  # def password=(value)
  #   self.password_digest = BCrypt::Password.create(value)
  #   # @password = value
  # end


end
