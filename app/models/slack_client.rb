class SlackClient
  URL = "https://slack.com/api/chat.postMessage"

  def initialize(message)
    @payload = {
      token: ENV["SLACK_API_TOKEN"],
      channel: ENV["CHANNEL"],
      text: message,
      username: ENV["USER"],
    }
  end

  def post
    uri = URI.parse(URL)
    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true

    req = Net::HTTP::Post.new(uri.request_uri)
    req.body = @payload.to_param
    res = https.request(req)

    case res
    when Net::HTTPSuccess
      true
    else
      res.error!
    end
  end
end
