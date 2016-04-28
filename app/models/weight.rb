# == Schema Information
#
# Table name: weights
#
#  id         :integer          not null, primary key
#  weight     :decimal(10, 4)   not null
#  created_at :datetime         not null
#

class Weight < ActiveRecord::Base
end
