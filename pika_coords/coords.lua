Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
		local playerPos = GetEntityCoords(GetPlayerPed(-1))
		local playerHeading = GetEntityHeading(GetPlayerPed(-1))
		Text(" X " .. math.ceil(playerPos.x) .." Y " .. math.ceil(playerPos.y) .." Z " .. math.ceil(playerPos.z) .." Heading " .. math.ceil(playerHeading) .."")
	end
end)

function Text(text)
		SetTextColour(212, 73, 228, 255) 
		SetTextFont(4)
		SetTextScale(0.378, 0.378)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(100, 100, 100, 100, 100)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString(text)
		DrawText(0.45, 0.01)
end

