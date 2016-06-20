# == Schema Information
#
# Table name: reviews
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  company_name :string           default("")
#  email        :string           default("")
#  is_public    :boolean          default(FALSE)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
