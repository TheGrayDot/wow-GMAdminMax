function DropDownTeleport_Initialize(level)

    if level == 1 then
        local info = {}
        info.text = "Teleport Menu"
        info.isTitle = true
        info.notCheckable = true
        UIDropDownMenu_AddButton(info, level)

        for continent, zones in pairs(teleport_locations) do
            local info = {}
            info.text = continent
            info.isTitle = false
            info.notCheckable = true
            info.hasArrow = true
            info.value = continent
            UIDropDownMenu_AddButton(info, level)
        end

    elseif level == 2 then
        for continent, zones in pairs(teleport_locations) do
            for zone, areas in pairs(zones) do
                if UIDROPDOWNMENU_MENU_VALUE == continent then
                    local info = {}
                    info.text = zone
                    info.isTitle = false
                    info.notCheckable = true
                    info.value = zone
                    info.hasArrow = true
                    UIDropDownMenu_AddButton(info, level)
                end
            end
        end

    elseif level == 3 then
        for continent, zones in pairs(teleport_locations) do
            for zone, areas in pairs(zones) do
                for area, coords in pairs(areas) do
                    if UIDROPDOWNMENU_MENU_VALUE == zone then
                        local info = {}
                        info.text = area
                        info.isTitle = false
                        info.notCheckable = true
                        info.value = area
                        info.hasArrow = false
                        info.coords = coords
                        -- SendChatMessage(coords)
                        function info.func(button, arg1, arg2)
                            SendChatMessage(info.coords)
                        end
                        UIDropDownMenu_AddButton(info, level)
                    end
                end
            end
        end
    end
end
