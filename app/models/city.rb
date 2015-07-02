# == Schema Information
#
# Table name: cities
#
#  id         :integer          not null, primary key
#  city_name  :string
#  visited    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class City < ActiveRecord::Base

end
