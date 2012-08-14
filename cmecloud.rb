require 'faraday_middleware'
require 'hashie/mash'
require 'multi_xml'

module Cmecloud
  module Connection
    def connection
      @connection ||= Faraday.new('http://ws.cmedatacloud.com/v1/') do |conn|
        conn.request  :url_encoded
        conn.response :mashify
        conn.response :xml, content_type: 'application/xml'
        conn.adapter  Faraday.default_adapter
      end
    end

    def get(path, params = nil)
      connection.get(path) do |request|
        request.params.update(params) if params
      end
    end
  end

  module ApiMethods
    def futures_and_options(operation, *args)
      get("CMEFuturesAndOptions.asmx/#{operation}", *args)
    end
    
    def credit_default_swaps(operation, *args)
      get("CMECreditDefaultSwaps.asmx/#{operation}", *args)
    end
    
    def interest_rate_swaps(operation, *args)
      get("CMEInterestRateSwaps.asmx/#{operation}", *args)
    end
    
    def otc_global_trades_and_quotes(operation, *args)
      get("OTCGlobalTradesAndQuotes.asmx/#{operation}", *args)
    end
  end

  extend Connection
  extend ApiMethods
end