# == Schema Information
#
# Table name: requests
#
#  id         :integer          not null, primary key
#  product_id :integer
#  buyer_id   :integer
#  owner_id   :integer
#  done       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Request < ActiveRecord::Base
	belongs_to :product
end
