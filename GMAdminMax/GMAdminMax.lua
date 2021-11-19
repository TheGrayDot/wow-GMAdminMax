frameDisplayed = false

-- Load main frame
FrameLoadHandler()
HideMainFrame()

-- Configure slash commands
SLASH_ADMIN1 = "/admin"
SLASH_ADMIN2 = "/gm"

-- Function to handle slash commands
local function CommandHandler(arg)
    if not frameDisplayed then
        ShowMainFrame()
        frameDisplayed = true
    else
        HideMainFrame()
        frameDisplayed = false
    end
end

SlashCmdList["ADMIN"] = CommandHandler;
