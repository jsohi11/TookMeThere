# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
	has_many :authorizations 

	def self.create_with_omniauth(auth)
		name = auth['info']['first_name']
    	create(name: name)
  	end
end
