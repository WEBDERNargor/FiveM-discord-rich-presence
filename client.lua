-- Citizen.CreateThread(function()
-- 	while true do

-- 		SetDiscordAppId(954902832484601926) -- ต้องแก้


-- 		SetDiscordRichPresenceAsset('mafia1024') -- ต้องแก้

--         SetDiscordRichPresenceAssetText('Mafia City SS1') -- ต้องแก้
       

--         SetDiscordRichPresenceAssetSmall('mafia512') -- ต้องแก้


--         SetDiscordRichPresenceAssetSmallText('Mafia City SS1') -- ต้องแก้

-- 		SetDiscordRichPresenceAction(0, "เข้าเซิฟเวอร์", "fivem://connect/localhost:30120")
--         SetDiscordRichPresenceAction(1, "เว็บไซต์", "้https://www.maifacityss1.com")
-- 		Citizen.Wait(60000)
-- 	end
-- end)


Citizen.CreateThread(function()
    while true do
        
        --properties
        local name = GetPlayerName(PlayerId())
        local id = GetPlayerServerId(PlayerId())
        local street = GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))))
        local vehicle = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
        local MPH = math.ceil(GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId())) * 2.236936)
        local NumberOfPlayers = 0

        for i = 0, 255 do
            if NetworkIsPlayerActive(i) then
                NumberOfPlayers = NumberOfPlayers + 1
            end
        end

        --game status app
        SetDiscordAppId(954902832484601926)

        --logo icon
        SetDiscordRichPresenceAsset('mafia1024')
        SetDiscordRichPresenceAssetText('Mafia City SS1')

        --buttons
        
        SetDiscordRichPresenceAction(0, "Join Server", "fivem://connect/localhost:30120")
		SetDiscordRichPresenceAction(1, "Join Discord", "https://discord.gg/ejqqUB9SBT")
		Wait(20*1000)
        SetDiscordRichPresenceAction(1, "Website", "https://mafiacityss1.com")

        --small icon
        --SetDiscordRichPresenceAssetSmall('discordsmall')
        --SetDiscordRichPresenceAssetSmallText('https://discord.gg/cooley')

        --loop for rich presense change

         SetRichPresence('Players: ' .. NumberOfPlayers)
         Wait(5*1000)
         SetRichPresence('ID: ' .. id)
         Wait(5*1000)
         SetRichPresence('IGN: ' .. name)
         Wait(5*1000)
         SetRichPresence('Mafiacity ss1')
         Wait(7*1000)
		SetDiscordRichPresenceAction(1, "Join Discord", "https://discord.gg/ejqqUB9SBT")

        --updates every selected seconds 
        Citizen.Wait(20*1000)
    end
end)