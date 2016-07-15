class Cell
	attr_reader :x, :y
	def initialize(world, x, y)
		@world = world
		@alive = false
	end


	def neighbors
    neighbors = []
    neighbors << @world.cell_at(self.x - 1, self.y - 1)
    neighbors << @world.cell_at(self.x - 1, self.y)
    neighbors << @world.cell_at(self.x - 1, self.y + 1)

    neighbors << @world.cell_at(self.x, self.y - 1)
    neighbors << @world.cell_at(self.x, self.y + 1)

    neighbors << @world.cell_at(self.x + 1, self.y - 1)
    neighbors << @world.cell_at(self.x + 1, self.y)
    neighbors << @world.cell_at(self.x + 1, self.y + 1)

    neighbors
  end

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
