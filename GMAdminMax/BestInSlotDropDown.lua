function SpawnItems(set)
    for itemSlot, itemData in pairs(set) do
        SendChatMessage(set[itemSlot].ID)
        SendChatMessage(".additem " .. set[itemSlot].ID)
        -- Still need to equip the item
        -- Also should check if item exists in inventory or on character to stop double spawns
    end
end

function DropDownBestInSlot_Initialize(level)

    if level == 1 then
        local info = {}
        info.text = "BIS Menu"
        info.isTitle = true
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, level)

        for class, specs in pairs(bestinslot_data) do
            local info = {}
            info.text = class
            info.isTitle = false
            info.notCheckable = true
            info.hasArrow = true
            info.value = class
            UIDropDownMenu_AddButton(info, level)
        end

    elseif level == 2 then
        for class, specs in pairs(bestinslot_data) do
            for spec, phases in pairs(specs) do
                if UIDROPDOWNMENU_MENU_VALUE == class then
                    local info = {}
                    info.text = spec
                    info.isTitle = false
                    info.notCheckable = true
                    info.value = class .. spec
                    info.hasArrow = true
                    UIDropDownMenu_AddButton(info, level)
                end
            end
        end

    elseif level == 3 then
        for class, specs in pairs(bestinslot_data) do
            for spec, phases in pairs(specs) do
                for phase, set in pairs(phases) do
                    if UIDROPDOWNMENU_MENU_VALUE == class .. spec then
                        local info = {}
                        info.text = phase
                        info.isTitle = false
                        info.notCheckable = true
                        info.value = phase
                        info.hasArrow = false
                        info.set = set
                        function info.func(button, arg1, arg2)
                            SpawnItems(info.set)
                        end
                        UIDropDownMenu_AddButton(info, level)
                    end
                end
            end
        end
    end
end
