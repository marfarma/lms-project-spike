# == Schema Information
# Schema version: 20101225050619
#
# Table name: lessons
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Lesson < ActiveRecord::Base
  attr_accessible :title, :description
end
