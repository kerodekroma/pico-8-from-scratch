pico-8 cartridge // http://www.pico-8.com
version 43
__lua__
function _init()
  fps = 0
  cpu_usage = 0
  is_slow_motion = false
  -- example of a cannon projectile
  cannon = {
   x=10,
   y=42,
   f=1
  }
  init_bullets()
  
  -- playing with intervals
  init_interval()
  -- playing with timeouts
  init_timeout()
   
end

function _update()
  if btnp(🅾️) then
   is_slow_motion = not is_slow_motion
  end
  upd_bullets()
  upd_interval()
  upd_timeout()
end

function _draw()
 cls()
 -- printing the fps using the built-in method:
 -- stat(id)
 -- and the id is 7
 fps = stat(7)
 -- printing the total cpu usage
 -- the id is 1
 cpu_usage = stat(1)
 print("fps:"..tostr(fps))
 print("cpu:"..tostr(cpu_usage))
 print("slow motion: "..tostr(is_slow_motion))
 print("bullet's speed: "..tostr(bullet_speed).." fps")
 print("#bullets: ".. #bullets)
 print("press ❎ to shot a bullet")
 print("press 🅾️ to slow them down")
 rectfill(0, 42, 127, 50, 4)
 draw_bullets(is_slow_motion)
 spr(cannon.f, cannon.x, cannon.y)
 draw_interval()
 draw_timeout()
end

-->8
-- bullets
function init_bullets()
 bullets = {}
 bullet_f = 3
 bullet_speed = 1
end

function upd_bullets()
 if btnp(❎) then 
   add(bullets, {
    x=10,
    y=42,
    speed_x = bullet_speed
   })
   return
 end
end

function draw_bullets(is_slow_motion_active)
 if is_slow_motion_active then
  bullet_speed = 0.5
 end
 
 if not is_slow_motion_active then
  bullet_speed = 1
 end
 
 for i=1,#bullets do
   local bullet = bullets[i]
   if bullet then
	   bullet.x += bullet_speed
	   spr(bullet_f, bullet.x, bullet.y)  
	   -- removing the bullet when
	   -- it's outside the viewport
	   if bullet.x > 132 then
	    deli(bullets, i)
	   end
   end
 end
end
-->8
-- intervals
function init_interval()
 itv_timer = 0
 itv_count = 0
 -- 30 frames = 1 second (at 30 fps)
 itv_duration = 30
 flash_color = 7 -- start white
end

function upd_interval()
 itv_timer += 1
 if itv_timer >= itv_duration then
  itv_count += 1
  -- cycle through colors 8-15
  flash_color = 8 + (itv_count % 7)
  -- reset the interval timer
  itv_timer = 0
 end
end

function draw_interval()
 local y = 52
 print("interval (1 sec)", 0, y)
 print("=========", 0, y + 5)
 rectfill(0, y + 10, 50, y + 15, flash_color)
 print("fired: "..itv_count.." times",0, y + 20, flash_color)
end

-->8
-- timeouts
function init_timeout()
 to_timer = 0
 -- 30 frames = 1 second (at 30 fps)
 to_duration = 90
 to_timer = to_duration
 to_msg = ""
 to_frames_left = flr(to_timer)
 to_secs_left = to_frames_left / 30
end

function upd_timeout()
 if to_timer > 0 then
  to_timer -= 1
  to_frames_left = to_timer
  to_secs_left = to_frames_left/30  
  if to_timer == 0 then
    to_msg = "timeout done!!"
  end
 end
end

function draw_timeout()
 local y = 82
 print("timeout (message in ".. get_secs(to_secs_left) .." sec)", 0, y)
 print("=========", 0, y + 8)
 print("message: "..to_msg, 0, y + 16)
end

function get_secs(value)
 return ceil(value*10)/10
end

__gfx__
00000000444447744444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000477775574444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070075555557444444444dddddd4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000757775574444444447777776000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000755555574444444446666666000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070075555557444444444dddddd4000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000755555574444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000477777744444444444444444000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
