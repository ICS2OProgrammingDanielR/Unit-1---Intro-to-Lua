-- Name: Your Name
-- Course: ICS2O/3C
-- This program places a random object on the screen increase score by one 

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

---------------------------------------------------------------------------
-- LOCAL VARIBLE
---------------------------------------------------------------------------------------
local background
local youWin
local mole
local pointsText
local points = 1
local hit = audio.loadSound( "Sound/hitSound.MP3" )
local hitChannel = audio.play (hit)
local backgroundSound = audio.loadSound( "Sound/background.MP3" )
local backgroundSoundChannel = audio.play( backgroundSound )

-----------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
---------------------------------------------------------------------------------
-- this changes the location of the mole and makes it pop up
function PopUp()
	-- choosing random postions on the screen between the screen limits
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

	-- mole see mole do
    mole.isVisible = true

    -- hides mole
    timer.performWithDelay(1000, HideMole)
end

-- calls pop up fuction after 3 seconds
function PopUpDelay()
	timer.performWithDelay(1000, PopUp)
end

-- start da game
function GameStart()
	PopUpDelay()
end


-- start game
function GameStart()
	PopUpDelay()
	EndGame()
end

-- make mole invis and make pop up
function HideMole()
	mole.isVisible = false
	timer.performWithDelay(1000, PopUpDelay)
end

-- increase the amount of points everytime the mole is clicked
function Whacked( event )
	
	if(event.phase == "began")then

		points = points + 1

		pointsText.text = "WHACKS! = " .. points
        hitSoundChannel = audio.play( hitSound )
end     end

function EndGame()

	if(points == 20 )then
		mole.isVisible = false
		audio.stop(backgroundSoundChannel)
	end
end

-------------------------------------------------------------------------------------------------------------------------------------------------
-- OBJECT CREATION
---------------------------------------------------------------------------------------------------------------------

-- create the background
background = display.newRect( 200/255, 67/255, 15/255, display.contentWidth, display.contentHeight)

-- set background color
display.setDefault("background",  0/255, 153/255, 153/255)

-- position
background.anchorX = 0
background.anchorY = 0
background.x = 0
background.y = 0

-- create the noah bricks
mole = display.newImage( "Images/mole.png", 0, 0)

-- set position
mole.x = display.contentCenterX
mole.y = display.contentCenterY
mole:scale(0.50, 0.50)
mole.isVisible = false

-- display the ammount of WHACKS!
pointsText = display.newText("WHACKS! = " .. points, 800, 20, nil, 50)
pointsText:setTextColor(229/255, 101/255, 243/255)

-- create you win
youwin = display.newImageRect("Image/youwin.png", 0, 0)

-------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------

-- when noah bricks touched fuction is called
mole:addEventListener( "touch", Whacked )

-- start game
GameStart()