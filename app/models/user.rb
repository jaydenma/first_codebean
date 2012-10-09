# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  email_regex = /^([0-9a-zA-Z]([-+\.\w]*[0-9a-zA-Z])*@([0-9a-zA-Z][-+\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,9})$/i
  
  validates :name,  :presence => true,
  									:length   => { :maximum => 50 }
  validates :email, :presence   => true,
  									:format		  => { :with => email_regex },
  									:uniqueness => { :case_sensitive => false }
end
