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

class Slider < ActiveRecord::Base
	mount_uploader :image_url, SlideUploader
	scope :is_public, -> { where(is_public: true) }

end
