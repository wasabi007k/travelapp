class MapApi < ApplicationRecord
    # 変数を初期化
    def initialize(schedule_param)
        @schedule_param = schedule_param
    end
    
    def uri
        # フォームから飛んできた住所をエスケープして変数に格納
        d_address = URI.encode_www_form({d_address: @schedule_param})
        a_address = URI.encode_www_form({a_address: @schedule_param})
        # Geocoding APIを叩く
        URI.parse("https://maps.googleapis.com/maps/api/directions/json?origin=#{d_address}&destination=#{a_address}&key=AIzaSyAhijDhCRPrT1XrK8ygyqMZsCzIWSdqpow")
    end

    def result
        # 返ってきたJSONをパースしてapi_response という変数に格納
        api_response = Net::HTTP.get_response(uri)
        response_body = JSON.parse(api_response.body)
        
    end
end
