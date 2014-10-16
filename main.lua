require "objects"
require "draw-stuff"

function love.load()
	world = love.physics.newWorld(-200, 0, true)

	gen_ball()
end

function love.update(dt)
	world:update(dt)
	gen_paddle()
end

function love.draw()
	draw_paddle()
	draw_ball()
end