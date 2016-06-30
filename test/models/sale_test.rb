# == Schema Information
#
# Table name: sales
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  is_public   :boolean
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SaleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
