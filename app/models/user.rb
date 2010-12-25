# == Schema Information
# Schema version: 20101225050619
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  mailable   :boolean
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :mailable
  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :name, :presence     => true,
                   :length       => { :maximum => 50 }
  
  validates :email, :presence    => true                 ,
                    :format      => { :with => email_regex },
                    :uniqueness  => { :case_sensitive => false }
  
  validates :mailable, :presence => true
end
