module UberApi

	# def self.connect
	# 	client = Uber::Client.new do |config|
	# 		config.server_token = ENV['uber_server_token']
	# 		config.uber_client_id = ENV['uber_client_secret']
	# 		config.uber_client_secret = ENV['uber_client_id']
	# 	end
	# 	return client
	# end

	# def self.connect_as_user(auth_token)
	# 	client = Uber::Client.new do |config|
	# 		config.server_token = ENV['uber_server_token']
	# 		config.uber_client_id = ENV['uber_client_secret']
	# 		config.uber_client_secret = ENV['uber_client_id']
	# 		config.bearer_token = authorization.oauth_token
	# 	end
	# 	binding.pry
	# 	return client 
	# end

	# def self.get_history
	# end

	def self.get_name(user)
		auth = user.authorizations.where(provider: "uber").first
		connect = UberApi::Client.new(auth.oauth_token)
		user = connect.user(auth.uid)
		return user ["name"]
	end

end
