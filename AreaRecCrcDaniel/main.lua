-- Title: AreaOfRectangleAndCircle
-- Name: Your Name
-- Course: ICS2O/3C
-- This program show the area of a rectangle and a circle

-- create local varibles
local areaText
local textSize = 50
local myRect
local widthOfRect = 350
local heightOfRect = 200
local AreaOfRectangleAndCircle

-- set the background clor
display.setDefault("background", 69/255, 69/255, 69/255)

-- hide status bar
display.setStatusBar(display.HiddenStatusBar)

-- draw the rect 
myRect = display.newRect(0, 0, widthOfRect, heightOfRect)

-- anchor the rect in the top left corner of screen and sets its (x,y) position
myRect.anchorX = 0
myRect.anchorY = 0
myRect.x = 20
myRect.y = 20

-- set the width of the border
myRect.strokeWidth = 20

-- set the color of the rect
myRect:setFillColor(0.69, 4.20, 0.69)

-- set the color of the border
myRect:setStrokeColor(0, 0, 0)

-- calculate area
areaOfRect = widthOfRect * heightOfRect

-- write the area on the creen 
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRect .. " and a height of " .. heightOfRect .. " is " ..
	areaOfRect .. " pixels².", 0, 0, Ariel, textSize)

-- anchor text
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set clor of text
areaText:setTextColor(1, 1, 1)