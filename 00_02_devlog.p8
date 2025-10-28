pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
 -- strings
 demo_text = "cool"
 -- numbers
 demo_counter = 0

 -- table obj - key.value representation
 demo_table = {}
 demo_table.x = 10
 demo_table.y = 10
 demo_table.title = "yeah!"
 

 -- table obj - array representation by index
 demo_table_array = {}
 demo_table_array[0] = "one item"
 demo_table_array[1] = "second"

 -- alternative way
 -- important: 
 -- the initial index is 1 not 0
 demo_table_array2 = {
  "one item here",
  "2nd item here"
 } 
  
 is_text_cool = false
 
end

function _update()
 demo_counter += 0.1
 
 if demo_text == "cool" then
  is_text_cool = true
 end
 
 if demo_counter >= 5 then
  demo_counter = 0   
 end 
end

function _draw()
 cls() -- clear the screen
 print("value types")
 print("===========")
 print("my single string: "..demo_text)
 print("my first number counter: "..demo_counter)
 print("is my text cool? casting a boolean value"..tostr(is_text_cool))
 
 if demo_counter == 0 then
   print("demo_counter starts again")
 end 
 
 print("========")
 print("tables")
 print(">table key,value")
 print(">demo_table has a title: "..demo_table.title)

 print("=====")
 print("looping demo_table_array")
 print("=====")
 for i=0, #demo_table_array do
  print(demo_table_array[i])
 end

 print("=====")
 print("looping demo_table_array2")
 print("=====")
 for i=1, #demo_table_array2 do
  print(demo_table_array2[i])
 end
 
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
