-- Title: AreaOfRectangleAndCircle
-- Name: Daniel Raissi
-- Course: ICS2O/3C
-- This program...

-- create my local variables
local areaText
local textSize = 50
local myRectangle
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200

--set background color of my screen
display.setDefault ("background", 203/255, 254/255, 254/255)

--remove status bar
display.setStatusBar (display.HiddenStatusBar)

-- draw the rectangle that is half the width and height of the screen siz
myRectangle = display.newRect(0,0, widthOfRectangle, heightOfRectangle)

-- anchor the rectangle in the top left corner of the screen and sets its (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the border
myRectangle.strokeWidth = 20

-- set the color of the rectangle
myRectangle:setFillColor(20/255, 20/255, 20/255)

-- set the color of the border
myRectangle:setStrokeColor(0, 0, 0)