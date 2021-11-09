-- handy constants
WHITE = {1,1,1,1}
BLACK = {0,0,0,0}

__Description__="this is a collection of often used functions."

function screenCenterX(width)
    --returns the x to center the rectangle with the given height
    local screenwidth=love.graphics.getWidth()
    return (screenwidth-width)/2
end
function screenCenterY(height)
    --returns the y to center the rectangle with the given height
    local screenheight=love.graphics.getHeight()
    return (screenheight-height)/2
end
function screenCenterPos(width,height)
    -- returns x and y coordinates for centering
    local x=screenCenterX(width)
    local y=screenCenterY(height)
    return x,y
end
function centerInRect(width,height,rectHeight,rectWidth,rectX,rectY)
    -- centers a rectangle in another rectangle
    local rectX=rectX or 0
    local rectY=rectY or 0
    local x=(rectWidth-width)/2 + rectX
    local y=(rectHeight-height)/2 + rectY
    return x,y
end
function inRectangle(x,y,rectX,rectY,width,height)
    -- function to decide whether a point is inside a rectangle
    return x>=rectX and x<=rectX+width and y>=rectY and y<=rectY+height
end
function inCircle(x,y,cX,cY,r)
    --function to decide whether a point is inside a circle
    return (cX-x)^2+(cY-y)^2<=r^2
end
function has_value (tab, val)
    -- the 'in' operator
    for index, value in pairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end
function round(num, numDecimalPlaces)
    --rounds the number to the decimal places given
    local mult = 10^(numDecimalPlaces or 0)
    return math.floor(num * mult + 0.5) / mult
end
function distance(x1,y1,x2,y2)
    -- return the distance between the two points
    x1=math.abs(x1) or 0
    y1=math.abs(y1) or 0
    x2=math.abs(x2) or 0
    y2=math.abs(y2) or 0
    local distance = math.sqrt((x1-x2)^2+(y1-y2)^2)
    return distance
end
function displayCenter(string)
    -- diplays the string in the center of the screen
    string=string or ""
    love.graphics.setColor(0,0,0,1)
    local width,height = love.graphics.getDimensions()
    love.graphics.print(string,width/2-10 , height/2-10)
    love.graphics.setColor(1,1,1,1)
end
function displayFPS()
    -- simple FPS display
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.print('FPS: ' .. tostring(love.timer.getFPS()), 10, 10)
    love.graphics.setColor(1,1,1,1)
end
function displayMemory()
    -- simple Memory display
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.print('Memory: ' .. tostring(round(collectgarbage("count"))), 10, 30)
    love.graphics.setColor(1,1,1,1)
end