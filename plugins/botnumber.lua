do

function run(msg, matches)
send_contact(get_receiver(msg), "+13603353378", "NOD32", "BOT", ok_cb, false)
end

return {
patterns = {
"^!botnumber$"

},
run = run
}

end
--Copyright; @Xx_minister_salib_xX
--Persian Translate; @Xx_minister_salib_xX
--ch : @Xx_etehad_salib_xX
