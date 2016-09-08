class BaseController < ApplicationController


  # Display error response
  def error_response(response_code, message)
    render json: { response: 'Failure', response_code: response_code, message: message }
  end

  # Display success response
  def success_response(response_code, message)
    render json: { response: 'Success', response_code: response_code, message: message }
  end

end
