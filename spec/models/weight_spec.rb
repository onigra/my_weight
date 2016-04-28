# == Schema Information
#
# Table name: weights
#
#  id         :integer          not null, primary key
#  weight     :decimal(10, 4)   not null
#  created_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Weight, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
