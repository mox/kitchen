# == Schema Information
#
# Table name: sliders
#
#  id         :integer          not null, primary key
#  name       :string
#  image_url  :string
#  is_public  :boolean
#  weight     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class SliderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
