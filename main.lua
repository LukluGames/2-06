-----------------------------------------------------------------------------------------
--
-- how to calculate the area of a square
-- 
-----------------------------------------------------------------------------------------

local lengthOfSquareTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 150, 75 )
lengthOfSquareTextField.id = "length textField"

local areaOfSquareTextField = display.newText( "Press ball to calculate", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 32 )
areaOfSquareTextField.id = "area textField"
areaOfSquareTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/ball.png", 157, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local lengthOfSquare
    local areaOfSquare
 
    lengthOfSquare = lengthOfSquareTextField.text
    areaOfSquare = lengthOfSquare * lengthOfSquare
    -- print( areaOfSquare )
    areaOfSquareTextField.text = "The area is " .. areaOfSquare

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )