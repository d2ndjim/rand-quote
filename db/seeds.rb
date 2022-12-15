require 'rest-client'

fetched_data = RestClient::Request.execute(method: :get,
                                       url: "https://type.fit/api/quotes")
                                       
data = JSON.parse(fetched_data)
data.each do |quote|
  Quote.create(text: quote[:text], author: quote[:author])
end