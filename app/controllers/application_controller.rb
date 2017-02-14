class ApplicationController < ActionController::API
  # TODO: TURN THIS BACK ON
  # before_action :authenticate_request

  attr_reader :current_user

  # MAY NOT NEED THIS
  include ActionController::Helpers
  helper_method :current_user

  private

  def authenticate_request
    @current_user = AuthenticateApiRequest.call(request.headers).result

    render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end
end
