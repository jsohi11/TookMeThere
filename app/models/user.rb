class User < ActiveRecord::Base
	has_many :authorizations 

	def self.create_with_omniauth(info)
    create(name: info['name'])
  end
end
