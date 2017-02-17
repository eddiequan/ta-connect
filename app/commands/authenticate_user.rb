class AuthenticateUser
  prepend SimpleCommand

  def initialize(utorid, password)
    @utorid = utorid
    @password = password
  end

  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_accessor :utorid, :password

  def user
    user = User.by_utorid(utorid)
    return user if user && user.authenticate(password)

    errors.add :user_authentication, 'invalid credentials'
    nil
  end
end
