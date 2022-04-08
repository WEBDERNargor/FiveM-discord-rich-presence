Citizen.CreateThread(function()
	while true do
        local name=GetPlayerName(PlayerId())

        local onlinePlayers = 0
for i = 0, 255 do
    if NetworkIsPlayerActive(i) then
        onlinePlayers = onlinePlayers+1
    end
end


		SetDiscordAppId(client_id)


		SetDiscordRichPresenceAsset('asset_name1024')

        SetDiscordRichPresenceAssetText('ชื่อที่จะให้แสดง'
       

        SetDiscordRichPresenceAssetSmall('asset_name512')


        SetDiscordRichPresenceAssetSmallText('ชื่อที่จะให้แสดงตัวเล็ก')

		SetDiscordRichPresenceAction(0, "Join Server", "fivem://connect/localhost:30120")
        SetDiscordRichPresenceAction(1, "Join discord", "ลิงค์ดิสคอร์ด")
         Citizen.Wait(20*1000)
        SetDiscordRichPresenceAction(1, "website", "ลิงค์เว็บไซต์") --ถ้าไม่มีเว็บลบแถวนี้ออกไปเลย


        SetRichPresence('player ='..onlinePlayers)
        Citizen.Wait(10*1000)
        SetRichPresence('name ='..name)
		Citizen.Wait(10*1000)
	end
end)
