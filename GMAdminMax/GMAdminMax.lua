-- GMAdminFrame - the main frame for the addon
local GMAdminFrame = CreateFrame("Frame", "GMAdminFrame", UIParent)

-- Set dimensions and location
GMAdminFrame:SetHeight(100)
GMAdminFrame:SetWidth(170)
GMAdminFrame:SetPoint("TOPLEFT", 10, 75);

-- Set background to chat frame type
GMAdminFrame:SetBackdrop({
	bgFile = "Interface\\ChatFrame\\ChatFrameBackground",
	edgeFile = "Interface\\ChatFrame\\ChatFrameBackground",
	edgeSize = 1,
})
GMAdminFrame:SetBackdropColor(0, 0, 0, .5)
GMAdminFrame:SetBackdropBorderColor(0, 0, 0)

-- Enable mouse movement for frame
GMAdminFrame:EnableMouse(true)
GMAdminFrame:SetMovable(true)
GMAdminFrame:RegisterForDrag("LeftButton")
GMAdminFrame:SetScript("OnMouseDown", function()
    GMAdminFrame:StartMoving()
end)
GMAdminFrame:SetScript("OnMouseUp", function()
    GMAdminFrame:StopMovingOrSizing()
end)
GMAdminFrame:SetScript("OnHide", function()
    GMAdminFrame:StopMovingOrSizing()
end)

-- -- Add X to close
-- local close = CreateFrame("Button", "YourCloseButtonName", GMAdminFrame, "UIPanelCloseButton")
-- GMAdminFrame.closeButton = close
-- close:SetPoint("TOPRIGHT", GMAdminFrame, "TOPRIGHT")
-- close:SetScript("OnClick", function()
-- 	GMAdminFrame:Hide()
-- end)

-- Add Teleport Button for Drop Down Menu
local DropDownTeleport_Frame = CreateFrame("Frame", "DropDownTeleport_Frame", nil, "UIDropDownMenuTemplate")
UIDropDownMenu_Initialize(DropDownTeleport_Frame, DropDownTeleport_Initialize, nil)

local DropDownTeleport_Button = CreateFrame("Button", "DropDownTeleport_Button", GMAdminFrame, "GameMenuButtonTemplate")
DropDownTeleport_Button:SetText("Teleport Menu")
DropDownTeleport_Button:SetHeight(28)
DropDownTeleport_Button:SetWidth(120)
DropDownTeleport_Button:SetPoint("CENTER", GMAdminFrame, 0, 0)
DropDownTeleport_Button:SetScript("OnClick", function (self)
    ToggleDropDownMenu(1, nil, DropDownTeleport_Frame, "DropDownTeleport_Button", 0, 0)
end)

-- Add BIS Button for Drop Down Menu
local DropDownBestInSlot_Frame = CreateFrame("Frame", "DropDownBestInSlot_Frame", nil, "UIDropDownMenuTemplate")
UIDropDownMenu_Initialize(DropDownBestInSlot_Frame, DropDownBestInSlot_Initialize, nil)

local DropDownTeleport_Button = CreateFrame("Button", "DropDownTeleport_Button", GMAdminFrame, "GameMenuButtonTemplate")
DropDownTeleport_Button:SetText("BIS Menu")
DropDownTeleport_Button:SetHeight(28)
DropDownTeleport_Button:SetWidth(120)
DropDownTeleport_Button:SetPoint("CENTER", GMAdminFrame, 0, -30)
DropDownTeleport_Button:SetScript("OnClick", function (self)
    ToggleDropDownMenu(1, nil, DropDownBestInSlot_Frame, "DropDownTeleport_Button", 0, -30)
end)
