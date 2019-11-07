-- Title: TouchAndDrag
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays images that react to a person's finger

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- local Variables
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local yellowGirl = display.newImageRect("Images/yellowGirl.png", 150, 150)
local yellowGirlWidth = yellowGirl.width
local yellowGirlHeight = yellowGirl.height

local blueGirl = display.newImageRect("Images/blueGirl.png", 150, 150)
local blueGirlWidth = blueGirl.width
local blueGirlHeight = blueGirl.height

-- my boolean keep track of witch object object I touched first
local alreadyTouchedYellowGirl = false
local alreadyTouchedBlueGirl = false

-- ser the initial x and y position of my images
yellowGirl.x = 400
yellowGirl.y = 500

blueGirl.x = 300
blueGirl.y = 200

--blue gurl function
local function BlueGirl(touch)
	if (touch.phase == "began") then
		if (alreadyTouchedYellowGirl == false ) then
			alreadyTouchedBlueGirl = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedBlueGirl == true) ) then
		blueGirl.x = touch.x
		blueGirl.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedBlueGirl = false
		alreadyTouchedYellowGirl = false
	end
end

-- add the respective listeners to each object
blueGirl:addEventListener("touch", BlueGirlListener)