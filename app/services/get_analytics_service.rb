class GetAnalyticsService
  def call
    client = BrandAnalyticsClient.new(Rails.application.credentials.access_token)
    client.data_get.dig("data", "1").each do |key, value|
      HeinzDatum.where(date: key).first_or_create(count: value)
    end
  end
end
