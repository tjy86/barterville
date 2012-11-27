# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password_digest :string(255)
#  photo           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  email           :string(255)
#

class User < ActiveRecord::Base
	has_secure_password
	has_many :products
  	mount_uploader :photo, PhotoUploader

end
