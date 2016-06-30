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

class Sale < ActiveRecord::Base
	mount_uploader :image, SalesUploader
	scope :is_public, -> { where(is_public: true) }
end
