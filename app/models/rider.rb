# == Schema Information
#
# Table name: riders
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  picture    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rider < ActiveRecord::Base


end
