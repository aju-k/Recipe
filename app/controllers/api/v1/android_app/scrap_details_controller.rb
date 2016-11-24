class Api::V1::AndroidApp::ScrapDetailsController < BaseController

  skip_before_filter :verify_authenticity_token

  def save_details
    if params[:array].present?
      # params[:array].each do |record|
      #   data = JSON.parse(record)
      #   puts data
      # end
      BankDetails.create(pincode: params[:pincode], latitude: params[:latitude], longitude: params[:longitude])
      render nothing: true
    end
  end

end
