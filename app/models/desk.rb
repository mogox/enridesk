require 'simple_oauth'

class Desk
  def initialize
    Faraday::Request.register_middleware :desk_oauth  => lambda { DeskOAuth }
  end

  def connection
    @conn ||= Faraday.new(url: 'https://emogollan.desk.com') do |faraday|
      faraday.request :json
      faraday.request :desk_oauth

      faraday.response :json, :content_type => /\bjson$/

      faraday.use :instrumentation
      faraday.adapter Faraday.default_adapter
    end
  end
end


class DeskOAuth < Faraday::Middleware
  def initialize(env)
    super(env)
  end

  def call(env)
    env[:request_headers]['Authorization'] = oauth(env).to_s
    @app.call env
  end

  private

  def oauth(env)
    SimpleOAuth::Header.new env[:method], env[:url].to_s, {}, DeskClient.config_options
  end
end
