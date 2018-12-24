module ApplicationHelper
	def categories
		Spree::Taxonomy.find_by(name: 'Categories').root.children
	end
end
