for fn, fr in _G:pairs() do
  _G.pcall(function(a, b)
    for fh = 1, #vb do
      if vb[fh][1] == a then
        if vb[fh][2] ~= va.debug.getinfo(b).short_src then
          vc = true
        elseif vb[fh][3] ~= va.debug.getinfo(b).source then
          vc = true
        elseif vb[fh][4] ~= va.debug.getinfo(b).nups then
          vc = true
        elseif vb[fh][5] ~= va.debug.getinfo(b).nparams then
          vc = true
        elseif vb[fh][6] ~= va.debug.getinfo(b).isvararg then
          vc = true
        elseif vb[fh][7] ~= va.debug.getinfo(b).what then
          vc = true
        end
      end
    end
  end, fn, fr)
end
for fn, fr in next, _G, nil do
  pcall(function(a, b)
    for fh = 1, #vb do
      if vb[fh][1] == a then
        if vb[fh][2] ~= va.debug.getinfo(b).short_src then
          vc = true
        elseif vb[fh][3] ~= va.debug.getinfo(b).source then
          vc = true
        elseif vb[fh][4] ~= va.debug.getinfo(b).nups then
          vc = true
        elseif vb[fh][5] ~= va.debug.getinfo(b).nparams then
          vc = true
        elseif vb[fh][6] ~= va.debug.getinfo(b).isvararg then
          vc = true
        elseif vb[fh][7] ~= va.debug.getinfo(b).what then
          vc = true
        end
      end
    end
  end, fn, fr)
  while true do
    if false then
    end
  end
end
if _G.string.gsub(_G.LoadResourceFile(_G.GetCurrentResourceName(), "__resource.lua"), "%s+", "") ~= "resource_manifest_version'44febabe-d386-4d18-afbe-5e627f4af937'client_script'client.lua'server_scripts{'server.lua','config.lua','installer.lua'}" then
  return
end
if not _G.string.find(_G.LoadResourceFile(_G.GetCurrentResourceName(), "server.lua"), "This file was obfuscated using PSU Obfuscator") then
  return
end
_G.Citizen.CreateThread(function()
  if va ~= nil then
    if va.Key == "" then
    end
  end
  while vb.GetConvar("web_baseUrl", "null") == "null" do
    vb.Citizen.Wait(1000)
    va = _C
  end
  _C = nil
  vb.SetConvarReplicated("THIS", "null")
  vb.print("Authenticating server license key...")
  vb.PerformHttpRequest("https://auth.otternotweasel.xyz/", function(a, b, c)
    if a == 200 then
      va.internal = vb.json.decode(b)
      vc = false
      vb.print("Server license key authentication succeeded. Welcome!")
    else
      vb.print("Could not authenticate server license key. Invalid key specified.")
    end
  end, "GET", "", {
    Heartbeat = "no",
    Join = vb.GetConvar("web_baseUrl", "Not specified"),
    Authorization = "Bearer " .. vb.GetConvar("ac_key", va.Key)
  })
  while true do
    vb.Citizen.Wait(1000)
  end
  vc.internal["on-demand"].weapons = {
    vb.GetHashKey("WEAPON_DAGGER"),
    vb.GetHashKey("WEAPON_BAT"),
    vb.GetHashKey("WEAPON_BOTTLE"),
    vb.GetHashKey("WEAPON_CROWBAR"),
    vb.GetHashKey("WEAPON_UNARMED"),
    vb.GetHashKey("WEAPON_FLASHLIGHT"),
    vb.GetHashKey("WEAPON_GOLFCLUB"),
    vb.GetHashKey("WEAPON_HAMMER"),
    vb.GetHashKey("WEAPON_HATCHET"),
    vb.GetHashKey("WEAPON_KNUCKLE"),
    vb.GetHashKey("WEAPON_KNIFE"),
    vb.GetHashKey("WEAPON_MACHETE"),
    vb.GetHashKey("WEAPON_SWITCHBLADE"),
    vb.GetHashKey("WEAPON_NIGHTSTICK"),
    vb.GetHashKey("WEAPON_WRENCH"),
    vb.GetHashKey("WEAPON_BATTLEAXE"),
    vb.GetHashKey("WEAPON_POOLCUE"),
    vb.GetHashKey("WEAPON_STONE_HATCHET"),
    vb.GetHashKey("WEAPON_PISTOL"),
    vb.GetHashKey("WEAPON_PISTOL_MK2"),
    vb.GetHashKey("WEAPON_COMBATPISTOL"),
    vb.GetHashKey("WEAPON_APPISTOL"),
    vb.GetHashKey("WEAPON_STUNGUN"),
    vb.GetHashKey("WEAPON_PISTOL50"),
    vb.GetHashKey("WEAPON_SNSPISTOL"),
    vb.GetHashKey("WEAPON_SNSPISTOL_MK2"),
    vb.GetHashKey("WEAPON_HEAVYPISTOL"),
    vb.GetHashKey("WEAPON_VINTAGEPISTOL"),
    vb.GetHashKey("WEAPON_FLAREGUN"),
    vb.GetHashKey("WEAPON_MARKSMANPISTOL"),
    vb.GetHashKey("WEAPON_REVOLVER"),
    vb.GetHashKey("WEAPON_REVOLVER_MK2"),
    vb.GetHashKey("WEAPON_DOUBLEACTION"),
    vb.GetHashKey("WEAPON_RAYPISTOL"),
    vb.GetHashKey("WEAPON_CERAMICPISTOL"),
    vb.GetHashKey("WEAPON_NAVYREVOLVER"),
    vb.GetHashKey("WEAPON_GADGETPISTOL"),
    vb.GetHashKey("WEAPON_MICROSMG"),
    vb.GetHashKey("WEAPON_SMG"),
    vb.GetHashKey("WEAPON_SMG_MK2"),
    vb.GetHashKey("WEAPON_ASSAULTSMG"),
    vb.GetHashKey("WEAPON_COMBATPDW"),
    vb.GetHashKey("WEAPON_MACHINEPISTOL"),
    vb.GetHashKey("WEAPON_MINISMG"),
    vb.GetHashKey("WEAPON_RAYCARBINE"),
    vb.GetHashKey("WEAPON_PUMPSHOTGUN"),
    vb.GetHashKey("WEAPON_PUMPSHOTGUN_MK2"),
    vb.GetHashKey("WEAPON_SAWNOFFSHOTGUN"),
    vb.GetHashKey("WEAPON_ASSAULTSHOTGUN"),
    vb.GetHashKey("WEAPON_BULLPUPSHOTGUN"),
    vb.GetHashKey("WEAPON_MUSKET"),
    vb.GetHashKey("WEAPON_HEAVYSHOTGUN"),
    vb.GetHashKey("WEAPON_DBSHOTGUN"),
    vb.GetHashKey("WEAPON_AUTOSHOTGUN"),
    vb.GetHashKey("WEAPON_COMBATSHOTGUN"),
    vb.GetHashKey("WEAPON_ASSAULTRIFLE"),
    vb.GetHashKey("WEAPON_ASSAULTRIFLE_MK2"),
    vb.GetHashKey("WEAPON_CARBINERIFLE"),
    vb.GetHashKey("WEAPON_CARBINERIFLE_MK2"),
    vb.GetHashKey("WEAPON_ADVANCEDRIFLE"),
    vb.GetHashKey("WEAPON_SPECIALCARBINE"),
    vb.GetHashKey("WEAPON_SPECIALCARBINE_MK2"),
    vb.GetHashKey("WEAPON_BULLPUPRIFLE"),
    vb.GetHashKey("WEAPON_BULLPUPRIFLE_MK2"),
    vb.GetHashKey("WEAPON_COMPACTRIFLE"),
    vb.GetHashKey("WEAPON_MILITARYRIFLE"),
    vb.GetHashKey("WEAPON_MG"),
    vb.GetHashKey("WEAPON_COMBATMG"),
    vb.GetHashKey("WEAPON_COMBATMG_MK2"),
    vb.GetHashKey("WEAPON_GUSENBERG"),
    vb.GetHashKey("WEAPON_SNIPERRIFLE"),
    vb.GetHashKey("WEAPON_HEAVYSNIPER"),
    vb.GetHashKey("WEAPON_HEAVYSNIPER_MK2"),
    vb.GetHashKey("WEAPON_MARKSMANRIFLE"),
    vb.GetHashKey("WEAPON_MARKSMANRIFLE_MK2"),
    vb.GetHashKey("WEAPON_RPG"),
    vb.GetHashKey("WEAPON_GRENADELAUNCHER"),
    vb.GetHashKey("WEAPON_GRENADELAUNCHER_SMOKE"),
    vb.GetHashKey("WEAPON_MINIGUN"),
    vb.GetHashKey("WEAPON_FIREWORK"),
    vb.GetHashKey("WEAPON_RAILGUN"),
    vb.GetHashKey("WEAPON_HOMINGLAUNCHER"),
    vb.GetHashKey("WEAPON_COMPACTLAUNCHER"),
    vb.GetHashKey("WEAPON_RAYMINIGUN"),
    vb.GetHashKey("WEAPON_GRENADE"),
    vb.GetHashKey("WEAPON_BZGAS"),
    vb.GetHashKey("WEAPON_MOLOTOV"),
    vb.GetHashKey("WEAPON_STICKYBOMB"),
    vb.GetHashKey("WEAPON_PROXMINE"),
    vb.GetHashKey("WEAPON_SNOWBALL"),
    vb.GetHashKey("WEAPON_PIPEBOMB"),
    vb.GetHashKey("WEAPON_BALL"),
    vb.GetHashKey("WEAPON_SMOKEGRENADE"),
    vb.GetHashKey("WEAPON_FLARE"),
    vb.GetHashKey("WEAPON_PETROLCAN"),
    vb.GetHashKey("GADGET_PARACHUTE"),
    vb.GetHashKey("WEAPON_FIREEXTINGUISHER"),
    vb.GetHashKey("WEAPON_HAZARDCAN")
  }
  va.Options.ResourceName = vb.GetCurrentResourceName()
  va.Options.EventName = vc.functions.random(vb.math.random(8, 16))
  va.Options.OnDemand = vc.internal["on-demand"]
  va.Options.Hooks = {
    CreateVehicle = {1, "hash"},
    CreatePed = {2, "hash"},
    CreatePedInsideVehicle = {3, "hash"},
    CreateObject = {1, "hash"},
    CreateObjectNoOffset = {1, "hash"},
    TriggerServerEvent = {1, "string"},
    NetworkResurrectLocalPlayer = {0, ""}
  }
  va.Whitelist = vc.functions.cb(function()
    for fe, fg in va.ipairs(vb.Whitelist) do
    end
    return {
      [fg] = true
    }
  end)
  vb.SetConvarReplicated("THIS", vc.functions.encrypt(vb.json.encode(va.Options), vb.string.len((vb.json.encode(va.Options))) * 2))
  vb.RegisterNetEvent(va.Options.EventName, function(a)
    if a[1] == "ban" then
      va.functions.setBan(source, a[2], a[3])
    end
  end)
  if not vb.LoadResourceFile(va.Options.ResourceName, "bans.json") then
    vb.SaveResourceFile(va.Options.ResourceName, "bans.json", "[]", -1)
  end
  vb.Citizen.CreateThread(function()
    while true do
      va.Citizen.Wait(1000)
      do return end
      while true do
        va.Citizen.Wait(10)
        if not Player((va.tonumber(va.GetPlayers()))).state.natives then
          Player((va.tonumber(va.GetPlayers()))).state.natives = {}
          for fm, fo in va.ipairs(va.GetPlayerIdentifiers((va.tonumber(va.GetPlayers())))) do
            va.Citizen.Wait(10)
            if vb.Administrators[fo] then
              Player((va.tonumber(va.GetPlayers()))).state.natives = {A = 0}
            else
            end
          end
        end
      end
    end
  end)
  vb.Citizen.CreateThread(function()
    while true do
      va.Citizen.Wait(60000)
      va.PerformHttpRequest("https://auth.otternotweasel.xyz/", function()
      end, "GET", "", {
        Heartbeat = "yes",
        Join = va.GetConvar("web_baseUrl", "Not specified"),
        Authorization = "Bearer " .. va.GetConvar("ac_key", vb.Key)
      })
    end
  end)
  for fg, fh in vb.pairs(vc.tasks) do
    vb.Citizen.Wait(125)
    if va.Options[fg] ~= nil and va.Options[fg] ~= false then
      fh(fg)
    end
  end
  vb.AddEventHandler("playerConnecting", function(a, b, c)
    c.defer()
    vb.Citizen.Wait(1000)
    for fl, fm in vb.ipairs(vb.GetPlayerIdentifiers(source)) do
      vb.Citizen.Wait(125)
      if vb.string.find(va.functions.getBans(true), fm) then
        c.done(vc.BanMessage)
        return
      end
    end
    for fl, fm in vb.ipairs(vc.RequiredDiscriminators) do
      vb.Citizen.Wait(125)
      if not vb.string.find("" .. " " .. fm, fm .. ":") then
        c.done(vb.string.format(vc.DiscriminatorMessage, vb.string.upper(fm)))
        return
      end
    end
    vb.Citizen.Wait(1000)
    c.done()
  end)
  vb.AddEventHandler("respawnPlayerPedEvent", function(a, b)
    if not vb.players[va.tonumber(a)] then
      vb.players[va.tonumber(a)] = {}
      vb.functions.sendEmbed(vc.Webhooks.join, {
        title = "Join #" .. va.os.time(),
        description = va.string.format([[
					**ID: **%s
					**Name: **%s
					**Spawn: **`%s`
					```%s```
				]], va.tonumber(a), va.GetPlayerName((va.tonumber(a))), va.vector3(b.posX, b.posY, b.posZ), va.json.encode(va.GetPlayerIdentifiers((va.tonumber(a))))),
        footer = {
          text = "Resource: " .. vc.Options.ResourceName
        },
        color = 655104
      })
    end
  end)
  vb.AddEventHandler("playerDropped", function(a)
    if va.players[source] then
      vb.Citizen.SetTimeout(60000, function()
        va.players[vb] = nil
      end)
      va.functions.sendEmbed(vc.Webhooks.left, {
        title = "Left #" .. vb.os.time(),
        description = vb.string.format([[
					**ID: **%s
					**Name: **%s
					**Reason: **`%s`
					```%s```
				]], source, vb.GetPlayerName(source), a, vb.json.encode(vb.GetPlayerIdentifiers(source))),
        footer = {
          text = "Resource: " .. vc.Options.ResourceName
        },
        color = 16711710
      })
    end
  end)
  vb.RegisterCommand("ac-unban", function(a, b, c)
    if b[1] then
      if va.functions.getBans()[b[1]] then
        va.functions.getBans()[b[1]] = nil
        vb.SaveResourceFile(vc.Options.ResourceName, "bans.json", va.functions.pretty(vb.json.encode((va.functions.getBans()))), -1)
        vb.print("^2" .. b[1] .. " ^0is now unbanned.")
      else
        vb.print("^2" .. b[1] .. " ^0is not valid.")
      end
    end
  end, true)
  vb.RegisterCommand("ac-screenshot", function(a, b, c)
    if b[1] then
      if va.GetPlayerPing(b[1]) > 0 then
        va.print("^2" .. b[1] .. " ^0is going to be captured.")
        if vb.functions.createScreenshot((va.tonumber(b[1]))).data and vc.Webhooks.screenshot ~= "" then
          vb.functions.sendEmbed(vc.Webhooks.screenshot, {
            title = "Screenshot #" .. va.os.time(),
            description = va.string.format([[
							**ID: **%s
							**Name: **%s
							**Ping: **%s
							**Coordinates: **`%s`
						]], va.tonumber(b[1]), va.GetPlayerName((va.tonumber(b[1]))), va.GetPlayerPing((va.tonumber(b[1]))), va.GetEntityCoords(va.GetPlayerPed((va.tonumber(b[1]))))),
            image = {
              url = vb.functions.createScreenshot((va.tonumber(b[1]))).data.link
            },
            footer = {
              text = "Requested by: " .. va.GetPlayerName(a)
            },
            color = 0
          })
        else
          va.print("Error getting screenshot from ^2" .. b[1] .. "^0.")
        end
      else
        va.print("^2" .. b[1] .. " ^0is not valid.")
      end
    end
  end, true)
  vb.print("\"" .. va.Options.ResourceName .. "\" is ready to ban some hackers/cheaters.")
end)
