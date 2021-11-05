_G.Citizen.CreateThread(function()
  while va.GetConvar("THIS", "null") == "null" do
    va.Citizen.Wait(1000)
  end
  vc.Options = va.json.decode((vb.functions.decrypt(va.GetConvar("THIS"), va.string.len(va.GetConvar("THIS")))))
  for fh, fj in va.pairs(vc.Options.Hooks) do
    vb.old_hooks[fh] = _G[fh]
    _G[fh] = function()
      if vb[1] > 0 then
        if vb[2] == "hash" then
          LocalPlayer.state.natives[va.table.pack(...)[vb[1]] or va.GetHashKey(va.table.pack(...)[vb[1]])] = GetGameTimer()
        elseif vb[2] == "string" then
          LocalPlayer.state.natives[va.tostring(va.table.pack(...)[vb[1]])] = GetGameTimer()
        elseif vb[2] == "number" then
          LocalPlayer.state.natives[va.tonumber(va.table.pack(...)[vb[1]])] = GetGameTimer()
        end
      else
        LocalPlayer.state.natives[vc] = GetGameTimer()
      end
      for fh, fj in va.pairs(LocalPlayer.state.natives) do
        if fj > 0 and GetGameTimer() - fj > 10000 then
          LocalPlayer.state.natives[fh] = nil
        end
      end
      LocalPlayer.state:set("natives", LocalPlayer.state.natives, true)
      return vd.old_hooks[vc](...)
    end
  end
  va.Citizen.CreateThread(function()
    while true do
      va.Citizen.Wait(500)
      for fg, fh in va.pairs(vb.tasks) do
        va.Citizen.Wait(125)
        if vc.Options[fg] ~= nil and vc.Options[fg] ~= false and not LocalPlayer.state.natives.A then
          if vd[fg] == nil then
            vd[fg] = "running"
            va.Citizen.CreateThread(function()
              va(vb, vc, vd, ve)
              vg[vc] = nil
            end)
          end
        else
          vb.tasks[fg] = nil
        end
      end
    end
  end)
end)
