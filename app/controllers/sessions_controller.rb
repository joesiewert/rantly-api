class SessionsController < Devise::SessionsController
  respond_to :json

  def create
    super do |user|
      data = {
        id: user.id,
        email: user.email,
        token: user.authentication_token
      }
      render json: data, status: 201 and return
    end
  end
end
