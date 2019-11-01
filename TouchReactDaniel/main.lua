-- Title: TouchAndReact
-- Name: Your Name
-- Course: ICS2O/3C
-- This program does somthing when click on a button

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

--set backgroud color
display.setDefault ("background", 0/255, 153/255, 153/255)

-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

-- create text object, set its position 
local textObject = display.newText("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (0.69, 4.20, 0.69)
textObject.isVisible = false



local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
    end

    if (touch.phase == "ended") then
    	blueButton.isVisible = true
    	redButton.isVisible = false
    	textObject.isVisible = false
    end
end


local function RedButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = true
		redButton.isVisible = false
		textObject.isVisible = false
    end

    if (touch.phase == "ended") then
    	blueButton.isVisible = false
    	redButton.isVisible = true
    	textObject.isVisible = true
    end
end

-- add the rep listener to each object
blueButton:addEventListener("touch", BlueButtonListener)
redButton:addEventListener("touch", RedButtonListener)