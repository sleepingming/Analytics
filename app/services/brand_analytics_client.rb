require 'rest-client'
require 'json'

class BrandAnalyticsClient

  #URL = 'https://bans-api.br-analytics.ru/ba_api/feed.messages?themeId=12489954&filter[ft][1]&filter[ftone][1]=on&timeFrom=1659981754&timeTo=1662660154&offset=0'
  #URL = 'https://bans-api.br-analytics.ru/ba_api/statistic.topStatRegionTone?themeId=12489954&df=2022-08-08 00:00&dt=2022-09-08 23:59&filter[ft][1]=on'
  #URL = 'https://bans-api.br-analytics.ru/ba_api/statistic.topStatTone?themeId=12489954&df=2022-08-08 00:00&dt=2022-09-08 23:59&filter[ft][1]=on'
  #URL = 'https://bans-api.br-analytics.ru/ba_api/statistic.dateline?themeId=12489954&df=2022-08-08 00:00&dt=2022-09-08 23:59&filter[ft][1]'
  URL = 'https://bans-api.br-analytics.ru/ba_api/statistic.dateLineTone?themeId=12489954&df=2022-08-08 00:00&dt=2022-09-08 23:59&filter[ft][1]=on'

  def initialize(token)
    @token = token
  end

  def data_get
    response = RestClient.get URL, { params: { access_token: @token }, content_type: :json, accept: :json }
    JSON.parse(response.body)
  end
end
