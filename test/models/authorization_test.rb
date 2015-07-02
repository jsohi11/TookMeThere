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

require 'test_helper'

class AuthorizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
