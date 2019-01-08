class StaticController < ApplicationController
	def index
		@bathrooms = Bathroom.all
		@fountains = Fountain.all
	end
end
