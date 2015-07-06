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
		uid = auth['uid']
		first_name = auth['info']['first_name']
		last_name = auth['info']['last_name']
		picture = auth['info']['picture']
		email = auth['info']['email']
    	create(uid: uid, first_name: first_name, last_name: last_name, picture: picture, email: email)
  	end
end

