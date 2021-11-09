require 'requires'

-- physical screen dimensions
WINDOW_WIDTH = 1920
WINDOW_HEIGHT = 1080

function love.load()
    math.randomseed(os.time())
    love.window.setTitle("TheStraightPath")
    love.graphics.setDefaultFilter("nearest","nearest")
    --intitialize gs engine
    GS.registerEvents()
    GS.switch(menu)
    -- initialize mouse input table
    love.mouse.buttonsReleased = {}
end
function love.keypressed(key)
    if key == 'escape' then
        love.event.quit()
    end
end
function love.mousereleased(x,y,button,istouch,presses)
    love.mouse.buttonsReleased[button]=true
end
function love.update(dt)
    Timer.update(dt)
end

function love.draw()
    love.graphics.setColor(WHITE)
    love.mouse.buttonsReleased = {}
    -- displayFPS()
    -- displayMemory()
end