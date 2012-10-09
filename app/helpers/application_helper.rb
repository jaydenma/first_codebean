module ApplicationHelper

	def logo
		image_tag("Logo.png", :alt => "Logo", :class => "round", :size => "100x100")
	end
end
