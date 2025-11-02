pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
  title = "moving a shape"
  key_log = ""
  my_obj = {}
  my_obj.x = 20
  my_obj.y = 20
  my_obj.size = 10
  my_obj.color = 9
  distance = 5
end

function _update()
  -- validating if an arrow button has been pressed
  if btn(➡️) then 
   key_log = "➡️ is right"
   my_obj.x += distance  
   return
  end
  
  if btn(⬅️) then 
   key_log = "⬅️ is left" 
   my_obj.x -= distance  
   return
  end
  
  if btn(⬆️) then
  	key_log = "⬆️ is up"
  	my_obj.y -= distance
  	return
  end
  
  if btn(⬇️) then 
   key_log = "⬇️ is down"
   my_obj.y += distance
   return
  end

  -- validating other buttons
  if btn(❎) then 
    key_log = "❎ is x" 
    my_obj.x = 64
    my_obj.y = 64
    return
  end
  
  if btn(5) then 
    key_log = "❎ with id 5" 
    return
  end

  -- [shit] + o = 🅾️  
  if btn(🅾️) then
    key_log = "🅾️ is [z] in the keyboard"
    my_obj.color = 3
    return
  end
  
end

function _draw()
 cls()
 print(title)
 print("> "..key_log)
 print("===============")
 rectfill(my_obj.x, my_obj.y, my_obj.x + my_obj.size, my_obj.y + my_obj.size, my_obj.color)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
