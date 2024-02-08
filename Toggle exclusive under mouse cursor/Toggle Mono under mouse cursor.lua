local mouseX, mouseY = reaper.GetMousePosition()

local trackUnderMouse = reaper.GetTrackFromPoint(mouseX, mouseY)

if trackUnderMouse then
    local currentMuteState = reaper.GetMediaTrackInfo_Value(trackUnderMouse, "B_MUTE")
    reaper.SetMediaTrackInfo_Value(trackUnderMouse, "B_MUTE", currentMuteState == 0 and 1 or 0)
end

reaper.UpdateArrange()