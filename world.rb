require_relative 'cell'

class World
	attr_reader :dimensions, :board
	def initialize(dimensions, live_cells, generations)
		@live_cells = live_cells
		@dimensions = dimensions
		@board = Array.new(dimensions.to_i) { ". " * dimensions.to_i  }
	end

	def inject_life
		until @live_cells <= 0
			@board[rand(dimensions)] = Cell.new()

			@live_cells -= 1
		end
		
	end

	def gen_live_cells
		@board.each do |cell|  
			if cell.alive?
				cell = "x "
		end
	end


	def generate_board
		puts @board.join("\n")
	end


end

