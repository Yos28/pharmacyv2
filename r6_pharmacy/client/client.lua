local QBCore = exports[Config.Core]:GetCoreObject()


RegisterNetEvent("r6_pharmacy:Client:pharmacy")
AddEventHandler("r6_pharmacy:Client:pharmacy", function()
    if not IsEntityDead(GetPlayerPed(-1)) then
        local r6_pharmacy = {}
        r6_pharmacy.label = "pharmacy"
        r6_pharmacy.items = Config.pharmacyshop
        r6_pharmacy.slots = #Config.pharmacyshop
        TriggerServerEvent(Config.InvTrigger, "shop", "pharmacy_"..math.random(1, 99), r6_pharmacy)
    end
end)



local Yospeds = {
    {type = 4, Yousef = Config.Ped2 ,position = Config.Location, lib = "timetable@ron@ig_3_couch", anim = "base"}, --- ()
    
}
Citizen.CreateThread(function()
    for _,v in pairs(Yospeds) do
        local hash = GetHashKey(v.Yousef)

        RequestModel(hash)
        while not HasModelLoaded(hash) do
          Wait(1)
        end
    
        RequestAnimDict(v.lib)
        while not HasAnimDictLoaded(v.lib) do
          Wait(1)
        end
    
        local ped = CreatePed(v.type, hash, v.position.x, v.position.y, v.position.z, v.position.w, false, true)
        SetEntityHeading(ped, v.position.w)
        FreezeEntityPosition(ped, true)
        SetEntityInvincible(ped, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        TaskPlayAnim(ped, v.lib, v.anim, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
        if v.Yousef == Config.Ped2 then
          TaskStartScenarioInPlace(ped, 'CODE_HUMAN_CROSS_ROAD_WAIT', 0, true)
          SetBlockingOfNonTemporaryEvents(ped, true)
          
        end
    end
end)

print(" Made By Yosdev | https://discord.gg/yCYVKTV9c3 ") 
    Citizen.CreateThread(function()
        local blip = AddBlipForCoord(380.26974, -834.3272, 29.291669, 358.97299)
        SetBlipSprite(blip, 51)
        SetBlipScale(blip, 0.7)
        SetBlipColour(blip, 84)  
        SetBlipAsShortRange(blip, true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString("Pharmacy")
        EndTextCommandSetBlipName(blip)
    end)
    


    
exports[Config.TargetExport]:AddTargetModel(Config.Ped1, { 
options = {
    {
        event = "r6_pharmacy:Client:pharmacy",
        icon = "fa-prescription-bottle-medical",
        label = "الصيدلي",
        job = "all",
    },        
},
distance = Config.Distance 
})
