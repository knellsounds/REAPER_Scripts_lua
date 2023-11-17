local trackcount = reaper.CountSelectedTracks(0)

  if trackcount == 0 then
    reaper.ShowMessageBox("Please select a track.", "ERROR", 0)
    return
  end
 for i = 0, trackcount - 1 do
    tr = reaper.GetSelectedTrack(0, i)
    reaper.SetMediaTrackInfo_Value( tr, 'I_RECINPUT', -1 )
end