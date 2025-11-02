pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
  key_log = ""
  prefix = "button pressed: "
  once_key_log = ""
end

function _update()
  -- validating if an arrow button has been pressed
  -- just once
  if btnp(➡️) then once_key_log = "➡️ is right \n" end
  if btnp(⬅️) then once_key_log = "⬅️ is left" end
  if btnp(⬆️) then once_key_log = "⬆️ is up" end
  if btnp(⬇️) then once_key_log = "⬇️ is down" end

  -- validating other buttons
  if btnp(❎) then once_key_log = "❎ is x" end
  if btnp(5) then once_key_log = "❎ with id 5" end

  -- [shit] + o = 🅾️  
  if btnp(🅾️) then once_key_log = "🅾️ is [z] in the keyboard" end

  -- validating if an arrow button has been pressed
  if btn(➡️) then key_log = "➡️ is right \n" return end
  if btn(⬅️) then key_log = "⬅️ is left" return end
  if btn(⬆️) then key_log = "⬆️ is up" return end
  if btn(⬇️) then key_log = "⬇️ is down" return end

  -- validating other buttons
  if btn(❎) then key_log = "❎ is x" return end
  if btn(5) then key_log = "❎ with id 5" return end

  -- [shit] + o = 🅾️  
  if btn(🅾️) then key_log = "🅾️ is [z] in the keyboard" return end

  -- by default
  key_log = "nothing pressed"
  once_key_log = "none"  
end

function _draw()
 cls()
 print(prefix)
 print("> "..key_log)
 print("===============")
 print("button pressed just once:")
 print("> "..once_key_log)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
