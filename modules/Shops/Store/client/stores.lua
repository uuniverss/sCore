local AeroEvent = TriggerServerEvent
SneakyEvent = AeroEvent
Stores = {
    [1] = {
        name = "pawnshop",
        label = "~g~Pawnshop~s~",
        texture = "root_cause",
        banner = "pawnshop",
        Positions = {
            {coords = vector3(182.240643310547,-1319.25983886719,29.33605499268)}
        },
        Categories = {
            Items = {
                {label = "Radio", name = "radio", price = 200},
                {label = "Jumelles", name = "jumelles", price = 350},
                {label = "Casserole", name = "casserole", price = 75},
                {label = "Pelle", name = "pelle", price = 125},
                {label = "Canne à pêche", name = "canne_peche", price = 150},
--                {label = "Kit de crochetage", name = "kit_de_crochetage", price = 40},
            },
        },
    },
    [2] = {
        name = "casino",
        label = "~n~Diamond Casino~s~",
        texture = "root_cause",
        banner = "shopui_title_casino",
        Positions = {
            {coords = vector3(1112.298828125,211.72407531738,-49.440124511719)},
            {coords = vector3(1108.8902587891,206.13624572754,-49.440124511719)},
            {coords = vector3(1115.4301757812,206.74838256836,-49.440124511719)}

        },
        Categories = {
            Items = {
                {label = "Bière", name = "beer", price = 50},
                {label = "Coca", name = "coca", price = 10},
                {label = "Redbull", name = "redbull", price = 12},
                {label = "Tequila", name = "tequila", price = 200},
                {label = "Whisky", name = "whisky", price = 220},
            },
        },
    },
    [3] = {
        name = "bike-rental",
        label = "~g~Bike Rental~s~",
        texture = "root_cause",
        banner = "bikerental",
        Positions = {
            {coords = vector3(-1223.1176757812,-1495.7664794922,4.3516988754272)}

        },
        Categories = {
            Items = {
                {label = "Bmx", name = "bmx", price = 350},      
            },
        },
    },
    [4] = {
        name = "golf",
        label = "~g~Golf Club~s~",
        texture = "root_cause",
        banner = "golf",
        Positions = {
            {coords = vector3(-1356.359375,126.48164367676,56.238719940186)}

        },
        Categories = {
            Items = {
                {label = "Balle de golf (blanche", name = "golf", price = 30},
                {label = "Balle de golf (jaune)", name = "golf_yellow", price = 32},
                {label = "Balle de golf (verte)", name = "golf_green", price = 34},
                {label = "Balle de golf (rose)", name = "golf_pink", price = 35},     
                --{label = "Club de golf", name = "weapon_golfclub", price = 3000},  
            },
        },
    },
    [5] = {
        name = "liquor-barn",
        label = "~g~Scoops Liquor Barn~s~",
        texture = "shopui_title_liquorstore3",
        banner = "shopui_title_liquorstore3",
        Positions = {
            {coords = vector3(4467.943359375,-4465.12109375,4.2467041015625)}
        },
        Categories = {
            Items = {
                {label = "Tablette de chocolat", name = "chocolate", price = 5},
                {label = "Bouteille d'eau", name = "water", price = 4}
            }
        },
    },
}

openedStoreMenu = false
lastPos = nil

function RageUI.Info(Title, RightText, LeftText)
    local LineCount = #RightText >= #LeftText and #RightText or #LeftText
    if Title ~= nil then
        RenderText("~h~" .. Title .. "~h~", 350 + 20 + 100, 104, 0, 0.34, 255, 255, 255, 255, 0)
    end
    if RightText ~= nil then
        RenderText(table.concat(RightText, "\n"), 350 + 20 + 100, Title ~= nil and 134 or 104, 0, 0.28, 255, 255, 255, 255, 0)
    end
    if LeftText ~= nil then
        RenderText(table.concat(LeftText, "\n"), 350 + 432 + 100, Title ~= nil and 134 or 104, 0, 0.28, 255, 255, 255, 255, 2)
    end
    RenderRectangle(350 + 10 + 100, 97, 432, Title ~= nil and 50 + (LineCount * 20) or ((LineCount + 1) * 20), 0, 0, 0, 160)
end

Citizen.CreateThread(function()

    RMenu.Add("shop", "main", RageUI.CreateMenu("", "", nil, nil))
    RMenu:Get("shop", "main").Closed = function()
        FreezeEntityPosition(PlayerPedId(), false)
        openedStoreMenu = false
        lastPos = nil
    end

    for k,v in pairs(Stores) do
        for i = 1, #v.Categories, 1 do
            RMenu.Add(v.name, v.Categories[i].name, RageUI.CreateSubMenu(RMenu:Get("shop", "main"), "", v.Categories[i].label, 80, 90))
        end
    end

end)

function openStoreMenu(shop)
    if openedStoreMenu then
        openedStoreMenu = false
        FreezeEntityPosition(PlayerPedId(), false)
        RageUI.Visible(RMenu:Get("shop", "main"), false)
        return
    else
        openedStoreMenu = true
        FreezeEntityPosition(PlayerPedId(), true)
        RMenu:Get("shop", "main"):SetTitle("")
        RMenu:Get("shop", "main"):SetSpriteBanner(shop.texture, shop.banner)
        RMenu:Get("shop", "main"):SetSubtitle(shop.label)
        for i = 1, #shop.Categories, 1 do
            RMenu:Get(shop.name, shop.Categories[i].name):SetTitle("")
            RMenu:Get(shop.name, shop.Categories[i].name):SetSpriteBanner(shop.texture, shop.banner)
            RMenu:Get(shop.name, shop.Categories[i].name):SetSubtitle(shop.label)
        end
        RageUI.Visible(RMenu:Get("shop", "main"), true)
        Citizen.CreateThread(function()
            while openedStoreMenu do
                Wait(1)
                RageUI.Info("~r~ATTENTION~s~", {"~r~1~s~. Il est interdit de pêcher sans permis de pêche", "~r~2~s~. La pêche est réglementée (voir lois)", "~r~3~s~. L'orpaillage n'est pas légal"}, {})
                RageUI.IsVisible(RMenu:Get("shop", "main"), true, false, false, function()
                    if #shop.Categories > 1 then
                        for k,v in pairs(shop.Categories) do
                            RageUI.Button(v.label, nil, {RightLabel = "→"}, true, function(_,_,_)
                            end, RMenu:Get("shop", v.name))
                        end
                    else
                        for k,v in pairs(shop.Categories.Items) do
                            RageUI.Button(v.label, nil, {RightLabel = "→ "..v.price.."~g~$~s~"}, true, function(h, a, s)
                                if s then
                                    SneakyEvent("sStore:buyItem", lastPos, v.price, v.name)
                                end
                            end)
                        end
                    end
                end)
                if #shop.Categories ~= 1 then
                    for i = 1, #shop.Categories, 1 do
                        RageUI.IsVisible(RMenu:Get(shop.name, shop.Categories[i].name), true, false, false, function()
                            for k,v in pairs(shop.Categories[i].Items) do
                                RageUI.Button(v.label, nil, {RightLabel = "→ "..v.price.."~g~$~s~"}, true, function(h, a, s)
                                    if s then
                                        SneakyEvent("sStore:buyItem", lastPos, v.price, v.name)
                                    end
                                end)
                            end
                        end)
                    end
                end
            end
        end)
    end
end