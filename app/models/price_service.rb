class PriceService
    def self.fetch_prices(ticker)
        timeseries = client.
        stock(symbol: ticker)
        .timeseries(adjusted: true, outputsize: 'full')
        .output["Time Series (Daily)"]
        .map{ |k, v\}
    end

    def self.client
        @client ||= Alphavantage::Client.new( key: "OOSGWQH54M1W1WJL")
    end

end