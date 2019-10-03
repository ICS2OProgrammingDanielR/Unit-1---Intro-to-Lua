-- Title: TouchAndReact
-- Name: Your Name
-- Course: ICS2O/3C
-- This program does somthing when i click on a button

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