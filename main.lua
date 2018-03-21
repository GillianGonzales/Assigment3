-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created By Gillian Gonzales
-- Created On March 09 2018
--
-- This program will calculate the price for pizza
-----------------------------------------------------------------------------------------

--Making Varables
local topping1 = "1"
local topping2 = "2"
local topping3 = "3"
local topping4 = "4"
local large 
local extraLarge 
local subTotal
local taxes
local totalPrice
local userTopping
local userSize
local HTS

-- Change background colour
display.setDefault( "background", 1, 1, 1 )

--Importing Text
--Text above text field
local toppingText = display.newText("Type in the amount of topppings", 550, 50, native.systemFont, 75)
toppingText:setFillColor( 0, 0, 0 )
toppingText.id = "Instruction for topppings"


--The cost text
local subTotalText = display.newText("Subtotal :", 290, 900, native.systemFont, 75 )
subTotalText:setFillColor( 0, 0, 0 )
subTotalText.id = "The Subtotal"

local taxesText = display.newText("Taxes :", 280, 1000, native.systemFont, 75 )
taxesText:setFillColor( 0, 0, 0 )
taxesText.id = "The Taxes"

local totalPriceText = display.newText("Total cost :",  460, 1100, native.systemFont, 100)
totalPriceText:setFillColor( 0, 0, 0)
totalPriceText.id  = "The Total Cost"


--Labeling Buttons
local largeButton = display.newText("Large", 200, 450, native.systemFont, 75 )
largeButton:setFillColor( 0, 0, 0 )
largeButton.id = "Large Button Text"

local extraLargeButton = display.newText("ExtraLarge", 700,  450, native.systemFont, 75 )
extraLargeButton:setFillColor( 0, 0, 0)
extraLargeButton.id = "ExtraLarge Button Text"


--The Prce menu
local pricesText = display.newText("Prices", 1600, 200, native.systemFont, 100 )
pricesText:setFillColor( 0, 0, 0 )
pricesText.id = "Prices Heading"

local topping1Text = display.newText("1 topping cost $1", 1600, 350, native.systemFont, 75 )
topping1Text:setFillColor ( 0, 0, 0 )
topping1Text.id = "Topping 1 price"

local topping2Text = display.newText("2 toppings cost $1.75", 1600,450, native.systemFont, 75)
topping2Text:setFillColor ( 0, 0, 0 )
topping2Text.id = "Topping 2 price"

local topping3Text = display.newText("3 toppings cost $2.50", 1600,550, native.systemFont, 75)
topping3Text:setFillColor ( 0, 0, 0 )
topping3Text.id = "Topping 3 price"

local topping4Text = display.newText("4 toppings cost $3.35", 1600,650, native.systemFont, 75)
topping4Text:setFillColor ( 0, 0, 0 )
topping4Text.id = "Topping 4 price"

local largeText = display.newText("Large cost $6", 1600, 850, native.systemFont, 75)
largeText:setFillColor ( 0, 0, 0 )
largeText,id = "Large size price"

local extraLargeText = display.newText("ExtraLarge cost $10", 1600 , 950 , native.systemFont, 75 )
extraLargeText:setFillColor ( 0 , 0, 0 )
extraLargeText.id = "Extra Large size price"


--Importing TextField
local topppingField = native.newTextField( display.contentCenterX - 700, display.contentCenterY - 600, 600, 110 )
topppingField.id = "Toppping User Input"


--Importing Image
local calculateButtonLarge = display.newImageRect("./Assets/sprites/ButtonA.png", 406, 157)
calculateButtonLarge.x = display.contentCenterX - 800
calculateButtonLarge.y = display.contentCenterY - 100
calculateButtonLarge.id = "Large Function Button"

local calculateButtonExtraLarge = display.newImageRect("./Assets/sprites/ButtonB.png", 406, 157)
calculateButtonExtraLarge.x = display.contentCenterX - 300
calculateButtonExtraLarge.y = display.contentCenterY - 100
calculateButtonExtraLarge.id =  "Extra Large Funtion Buttom"


-- Making Funtions
local function calculatePriceTouchLarge( event )
	-- This funtion will calculate the subtotal, tax and total of a large pizza 
	userTopping = topppingField.text
	HTS = 0.13


if userTopping == topping1  then
		large = 6
		subTotal = topping1 + large
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		large = "1"
	end

if userTopping == topping2 then
		large = 6
		topping2 = 1.75
		subTotal = topping2 + large
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		large = "1"
		topping2 = "2"
	end

if userTopping == topping3 then
		large = 6
		topping3 = 2.50
		subTotal = topping3 + large
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. "$"
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		large = "1"
		topping3 = "3"
	end

if userTopping == topping4 then
		large = 6
		topping4 = 3.35
		subTotal = topping4 + large
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		large = "1"
		topping4 = "4"
	end
end


local function calculatePriceTouchExtraLarge( event )
	-- This funtion will calculate the price of extraLarge pizza
	userTopping = topppingField.text
	HTS = 0.13

if userTopping == topping1 then
		extraLarge = 10
		subTotal = topping1 + extraLarge
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		extraLarge = "0"
	end

if userTopping == topping2 then
		extraLarge = 10
		topping2 = 1.75
		subTotal = topping2 + extraLarge
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		extraLarge = "0"
		topping2 = "2"
	end

if userTopping == topping3 then
		extraLarge = 10
		topping3 = 2.50
		subTotal = topping3 + extraLarge
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		extraLarge = "0"
		topping3 = "3"
	end

if userTopping == topping4 then
		extraLarge = 10
		topping4 = 3.35
		subTotal = topping4 + extraLarge
		taxes = subTotal * HTS
		totalPrice = subTotal + taxes
		subTotalText.text = "Subtotal : $" .. string.format("%.2f",subTotal) .. ""
		taxesText.text = "Taxes : $" .. string.format("%.2f",taxes) ..""
		totalPriceText.text = "Total cost : $" .. string.format("%.2f",totalPrice) ..""
		extraLarge = "0"
		topping4 = "4"
	end

end

-- Assgining function to buttons 
 calculateButtonLarge:addEventListener( "touch", calculatePriceTouchLarge)
 calculateButtonExtraLarge:addEventListener( "touch", calculatePriceTouchExtraLarge)
