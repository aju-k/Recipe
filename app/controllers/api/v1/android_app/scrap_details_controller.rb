class Api::V1::AndroidApp::ScrapDetailsController < BaseController

  skip_before_filter :verify_authenticity_token

  def save_details
    if params.present?
      # params[:array].each do |record|
      #   data = JSON.parse(record)
      #   puts data
      # end
      params[:array].each do |record|
        BankDetail.create(pincode: params[:pincode], latitude: params[:latitude], longitude: params[:longitude],
                          status: record['status'], bank_name: record['bank_name'], address: record['address'])
      end

      render json: { response: 'Success' }
    end
  end

end
