function gen_ball()
	ball = {}
	ball.b = love.physics.newBody(world, love.window.getWidth() / 2, love.window.getHeight() / 2, "dynamic")
	ball.b:setMass(10)
	ball.s = love.physics.newCircleShape(12.5)
	ball.f = love.physics.newFixture(ball.b, ball.s)
	ball.f:setRestitution(1)
	ball.f:setUserData("pong")
end

function gen_paddle()
	paddle = {}
	paddle.b = love.physics.newBody(world, 25, love.mouse.getY(), "static")
	paddle.s = love.physics.newRectangleShape(50, love.mouse.getY())
	paddle.f = love.physics.newFixture(paddle.b, paddle.s)
	paddle.f:setUserData("paddle")
end