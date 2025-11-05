pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
 center = 64
 degrees_angle = 0
 radians_angle = 0
 turns_angle = 0.5
 lt_x1 = 64
 lt_y1 = 64
 lt_x2 = 110
 lt_y2 = 64
 lt_length = lt_x2 - lt_x1
 pi = 3.14
end

function _update()
 lt_x2 = lt_x1 + cos(turns_angle) * lt_length
 lt_y2 = lt_y1 + sin(turns_angle) * lt_length

 turns_angle += 0.001
 radians_angle = turns_angle * (2 * pi)
 degrees_angle = turns_angle * 360
 
 if turns_angle > 1.0005 then
   turns_angle = 0
 end
 
end

function _draw()
 cls()
 print("the turn system", 11)
 print("===============", 11)
 print("degrees:"..degrees_angle, 8)
 print("radians:"..radians_angle, 9)
 print("turns:"..turns_angle, 12)
 -- y line reference
 -- line(x1, y1, x2, y2, color)
 line(center, 109, center, 18, 6)
 -- x line reference
 line(18, center, 109, center, 6)

 -- turn the line
 line(lt_x1, lt_y1, lt_x2, lt_y2, 12)

 
 -- degress format
 print("0 or 360", center*2 - 40 , center + 2, 8)
 print("90", center + 2 , center - 48, 8)
 print("180", 20, center - 18, 8) 
 print("270", center - 12, center + 28, 8)

 -- radians format
 print("0 or 2*pi", center*2 - 40 , center + 8, 9)
 print("pi/2", center + 2 , center - 42, 9)
 print("pi", 20 , center - 12, 9) 
 print("(3*pi)/2", center - 32, center + 34, 9)
 
 -- turn format
 print("0 or 1", center *2 - 40 , center + 14, 12)
 print("0.25", center + 2, center - 36, 12)
 print("0.5", 20 , center - 6, 12) 
 print("0.75", center - 16, center + 40, 12)
 
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
