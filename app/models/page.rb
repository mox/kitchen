class Page < ActiveRecord::Base
	scope :about, -> { where(slug: "about") }
	scope :shipping, -> { where(slug: "shipping") }
	scope :rules, -> { where(slug: "rules") }

	def self.first
		first
	end

end
