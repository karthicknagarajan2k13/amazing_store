module ApplicationHelper
	def get_product(id)
		Product.find_by_id(id)
	end
end
