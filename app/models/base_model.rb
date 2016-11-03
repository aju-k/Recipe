class BaseModel < ActiveRecord::Base

  class << self

    def secure_compare(db_token, request_token)
      return false if db_token.blank? || request_token.blank? || db_token.bytesize != request_token.bytesize
      res = 0;
      l = request_token.unpack "C#{request_token.bytesize}"
      db_token.each_byte { |byte| res |= byte ^ l.shift }
      res==0 ? true : false
    end


  end

end