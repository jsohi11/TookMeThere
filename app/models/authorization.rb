# == Schema Information
#
# Table name: authorizations
#
#  id               :integer          not null, primary key
#  provider         :string
#  uid              :string
#  user_id          :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  oauth_token      :string
#  oauth_expires_at :datetime
#  expires          :boolean
#  picture          :string
#  email            :string
#  first_name       :string
#  last_name        :string
#

class Authorization < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :user_id, :uid, :provider
	validates_uniqueness_of :uid, :scope => :provider

  def self.find_with_omniauth(auth)
    find_by(uid: auth['uid'], provider: auth['provider'])
  end

  def self.create_with_omniauth(auth)
    create(uid: auth['uid'], provider: auth['provider'])
    case auth['provider']
    when "uber"
      create(uid: auth['uid'], provider: auth['provider'],  picture: auth['info']['picture'], email: auth['info']['email'], first_name: auth['info']['first_name'], last_name: auth['info']['last_name'], oauth_token: auth['credentials']['token'], oauth_expires_at: auth['credentials']['expires_at'], expires: auth['credentials']['expires'])
    when "google_oauth2"
      create(uid: auth['uid'], provider: auth['provider'],  picture: auth['info']['image'], email: auth['info']['email'], first_name: auth['info']['first_name'], last_name: auth['info']['last_name'], oauth_token: auth['credentials']['token'] )
    else
      puts "nothing"
    end
  end

  def uber_auth(auth)
    create(uid: auth['uid'], provider: auth['provider'],  picture: auth['info']['picture'], email: auth['info']['email'], first_name: auth['info']['first_name'], last_name: auth['info']['last_name'], oauth_token: auth['credentials']['token'], oauth_expires_at: auth['credentials']['expires_at'], expires: auth['credentials']['expires'])
  end
 
  def google_auth(auth)
  end
	
end
