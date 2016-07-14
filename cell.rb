class Cell
	def initialize(neighbors)
		@neighbors = neighbors
		@alive = false
	end

	# def check_neighbors

	# end

	def alive?
		if @neighbors.length < 2
			@alive = false
		elsif @neighbors.length > 3
			@alive = false
		elsif @neighbors == 3
			@alive = true
		end
	end
end
