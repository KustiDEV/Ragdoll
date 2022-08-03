CreateThread(function()
   while true do
	   Wait(0)
	        if IsControlPressed(1, 303) then -- Default = "U"
			Draw3DText(GetEntityCoords(PlayerPedId()), 'Release ~g~U~w~ to stand up') --Change language from here
		    SetPedToRagdoll(PlayerPedId(), 1500, 1500, 0, false, false, false) 
        end
    end
end)	

function Draw3DText(coordinates, text)
    local onScreen, x, y = World3dToScreen2d(coordinates.x, coordinates.y, coordinates.z+0.20)
    SetTextScale(0.41, 0.41)
    SetTextOutline()
    SetTextDropShadow()
    SetTextDropshadow(2, 0, 0, 0, 255)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextColour(255, 255, 255, 255)
    AddTextComponentString(text)
    DrawText(x, y)
    local factor = (string.len(text)) / 400
	DrawRect(x, y+0.0125, 0.015+ factor, 0.03, 0, 0, 0, 80)
end