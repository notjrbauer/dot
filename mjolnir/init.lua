local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"
local keycodes = require "mjolnir.keycodes"

local modalKey = {"cmd"}
--local resizeMappings = {
--  h={x=0, y=0, w=0.5, h=1},
--  j={x=0, y=0.5, w=1, h=0.5},
--  k={x=0, y=0, w=1, h=0.5},
--  l={x=0.5, y=0, w=0.5, h=1},
--  m={x=0, y=0, w=1, h=1}
--}
--local superResizeMappings = {
--  h={x=0, y=0, w=0.25, h=1},
--  j={x=0, y=0.75, w=1, h=0.25},
--  k={x=0, y=0, w=1, h=0.25},
--  l={x=0.75, y=0, w=0.25, h=1},
--}
--for key in pairs(resizeMappings) do
--  hotkey.bind(modalKey, key, function()
--    local win = window.focusedwindow()
--    if win then win:movetounit(resizeMappings[key]) end
--  end)
--end

hotkey.bind(modalKey, "y", function()
  mjolnir.reload()
end)


--for key in pairs(focusKeys) do
  hotkey.bind(modalKey, "`", function()
    application.launchorfocus("iTerm")
  end)
--end

