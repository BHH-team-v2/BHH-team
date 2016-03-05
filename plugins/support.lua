do

local function callback(extra, success, result)
  vardump(success)
  vardump(result)
end

local function run(msg, matches)
  local user = 167268835

  if matches[1] == "support" then
    user = 'user#id'..user
  end

  -- The message must come from a chat group
  if msg.to.type == 'chat' then
    local chat = 'chat#id'..msg.to.id
    chat_add_user(chat, user, callback, false)
    return "سازنده ربات وارد گروه شد"
  else 
    return 'This isnt a chat group!'
  end

end

return {
  description = "support", 
  patterns = {
    "^[!/](support)$"
  }, 
  run = run 
}

end
--Copyright; @Xx_minister_salib_xX
--Persian Translate; @Xx_minister_salib_xX
--ch : @Xx_etehad_salib_xX
