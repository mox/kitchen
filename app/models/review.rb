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

class Review < ActiveRecord::Base

	scope :is_public, -> { where(is_public: true) }
	
end
