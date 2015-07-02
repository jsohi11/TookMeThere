# == Schema Information
#
# Table name: trips
#
#  id         :integer          not null, primary key
#  start_city :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Trip < ActiveRecord::Base

end
