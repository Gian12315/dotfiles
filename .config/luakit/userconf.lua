local webview = require "webview"
local modes = require "modes"
modes.add_binds(
    "normal",
    {
        {
            "<Control-c>",
            "Copy selected text.",
            function()
                luakit.selection.clipboard = luakit.selection.primary
            end
        }
    }
)
-- webview.add_signal(
--     "init",
--     function(view)
--         view:add_signal(
--             "navigation-request",
--             function(_, uri)
--                 if uri == "about:blank" then
--                     local html = "<html><body bgcolor='#a0f110'></body></html>"
--                     view:load_string(html, "about:blank")
--                     return true
--                 end
--             end
--         )
--     end
-- )
