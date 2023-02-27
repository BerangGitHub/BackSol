ESX = nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local coord = GetEntityCoords(ped)
        local souslesol = -20
        if coord.z < souslesol then
            AddTextEntry(("E"), "Appuyez sur ~INPUT_PICKUP~ ~s~pour aller sur le sol.")
            DisplayHelpTextThisFrame("E", false)
            if IsControlJustPressed(0, 38) then
                local retval, sol = GetGroundZFor_3dCoord(coord.x, coord.y, coord.z, false)
                SetEntityCoords(ped, coord.x, coord.y, sol + 15, true)
            end
        end
        Citizen.Wait(20)
    end
end)