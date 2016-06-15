module ProductsHelper

	def is_new(product)
		return "entry-is-new" if product.is_new?
	end

	def is_hot(product)
		return "entry-is-hot" if product.is_hot?
	end

	def is_sale(product)
		return "entry-is-sale" if product.is_sale?
	end
end
