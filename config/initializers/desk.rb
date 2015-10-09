class DeskClient
  def self.setup
    Desk.configure do |config|
      config.support_email = ENV["desk_support_email"]
      config.subdomain = ENV["desk_subdomain"]
      config.consumer_key = ENV["desk_consumer_key"]
      config.consumer_secret = ENV["desk_consumer_secret"]
      config.oauth_token = ENV["desk_oauth_token"]
      config.oauth_token_secret = ENV["desk_oauth_token_secret"]
      config.logger = Logger.new(STDOUT)
    end
  end
end

DeskClient.setup
