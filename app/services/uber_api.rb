module UberApi

  def self.connect
    client = Uber::Client.new do |config|
      config.server_token  = ENV["uber_server_token"]
      config.client_id     = ENV["uber_client_id"]
      config.client_secret = ENV["uber_client_secret"]
    end
    return client
  end

  def self.connect_as_user(authorization)
    client = Uber::Client.new do |config|
      config.server_token  = ENV["uber_server_token"]
      config.client_id     = ENV["uber_server_token"]
      config.client_secret = ENV["uber_client_secret"]
      config.bearer_token  = authorization.oauth_token
    end
    return client
  end

  def self.get_history
  end

end