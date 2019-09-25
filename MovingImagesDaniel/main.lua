-- Title: MovingObjects
-- Name: Your Name
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade out.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3
-- background image with the width and height
local backgroundImage = display.newImageRect("Image/background.png", 2048, 1536)

-- character image with width and height
local beetleship = displaynewImageRect("Images/beetleship.png", 200, 200)

-- set the image to be transparent
betleship.alpha = 0 

-- set the initial x and y position of beetleship
beetleship.x = 0
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: this function accepts an event listener
-- Output: none 
-- Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	-- add the scroll speed to the x-value of the ship
	beetleship.x = bettleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves so that it fades out
	bettleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)