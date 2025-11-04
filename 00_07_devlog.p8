pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
  boxes = {}
end

function _update()
  -- create a random box
  if btnp(❎) then
    local x = flr(rnd(128))
    local y = flr(rnd(128))
    local fill_color = flr(rnd(16)) 
    add(boxes, {
     x = x,
     y = y,
     fill_color = fill_color
    })
  end
  -- reset it!
  if btnp(🅾️) then 
    boxes = {}
  end
end

function _draw()
  cls()
  -- drawing a box using a custom function
  print("rendering a single_box using my own function")
  single_box(10, 10, 10)
  render_boxes()
  print("creating boxes with a random color")
  print("total boxes:"..#boxes, 60, 10)
end

function render_boxes()
  if #boxes > 0 then
	  for i=1, #boxes do
	   box = boxes[i]
	  -- print("x:"..box.x..", y:"..box.y..", color:"..box.fill_color, 10)
	   single_box(
	      box.x, 
	      box.y, 
	      box.fill_color
	   ) 
	  end
  end
end
-->8
-- single function
function single_box(x, y, clr)
  rectfill(x, y, x+10, y+10, clr)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
