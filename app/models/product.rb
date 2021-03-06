# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  photo       :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
	belongs_to :user
	has_many :requests
  	mount_uploader :photo, PhotoUploader

    def self.text_search(query)
       self.where("name @@ :q or description @@ :q", :q => query)
  	end

end
