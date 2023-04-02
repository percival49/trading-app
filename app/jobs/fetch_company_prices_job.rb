class FetchCompanyPricesJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

    company = Company.find(company_id)

    company.prices = PriceService.fetch_prices(company.ticker)
    company.save!
  end
end
