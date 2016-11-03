class BaseApiController < BaseController

  respond_to :json

  def request_authentication
    if params[:request_authentication_token].present? && params[:devise_id].present?


    end
  end

end
