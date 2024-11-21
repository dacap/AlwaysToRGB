local function App_sitechange(ev)
  if not ev.fromUndo and app.sprite and app.sprite.colorMode ~= ColorMode.RGB then
    app.command.ChangePixelFormat{ format="rgb" }
  end
end

function init(plugin)
  app.events:on('sitechange', App_sitechange)
end

function exit(plugin)
  app.events:off(App_sitechange)
end
