-- Title: NumericTextFields
-- Name: Your Name
-- Course: ICS2O/3C
-- This program displays a math question and asks th user to answer in a numeric textfield.
--------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- set the background color
display.setDefault("background", 255/255, 102/255, 255/255)

--------------------------------------------------------------------------
-- LOCAL VARIALES
--------------------------------------------------------------------------

-- create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer
local pointsCount = 0
local livesCount = 3
local pointsText
local totalSeconds = 10 
local secondsLeft = 10
local randomOperator

---------------------------------------------------------------------------------
-- SOUNDS
------------------------------------------------------------------------------

local correctSound = audio.loadSound( "Sounds/correctSound.mp3" )
local correctSoundChannel

--------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 15)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in the text object
	questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "
end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""
	
	elseif ( event.phase == "submitted" ) then

		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the user's answer and the correct answer are the same
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			timer.performWithDelay(2000, HideCorrect)
			event.target.text = ""
		end
	end
end


local function HideIncorrect()
	incorrectObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""
	
	elseif ( event.phase == "submitted" ) then

		-- when the answer is submitted (enter key is pressed) set user input to user's answer
		userAnswer = tonumber(event.target.text)

		-- if the user's answer and the correct answer is the same
		if  (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			timer.performWithDelay(2000, HideCorrect)
			event.target.text = ""
	    end
	end
end

local function AskQuestion()
	-- generate a random number between 1 and 2
	randomOperator = math.random(1,2,3)

	-- if the random operator is 1 do addition
	if (randomOperator == 1) then

		-- calculate the correct answer
		correctAnswer = randomNumber1 - randomNumber2

		-- create question in text object
	    questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "
	    
	-- if 2 multiplication
	elseif (randomOperator == 2) then
        -- calculate the correct answer
        correctAnswer = randomNumber1 * randomNumber2

        -- create question in text object
        questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
    -- if 3 divition
    elseif ( randomOperator == 3) then
    	-- calculate the correct answer
        correctAnswer = randomNumber1 / randomNumber2

        -- create question in text object
        questionObject.text = randomNumber1 .. " / " .. randomNumber2 .. " = "
    end
end


--------------------------------------------------------------------------
-- OBJECT CREATION
--------------------------------------------------------------------------

-- displays a question and sets the color
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(0/255, 128/255, 255/255)

-- create the correct text objest and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
correctObject:setTextColor(0/255, 128/255, 255/255)
correctObject.isVisible = false

-- Create a numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

-- displays a question and sets the color
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(0/255, 128/255, 255/255)

-- create the correct text objest and make it invisible
incorrectObject = display.newText( "Incorrect!", display.contentWidth/2, display.contentHeight*2/3, nil, 50 )
incorrectObject:setTextColor(0/255, 128/255, 255/255)
incorrectObject.isVisible = false

-- Create a numeric field
numericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80 )

-- add the event listener for the numeric field
numericField:addEventListener( "userInput", NumericFieldListener )

-- display the amount of points as a text object
pointsText = display.newText("Points = " .. pointsCount, 850, 50, nil, 50)

-- display the amount of points as a text object
pointsText = display.newText("Lives left = " .. livesCount, 150, 50, nil, 50)

--------------------------------------------------------------------------
-- FUNCTION CALLS
--------------------------------------------------------------------------

-- call the function to ask the question
AskQuestion()