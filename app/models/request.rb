# == Schema Information
#
# Table name: requests
#
#  id          :integer          not null, primary key
#  product_id  :integer
#  buyer_id    :integer
#  owner_id    :integer
#  done        :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  exchange_id :integer
#

class Request < ActiveRecord::Base
	belongs_to :product
  belongs_to :exchange, :class_name => 'Product', :foreign_key => :exchange_id
end
