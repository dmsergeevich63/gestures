x_old=0
y_old=0
mode=0
x=0
y=0
xx=0
yy=0
abs_xx=0
abs_yy=0

--g2 = {[0]="ctrlf", [1]="", [2]="ctrlv", [3]="f5", [4]="ctrlc"}--pravay

g3 = {[0]="3", [1]="winshifts", [2]="", [3]="screen", [4]="del"}--koleso
--screen winshifts
g5 = {[0]="ctrlf", [1]="", [2]="ctrlv", [3]="f5", [4]="ctrlc"} --bok dalnya
g4 = {[0]="alttab", [1]="mute", [2]="winctrl+", [3]="", [4]="winctrl-"}--bok blojnia

g6 = {[0]="right", [1]="", [2]="", [3]="", [4]="left"}--verxnia 


a = 1; -- РїРµСЂРµРјРµРЅРЅР°СЏ Р°  
--while a < 20 do -- РІС‹РїРѕР»РЅСЏС‚СЊ С†РёРєР» РґРѕ С‚РµС… РїРѕСЂ, РїРѕРєР° Р° РјРµРЅСЊС€Рµ 20  
  --a = a + 1;  
--OutputLogMessage("000")
--mode=1
--end
    



function OnEvent(event, arg)
  if (event == "PROFILE_ACTIVATED") then
    -- profile has been activated
    OutputLogMessage("activated")
    mode=1
  end
  if (event == "PROFILE_DEACTIVATED") then
    -- profile has been deactivated
    OutputLogMessage("deactivated")
    mode=0
  end

  if (mode== 1) then

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 3) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
    a=0
  --while a < 1 do -- РІС‹РїРѕР»РЅСЏС‚СЊ С†РёРєР» РґРѕ С‚РµС… РїРѕСЂ, РїРѕРєР° Р° РјРµРЅСЊС€Рµ 20  
  a = a + 1   
  --slep(50)
  --MoveMouseRelative(1000, 1)
  --GetMouseWheel()
  --OutputLogMessage(GetMouseWheel());
  --end

  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 3) then
    x, y = GetMousePosition();
    MoveMouseTo(x_old, y_old)
    OutputLogMessage( gesture(g3[0],g3[1],g4[2],g3[3],g3[4]))
    OutputLogMessage("RELEASED",x_old, y_old);

  end
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 5) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 5) then
    x, y = GetMousePosition();
    MoveMouseTo(x_old, y_old)
    OutputLogMessage( gesture(g5[0],g5[1],g5[2],g5[3],g5[4]))
    OutputLogMessage("RELEASED",x_old, y_old);
  end
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 4) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 4) then
    x, y = GetMousePosition();
    MoveMouseTo(x_old, y_old)
    OutputLogMessage( gesture(g4[0],g4[1],g4[2],g4[3],g4[4]))
    OutputLogMessage("RELEASED",x_old, y_old);

  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 6) then
    -- Mouse Button 6 has been pressed
    x_old=0
    y_old=0
    x_old, y_old= GetMousePosition();
    OutputLogMessage("PRESSED ", x, y, arg);
  end
  if (event == "MOUSE_BUTTON_RELEASED" and arg == 6) then
    x, y = GetMousePosition();
    MoveMouseTo(x_old, y_old)
    OutputLogMessage( gesture(g6[0],g6[1],g6[2],g6[3],g6[4]))
    OutputLogMessage("RELEASED",x_old, y_old);

  end
end
end

function gesture(m0,m1,m2,m3,m4)
  xx = x - x_old
  yy = y - y_old
  if (xx<0) then
  abs_xx=xx*-1
else abs_xx =xx
end

  if (yy<0) then
  abs_yy =yy*-1
  else abs_yy =yy
  end
  if (x== x_old and  y== y_old) then --0


  --  PlayMacro(m0)
   -- return 0
  end

  if (abs_xx<=25 or  abs_yy<=25) then --0 droj ryki


    PlayMacro(m0)
    return 0
  end
  if (xx > abs_yy) then --2 if (xx > Math.abs(yy)) then


    PlayMacro(m2);
    return 2
  end
  if (xx > (yy)) then--1

    PlayMacro(m1);
    return 1

  end

  if (abs_xx < (yy)) then--3 if (math.abs(xx) < (yy)) then

    PlayMacro(m3);
    return 3
  end

  if ((xx) < (yy)) then--4

    PlayMacro(m4);
    return 4
  end

end
-- Mouse Button 6 has been released
--PressKey("a")
--ReleaseKey("a")
--PressAndReleaseKey("lctrl", "")
--PressAndReleaseKey("f", "")


--PressKey("lctrl")
--  PressKey("f")
--ReleaseKey("f")
-- ReleaseKey("lctrl")


--PressKey("latl")
--PressKey("lshift")
--   PressKey("m")
--  ReleaseKey("m")
--  ReleaseKey("lshift")
--  ReleaseKey("latl")


-- PressKey("delete")
--   ReleaseKey("delete")
--PlayMacro("del");