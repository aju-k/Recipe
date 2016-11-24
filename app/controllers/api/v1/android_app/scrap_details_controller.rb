class Api::V1::AndroidApp::ScrapDetailsController < BaseController

  skip_before_filter :verify_authenticity_token

  def save_details
    if params.present?
      if BankDetail.select(:id).where(pincode: params[:pincode]).nil?
        params[:array].each do |record|
          BankDetail.create(pincode: params[:pincode], latitude: params[:latitude], longitude: params[:longitude],
                            status: record['status'], bank_name: record['bank_name'], address: record['address'])
        end
        render json: { response: 'Success' }
      else
        render json: { response: 'Pin already present' }
      end
    else
      render json: { response: 'Wrong parameters' }
    end
  end

end
