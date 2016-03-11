local function run(msg)
if msg.text == "hi" then
	return "Hi  :)"
end
if msg.text == "Hi" then
	return "Hello Honey :)"
end
if msg.text == "Hello" then
	return "Hi :)"
end
if msg.text == "hello" then
	return "Hi Honey"
end
if msg.text == "Salam" then
	return "Salam JUJU"
end
if msg.text == "salam" then
	return "Salam"
end
if msg.text == "crazy" then    
	return "Best of Bests!"
end
if msg.text == "?" then
	return "WHAT you SAY?!"
end
if msg.text == "asl" then
	return "MAGE FOOZOOLI JAKESH"
end
if msg.text == "dadash crazy" then
	return "Han?"
end
if msg.text == "crazy" then
	return "Koft Chikaresh Dari?"
end
if msg.text == "Crazy" then
	return "Rafte Lala :/"
end
if msg.text == "spa" then
	return "Khabe :|"
end
end

return {
	description = "Chat With Robot Server", 
	usage = "chat with robot",
	patterns = {
    "^[Hh]i$",
	"^[Hh]ello$",
    "^[Ss]alam$",
    "^[Cc]razy$",
    "^[Cc]razy$",
    "^?$",
	"^[Bb]ye$",

}, 
	run = run,
    --privileged = true,
	pre_process = pre_process
}
