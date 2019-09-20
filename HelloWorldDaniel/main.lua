-- Title:  HelloWorld
-- Name:  Daniel
-- Course:  ICS2O
-- This program displays Helloe to the simulator and to the command terminal.
-- and to the command terminal

-- print to the command terminal
print ("Hello World")
print ("OK Goodbye")

--hide the stadus bar
display.setStatusBar (display.HiddenStatusBar)

-- Change the color of the backfround
display.setDefault ("background" , 0/255, 255/255, 255/255)

-- create a text object
local textObject

-- make the text object display my name
textObject = display.newText ("Hello Daniel!", display.contentWidth/2, display.contentHeight/2, "Above The Sky", 50)

--change the text color
textObject:setTextColor (0/255, 0/255, 0/255)

--new local varible (textObjectSignature)
local textObjectSignature

--Make the text display (by Daniel)
textObjectSignature = display.newText ("By: Daniel Raissi", display.contentWidth/2, 500, nil, 40)

--Make the text object color different
textObjectSignature:setTextColor (0/255, 0/255, 0/255)