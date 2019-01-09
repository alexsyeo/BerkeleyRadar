class StaticController < ApplicationController
	def index
		bathrooms = Bathroom.all
		@bathrooms = format_object(bathrooms).to_json.html_safe
		fountains = Fountain.all
		@fountains = format_object(fountains).to_json.html_safe
	end

	def format_object(model)
		return_arr = []
		model.each do |m|
			coord = {}
			coord[:lat] = m.coord_lat
			coord[:lng] = m.coord_lng
			new_dict = {}
			new_dict[:coords] = coord
			new_dict[:content] = m.content
			new_dict[:title] = m.title
			return_arr << new_dict
		end
		return return_arr
	end
end
