Citizen.CreateThread(function()
	while true do
        local name=GetPlayerName(PlayerId())

        local onlinePlayers = 0
for i = 0, 255 do
    if NetworkIsPlayerActive(i) then
        onlinePlayers = onlinePlayers+1
    end
end


		SetDiscordAppId(client_id) -- ต้องแก้


		SetDiscordRichPresenceAsset('asset_name1024') -- ต้องแก้

        SetDiscordRichPresenceAssetText('ชื่อที่จะให้แสดง') -- ต้องแก้
       

        SetDiscordRichPresenceAssetSmall('asset_name512') -- ต้องแก้


        SetDiscordRichPresenceAssetSmallText('ชื่อที่จะให้แสดงตัวเล็ก') -- ต้องแก้

		SetDiscordRichPresenceAction(0, "Join Server", "fivem://connect/localhost:30120")
        SetDiscordRichPresenceAction(1, "Join discord", "discord_url")
         Citizen.Wait(20*1000)
        SetDiscordRichPresenceAction(1, "website", "https://nargor.net/")


        SetRichPresence('player ='..onlinePlayers)
        Citizen.Wait(10*1000)
        SetRichPresence('name ='..name)
		Citizen.Wait(10*1000)
	end
end)
