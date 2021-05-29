ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100)
	end
end)

RMenu.Add('shop', 'main', RageUI.CreateMenu("Épicerie", "~b~Menu Boutique~w~"))
RMenu.Add('shop', 'boisson', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Boisson", "~b~Menu Boisson~w~"))
RMenu.Add('shop', 'nourriture', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Nourriture", "~b~Menu Nourriture~w~"))
RMenu.Add('shop', 'divers', RageUI.CreateSubMenu(RMenu:Get('shop', 'main'), "Divers", "~b~Menu Divers~w~"))

Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('shop', 'main'), true, true, true, function()

            RageUI.Button("Boisson", "Choisi ta Boisson !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'boisson'))

            RageUI.Button("Divers", "Choisi ton Telephone !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'divers'))

            RageUI.Button("Nourriture", "Choisi ta Nourriture !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'nourriture'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shop', 'boisson'), true, true, true, function()

            RageUI.Button("Eau 🥤", "Voici de l'eau fraiche", {RightLabel = "~r~1$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyEau')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shop', 'divers'), true, true, true, function()

            RageUI.Button("Telephone 📱", "Voici ton Télephone", {RightLabel = "~r~100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyTelephone')
                end
            end)
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shop', 'main'), true, true, true, function()

            RageUI.Button("Boisson", "Choisi ta Boisson !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'boisson'))

            RageUI.Button("Divers", "Choisi ton Telephone !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'divers'))

            RageUI.Button("Nourriture", "Choisi ta Nourriture !", {RightLabel = "→→→"},true, function()
            end, RMenu:Get('shop', 'nourriture'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('shop', 'divers'), true, true, true, function()

            RageUI.Button("Telephone 📱", "", {RightLabel = "~r~100$"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('powx_tuto:BuyEau')
                end
            end)
        end, function()
        end)

            RageUI.IsVisible(RMenu:Get('shop', 'nourriture'), true, true, true, function()

                RageUI.Button("Pain 🍞", "Voici du pain frais", {RightLabel = "~r~1$"}, true, function(Hovered, Active, Selected)
                    if (Selected) then
                        TriggerServerEvent('powx_tuto:BuyPain')
                    end
                end)
                        
            end, function()
                ---Panels
            end, 1)
    
            Citizen.Wait(0)
        end
    end)

    local position = {
        {x = 25.67 , y = -1346.37, z = 29.49, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then

                   RageUI.Text({
                        message = "Appuyez sur [~b~E~w~] pour parler a ~b~Apu",
                        time_display = 1
                    })
                   -- ESX.ShowHelpNotification("Appuyez sur [~b~E~w~] pour acceder au ~b~Shop")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('shop', 'main'), not RageUI.Visible(RMenu:Get('shop', 'main')))
                    end
                end
            end
        end
    end)

    local blips = {
        {title="Épicerie", colour=2, id=642, x = 24.129, y = -1346.156, z = 28.497, h = 266.946},
        {title="Épicerie", colour=2, id=642, x = 2557.458, y = 382.282, z = 107.622},
        {title="Épicerie", colour=2, id=642, x = -3038.939, y = 585.954, z = 6.97},
        {title="Épicerie", colour=2, id=642, x = -3241.927, y = 1001.462, z = 11.850},
        {title="Épicerie", colour=2, id=642, x = 547.431, y = 2671.710, z = 41.176},
        {title="Épicerie", colour=2, id=642, x = 1961.464, y = 3740.672, z = 31.363},
        {title="Épicerie", colour=2, id=642, x = 2678.916, y = 3280.671, z = 54.261},
        {title="Épicerie", colour=2, id=642, x = 1729.216, y = 6414.131, z = 34.057},
        {title="Épicerie", colour=2, id=642, x = 1135.808, y = -982.281, z = 45.45},
        {title="Épicerie", colour=2, id=642, x = -1222.93, y = -906.99, z = 11.35},
        {title="Épicerie", colour=2, id=642, x = -1487.553, y = -379.107, z = 39.163},
        {title="Épicerie", colour=2, id=642, x = -2968.243, y = 390.910, z = 14.054},
        {title="Épicerie", colour=2, id=642, x = 1166.024, y = 2708.930, z = 37.167},
        {title="Épicerie", colour=2, id=642, x = 1392.562, y = 3604.684, z = 33.995},
        {title="Épicerie", colour=2, id=642, x = -1393.409, y = -606.624, z = 29.319},
        {title="Épicerie", colour=2, id=642, x = -1037.618, y = -2737.399, z = 19.169},
        {title="Épicerie", colour=2, id=642, x = -48.519, y = -1757.514, z = 28.47},
        {title="Épicerie", colour=2, id=642, x = 1163.373, y = -323.801, z = 68.27},
        {title="Épicerie", colour=2, id=642, x = -707.67, y = -914.22, z = 18.26},
        {title="Épicerie", colour=2, id=642, x = -1820.523, y = 792.518, z = 137.20},
        {title="Épicerie", colour=2, id=642, x = 1698.388, y = 4924.404, z = 41.083}
    }
    
    Citizen.CreateThread(function()
        for _, info in pairs(blips) do
            info.blip = AddBlipForCoord(info.x, info.y, info.z)
            SetBlipSprite(info.blip, 52)
            SetBlipDisplay(info.blip, 4)
            SetBlipScale(info.blip, 0.7)
            SetBlipColour(info.blip, info.colour)
            SetBlipAsShortRange(info.blip, true)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(info.title)
            EndTextCommandSetBlipName(info.blip)
        end
    end)

    Citizen.CreateThread(function()
        local hash = GetHashKey("mp_m_shopkeep_01")
        while not HasModelLoaded(hash) do
        RequestModel(hash)
        Wait(20)
        end
        ped = CreatePed("PED_TYPE_CIVMALE", "mp_m_shopkeep_01", 24.129, -1346.156, 28.497, 266.946, true, true)
        SetBlockingOfNonTemporaryEvents(ped, true)
        SetEntityInvincible(ped, true)
        FreezeEntityPosition(ped, true)
    end)