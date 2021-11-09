local function import(t,prefix)
    local prefix = prefix or ""
    for i, v in ipairs(t) do
        t[i] = require(prefix .. v)
    end
    return t
end

require 'helpers'
Class = require 'libs/class'
GS = require 'libs/gamestate'
Timer = require 'libs/timer'

import({'menu','ended','playing','paused'},'states/')
require 'images/sprite'
require 'sound/sound'
require 'fonts/fonts'