class World
	attr_reader :dimensions, :board
	def initialize(dimensions, live_cells)
		@live_cells = live_cells
		@dimensions = dimensions
		@board = Array.new(dimensions.to_i) { ". " * dimensions.to_i  }
	end

	def inject_life
		
	end

	def generate_board
		puts @board.join("\n")
	end


end

