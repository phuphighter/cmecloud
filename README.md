CME Cloud
=========

Ruby library for the [Chicago Mercantile Exchange (CME) DataCloud API](http://www.cmedatacloud.com/)

## Try it out

Set up the configuration with your API Token/Username found [here](https://www.cmedatacloud.com/MyAccount/Tokens.aspx):    

    Cmecloud.configure do |config|
      config.username = "email@domain.com"
    end

Futures and Options Example:    

    response = Cmecloud::futures_and_options("GetLastFutureSettlement", {Exchange: "CME", ContractSymbol: "LEM2")  
    response.body["ArrayOfFutureSettlement"]["FutureSettlement"]["Settlements"]  
    
    => #<Hashie::Mash Settlement=#<Hashie::Mash BlockVolume="0" Delay="0" EFPVolume="0" EFRVolume="0" EFSVolume="0" EOOVolume="0" ElectronicVolume="0" FutureProductKeyId="1416" OPNTVolume="0" OpenInterest="0" OpenOutcryAndPNTVolume="0" OpenOutcryVolume="0" Outcome="Success" PNTVolume="0" Price="0" SUBVolume="0" SettlementDate="7/2/2012 12:00:00 AM" TASBlockVolume="0" TASVolume="0" TotalVolume="0">>  