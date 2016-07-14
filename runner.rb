require_relative 'world'
puts "dimensions: "
dimensions = gets.chomp
live_cells = 0
puts "generations: "
generations = gets.chomp
world = World.new(dimensions, live_cells, generations)

world.generate_board

