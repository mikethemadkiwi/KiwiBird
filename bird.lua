Citizen.CreateThread(function()
	while true do
		Citizen.Wait(2500)
        if NetworkIsSessionStarted() then
            local playerLoc = GetEntityCoords(PlayerPedId())
            local retval, gz = GetGroundZFor_3dCoord((playerLoc.x+0.0), (playerLoc.y+0.0), (playerLoc.z+0.0), Citizen.ReturnResultAnyway())
            SetGlobalMinBirdFlightHeight((gz+5))
        end
    end
end)