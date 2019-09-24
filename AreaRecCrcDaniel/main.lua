-- Title: AreaOfRectangleAndCircle
-- Name: Daniel Raissi
-- Course: ICS2O/3C
-- This program displays a Circle and a Rectangle whith their Area

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
myRectangle:setFillColor(255/255, 255/255, 255/255)

-- set the color of the border
myRectangle:setStrokeColor(0, 0, 0)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on the screen. Take into consideration the size of the font when positioing it on the screen
areaText = display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and a height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x,y) position
areaText.anchorX = 0
areaText.anchorY =0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the color of the newText
areaText:setTextColor(0, 0, 0)

-- create my local variables
local areaText
local textSize = 50
local myCircle
local myCircle
local widthOfCircle = 350
local heightOfCircle = 200
