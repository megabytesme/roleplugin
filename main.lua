-- Set these to true to enable the notifications
local resetNotify = true
local editNotify = true
local deleteNotify = true
-- warning: this will notify for every vehicle spawned, including pedestrians. WIP to fix this.
local spawnNotify = true

function onInit()
    print("RPmanager 1.0.0 Loaded. Vehicle Notifications: Reset: " .. tostring(resetNotify) .. ", Edit: " .. tostring(editNotify) .. ", Delete: " .. tostring(deleteNotify) .. ", Spawn: " .. tostring(spawnNotify))
    MP.RegisterEvent("onVehicleReset", "resetVehicleHandler")
    MP.RegisterEvent("onVehicleEdited", "vehicleEditHandler")
    MP.RegisterEvent("onVehicleDeleted", "vehicleDeleteHandler")
    MP.RegisterEvent("onVehicleSpawn", "vehicleSpawnHandler")
end

-- function to notify players when someone resets their vehicle
function resetVehicleHandler(playerID)
    if resetNotify then
        local playerName = MP.GetPlayerName(playerID)
        MP.SendChatMessage(-1, "The player " .. playerName .. " has reset their car!")
    end
end

-- function to notify players when someone edits their vehicle
function vehicleEditHandler(playerID)
    if editNotify then
        local playerName = MP.GetPlayerName(playerID)
        MP.SendChatMessage(-1, "The player " .. playerName .. " has edited their car!")
    end
end

-- function to notify players when someone deletes their vehicle
function vehicleDeleteHandler(playerID)
    if deleteNotify then
        local playerName = MP.GetPlayerName(playerID)
        MP.SendChatMessage(-1, "The player " .. playerName .. " has deleted their car!")
    end
end

-- function to notify players when someone spawns a vehicle
function vehicleSpawnHandler(playerID)
    if spawnNotify then
        local playerName = MP.GetPlayerName(playerID)
        MP.SendChatMessage(-1, "The player " .. playerName .. " has spawned a vehicle!")
    end
end
