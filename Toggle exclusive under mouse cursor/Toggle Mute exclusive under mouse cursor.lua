local mouseX, mouseY = reaper.GetMousePosition()

local trackUnderMouse = reaper.GetTrackFromPoint(mouseX, mouseY)

local numTracks = reaper.CountTracks(0)
for i = 0, numTracks - 1 do
    local track = reaper.GetTrack(0, i)
    if track ~= trackUnderMouse then
        reaper.SetMediaTrackInfo_Value(track, "B_MUTE", 0)
    end
end

if trackUnderMouse then
    local currentMuteState = reaper.GetMediaTrackInfo_Value(trackUnderMouse, "B_MUTE")
    reaper.SetMediaTrackInfo_Value(trackUnderMouse, "B_MUTE", currentMuteState == 0 and 2 or 0)
end

reaper.UpdateArrange()