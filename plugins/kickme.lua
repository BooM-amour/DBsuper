local function kick_user(user_id, chat_id)
  local chat = 'chat#id'..chat_id
  local user = 'user#id'..user_id
  chat_del_user(chat, user, function (data, success, result)
    if success ~= 1 then
      send_msg(data.chat, 'Error while kicking user', ok_cb, nil)
    end
  end, {chat=chat, user=user})
end

local function run (msg, matches)
  local user = msg.from.id
  local chat = msg.to.id

  if msg.to.type ~= 'channel' then
    return "Not a SUPER Group!"
  elseif user == tostring(our_id) then
    --[[ A robot must protect its own existence as long as such protection does
    not conflict with the First or Second Laws. ]]--
    return "I won't kick myself!"
  elseif is_sudo(msg) then
    return "I won't kick an admin!"
  else
    channel_kick_user("channel#id"..msg.to.id, 'user#id'..user, ok_cb, false)
   -- kick_user(user, chat)
  end
end

return {
  description = "Bot kicks user",
  usage = {
    "/kickme or /km"
  },
  patterns = {
    "^[#](kickme)$",
    "^[#](km)$"
  },
  run = run
}
