CME Cloud
=========

Ruby library for the [Chicago Mercantile Exchange (CME) DataCloud API](http://www.cmedatacloud.com/)

## Try it out

Futures and Options:    

    response = Cmecloud::futures_and_options("GetLastFutureSettlement", {Exchange: "CME", ContractSymbol: "LEM2", Header_Username: "email@domain.com"})