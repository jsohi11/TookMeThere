# == Schema Information
#
# Table name: countries
#
#  id                        :integer          not null, primary key
#  country_name              :string
#  country_badge_visisted    :string
#  country_badge_not_visited :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  visited                   :boolean
#

require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
