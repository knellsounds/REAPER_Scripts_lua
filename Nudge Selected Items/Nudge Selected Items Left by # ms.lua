function nudgeItemsToLeft()
    local numSelectedItems = reaper.CountSelectedMediaItems(0)
    for i = 0, numSelectedItems - 1 do
        local selectedItem = reaper.GetSelectedMediaItem(0, i)
        local itemPosition = reaper.GetMediaItemInfo_Value(selectedItem, "D_POSITION")
        reaper.SetMediaItemInfo_Value(selectedItem, "D_POSITION", itemPosition - 0.05) -- The numerical value represents milliseconds
    end
    
    reaper.UpdateArrange()
end

nudgeItemsToLeft()
