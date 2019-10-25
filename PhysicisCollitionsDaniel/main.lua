-- Title: PhysicsAndCollisions
-- Name: Your Name
-- Course: ICS2O/3C
-- This program makes balls bounce

--------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()


-------------------------------------------------------------------------------------
-- OBJECTS
-------------------------------------------------------------------------------------------------

-- ground
local ground = display.newImage("Images/ground.png", 0, 0)

ground.x = display.contentWidth/2
ground.y = 750

-- change the width to be the same as the screen
ground.width = display.contentWidth

-- add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})
-------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--beam1
local beam1 = display.newImage("Images/beam.png", 0, 0)
-- set the x and y location of the ground
beam1.x = display.contentCenterX/5
beam1.y = display.contentCenterY*1.65
-- change the width to be half of the ipad width
beam1.width = display.contentWidth/2
beam1.height = display.contentHeight * 1/10
-- rotate the beam 60 degrees so angle
beam1:rotate(45)

-- sned it to the back layer
beam1:toBack()

-- add to physics
physics.addBody(beam1, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------------------

--beam1
local beam2 = display.newImage("Images/beam.png", 0, 0)
-- set the x and y location of the ground
beam2.x = 900
beam2.y = display.contentCenterY*1.65
-- change the width to be half of the ipad width
beam2.width = display.contentWidth/2
beam2.height = display.contentHeight * 1/10
-- rotate the beam 60 degrees so angle
beam2:rotate(-45)

-- sned it to the back layer
beam2:toBack()

-- add to physics
physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})

-------------------------------------------------------------------------------------------------------

-- background
local background = display.newImage("Images/bkg.png")

-- set the x and y postion
background.x = display.contentCenterX
background.y = display.contentCenterY

-- change the width and the height of the background
background.width = display.contentWidth
background.height = display.contentHeight

-- set to the back 
background:toBack()

------------------------------------------------------------------------------------
-- FUNCTION
---------------------------------------------------------------------------------

-- create the first ball
local function firstBall()
	-- creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)
	ball1:scale(0.5, 0.5)

	-- add to physics
	physics.addBody(ball1, {density=1.0, friction=0.1, bounce=0.5, radius=12.5})
end

local function secondBall()
	-- creating first ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball2, {density=1.0, friction=0.1, bounce=0.5, radius=25})
end

local function thirdBall()
	-- creating first ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)
	ball3:scale(2, 2)

	-- add to physics
	physics.addBody(ball3, {density=1.0, friction=0.1, bounce=0.5, radius=50})
end

local function forthBall()
	-- creating first ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)
	ball4:scale(3, 3)

	-- add to physics
	physics.addBody(ball4, {density=1.0, friction=0.1, bounce=0.5, radius=75})
end
-------------------------------------------------------------------------------
-- TIMERDELAYS - call each function after the given millisecond
-------------------------------------------------------------------------------------

timer.performWithDelay( 0, firstBall)
timer.performWithDelay( 500, secondBall)
timer.performWithDelay( 1000, thirdBall)
timer.performWithDelay( 1500, forthBall)
