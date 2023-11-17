local currentPosition = reaper.GetCursorPosition()
local newPosition = currentPosition - 0.01 -- 10 milliseconds to the left of the current position
reaper.SetEditCurPos(newPosition, true, true)

