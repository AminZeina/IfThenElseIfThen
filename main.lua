-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by Amin Zeina
-- Created on Mar 2018
--
-- Tells the user if it is the weekend or not
-----------------------------------------------------------------------------------------

local dayEntered

local instructions = display.newText( 'Enter the day of the week:', display.contentCenterX, 200, native.systemFont, 128 )
instructions.id = "instructions"

local enterButton = display.newImageRect( './assets/sprites/clickButton.png', 650, 300 )
enterButton.x = 1500
enterButton.y = 600
enterButton.id = "Enter Button"

local dayTextField = native.newTextField( 600 , 600, 800, 250 )
dayTextField.id = "enter day of the week"

local function showWeekendText( event )
	-- show text saying it is a weekend 

	local weekendText = display.newText( 'It is the Weekend!', display.contentCenterX, 1000, native.systemFont, 128 )
end

local function onEnterClicked( event )
	-- decides if the day entered is a weekday or weekend

	local dayEntered = dayTextField.text

	if dayEntered == 'Saturday' or dayEntered == 'saturday' then 
		showWeekendText()
	elseif dayEntered == 'Sunday' or dayEntered == 'sunday' then 
		showWeekendText()
	else 
		local weekdayText = display.newText( 'It is a weekday', display.contentCenterX, 1000, native.systemFont, 128 )
	end
end

enterButton:addEventListener( 'touch', onEnterClicked )