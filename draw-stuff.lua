function draw_paddle()
	local offset = 25
	local height = 50
	local width = height * 2
	love.graphics.setColor(255, 0, 255)
	love.graphics.rectangle("fill", 50, paddle.b:getY(), height, width)
end

function draw_ball()
	love.graphics.setColor(255, 255, 255)
	love.graphics.circle("fill", ball.b:getX(), ball.b:getY(), ball.s:getRadius())
end