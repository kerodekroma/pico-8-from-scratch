pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
  _init_ball()
  _init_more_balls()
end

function _update()
  _update_ball()
  _update_more_balls()
end

function _draw()
  cls()
  _draw_ball()
  _draw_more_balls()
end
-->8
-- balls!

-- single ball
function _init_ball()
 ball = {
  frame=1,
  x=5,
  y=5,
  vel_x=0.5,
  vel_y=0.5
 }
end

function _update_ball()
 ball.x += ball.vel_x
 ball.y += ball.vel_y
end

function _draw_ball()
 spr(ball.frame, ball.x, ball.y)
end

function clone_ball()
 local new_ball = {}
 for key, value in pairs(ball) do
  new_ball[key] = value
 end
 return new_ball
end

-- multiple balls

function _init_more_balls()
  balls = {}
  for i=1,10 do
   local new_ball= clone_ball()
   -- random position
   new_ball.x = i * rnd(10)
   new_ball.y = i * rnd(10)

   -- random velocity
   new_ball.vel_x = i * rnd(2)
   new_ball.vel_y = i * rnd(2)
   add(balls, new_ball)
  end
end

function _update_more_balls()
  for i=1,#balls do
    local ball=balls[i]
    ball.x += ball.vel_x
    ball.y += ball.vel_y
  end
end

function _draw_more_balls()
  print("num balls:"..tostr(#balls))
  for i=1,#balls do
    local ball=balls[i]
    spr(ball.frame,ball.x,ball.y)
  end
end
__gfx__
00000000006666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000006dddd600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007006ddd77d60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770006ddd77d60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770006dddddd60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
007007006dddddd60000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000006dddd600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000006666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
