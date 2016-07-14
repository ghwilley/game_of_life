require_relative 'world'
require_relative 'cell'
dimensions = gets.chomp
live_cells = 0
world = World.new(dimensions, live_cells)

world.generate_board

