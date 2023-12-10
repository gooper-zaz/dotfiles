-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

local custom = require("config")

for k, v in pairs(custom) do
  if config[k] ~= nil then
    wezterm.log_warn(
      'Duplicate config option detected: ',
      { old = config[k], new = custom[k] }
    )
    goto continue
  end
  config[k] = v
  ::continue::
end

return config
