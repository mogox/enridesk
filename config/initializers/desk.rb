class DeskClient
  def self.config_options
    {
      consumer_key: ENV["desk_consumer_key"],
      consumer_secret: ENV["desk_consumer_secret"],
      token: ENV["desk_oauth_token"],
      token_secret: ENV["desk_oauth_token_secret"],
    }
  end
end
