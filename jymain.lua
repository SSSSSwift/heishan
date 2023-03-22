
------------------------------------------------------------
-----------金庸群侠传复刻之Lua版----------------------------

--版权所无，敬请复制
--您可以随意使用代码

--本代码由游泳的鱼编写

--本模块是lua主模块，由C主程序JYLua.exe调用。C程序主要提供游戏需要的视频、音乐、键盘等API函数，供lua调用。
--游戏的所有逻辑都在lua代码中，以方便大家对代码的修改。
--为加快速度，显示主地图/场景地图/战斗地图部分用C API实现。

-----------------------------------------------------------------------------

-----黑山群侠传 基于金庸群侠传复刻之Lua版制作 在此感谢各位前辈的无私分享-----

-----本游戏全部代码依然为开源代码，供真正热爱游戏的朋友学习交流用------------

-----四大山和狗请不要使用----------------------------------------------------

-----抱有跟四大山一样想法的人请不要使用--------------------------------------

------------------------------------------------无酒不欢 Oct.14/2017---------

function pngxy(id,pngid,x,y,z)
lib.LoadPNG(id,pngid,x,y,z)
end 

function psx(id,str) 
    return JY.Person[id][str]
end

function ztd(i,str,t)
	local id = WAR.Person[i]["人物编号"]
	if i == nil or str == nil then
		do return end
	end	
	if t == nil then
		t = 0
	end	
	if WAR.TXXS[id] == nil then
		WAR.TXXS[id] = 1
	end	 
	if str == "生命点数" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"生命",t)
	elseif str == "内力点数" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"内力",t)
	elseif str == "体力点数" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"体力",t)
	elseif str == "中毒点数" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"中毒程度",t)
	elseif str == WAR.BFXS then
		WAR.BFXS[id] = 1
		AddPersonAttrib(id,"冰封程度",t)
	elseif str == WAR.ZSXS then
		WAR.ZSXS[id] = 1
		AddPersonAttrib(id,"灼烧程度",t)
	elseif str == "内伤点数" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"受伤程度",t)
	elseif str == "集气位置" then
		if t >= 0 then
			--WAR.Person[i].TimeAdd = limitX((WAR.Person[i].TimeAdd or 0) + t,-500,999)
			WAR.Person[i].TimeAdd = (WAR.Person[i].TimeAdd or 0 ) + t
			if WAR.Person[i].TimeAdd > 1000 then WAR.Person[i].TimeAdd = 1000 end
		else

		end	
	else
	
	end	
	--Cat('数值显示')
	--return WAR.Person[i][str]
end

function Menu_Gongti(pid,num) --功体选择 1外功，2外功二，3内功，4轻功，5招架
    local tl = {'优先使用','主运技能','主运内功','主运轻功'} 
    local bx = CC.ScreenW/1360
    local by = CC.ScreenH/768
	local size = CC.DefaultFont*0.7
	local size1 = CC.DefaultFont*0.6
	local menu = {};
	local menu1 = {};
	local xz = {'运功','停运','取消'}
	--lib.LoadPNG(91,(lv+149)*2,bx*660+size1*6,by*60+i*h,1)
    -- lib.LoadPNG(91,163*2,CC.ScreenW/2,CC.ScreenH/2-by*80,2,200,nil,bx*680)
    -- lib.LoadPNG(91,164*2,CC.ScreenW/2,CC.ScreenH/2-by*127.5+by*47.5,2,200,nil,bx*200)
    -- lib.LoadPNG(91,164*2,CC.ScreenW/2,CC.ScreenH/2-by*127.5+by*95,2,200,nil,bx*200)
    -- lib.LoadPNG(91,164*2,CC.ScreenW/2,CC.ScreenH/2-by*127.5,2,200,nil,bx*200)
	--local r = tjm13(xz,#xz,CC.ScreenW/2,CC.ScreenH/2-by*127.5,C_WHITE,size,nil,by*47.5)
	
	lib.LoadPNG(91,163*2,CC.ScreenW/2-by*350,CC.ScreenH/2-by*160,1)
    lib.LoadPNG(91,164*2,CC.ScreenW/2-by*100,CC.ScreenH/2-by*127.5+by*47.5-by*15,1)
    lib.LoadPNG(91,164*2,CC.ScreenW/2-by*100,CC.ScreenH/2-by*127.5+by*95-by*15,1)
    lib.LoadPNG(91,164*2,CC.ScreenW/2-by*100,CC.ScreenH/2-by*127.5-by*15,1)
    local r = tjm13(xz,#xz,CC.ScreenW/2,CC.ScreenH/2-by*127.5,C_WHITE,size,nil,by*47.5)
    if r == 3 or r <= 0 then 
       return 0;
    end
    if r == 2 then 
	   JY.Person[pid][tl[num]] = 0
	   return 0;
    end
	local WGid
	-- for i = 1, CC.Kungfunum do
	    -- WGid = JY.Person[pid]["武功"..i];
		-- if WGid > 0 then
           -- if num < 3 then 
		      -- if JY.Wugong[WGid]['武功类型'] < 5 then 
		         -- menu[#menu+1] = JY.Wugong[WGid]['名称']
			     -- menu1[#menu1+1] = WGid
		      -- end
		   -- else
		      -- if wglx(WGid,num+2) then 
		         -- menu[#menu+1] = JY.Wugong[WGid]['名称']
			     -- menu1[#menu1+1] = WGid
		      -- end
		   -- end
		-- end
	-- end
	for i = 1, CC.Kungfunum do
	    WGid = JY.Person[pid]["武功"..i];
		if WGid > 0 then
           if num == 1 then 
		      if JY.Wugong[WGid]['武功类型'] < 6 then 
		         menu[#menu+1] = JY.Wugong[WGid]['名称']
			     menu1[#menu1+1] = WGid
		      end
		   elseif num == 3 then
			if JY.Wugong[WGid]['武功类型'] == 6 then 
		         menu[#menu+1] = JY.Wugong[WGid]['名称']
			     menu1[#menu1+1] = WGid
		     end
		   elseif num == 4 then
		     if JY.Wugong[WGid]['武功类型'] == 7 then 
		         menu[#menu+1] = JY.Wugong[WGid]['名称']
			     menu1[#menu1+1] = WGid
		     end
		   end
		end
	end

	for i = 1, CC.Skillnum do
	    WGid = JY.Person[pid]["技能"..i];
		if WGid > 0 then
           if num == 2 then 
		      menu[#menu+1] =  CC.JL[WGid].name
			  menu1[#menu1+1] = WGid
		   end
		end
	end
	
	--lib.LoadPNG(91,126*2,bx*745,by*46,1,nil,nil,bx*380)
	lib.LoadPNG(91,165*2,bx*745,by*46,1)
	if #menu <= 0 then
         DrawString(bx*935-string.len('没有可运武功')/4*size,by*136-size/2,'没有可运武功',C_WHITE,size)
	   ShowScreen()
	   WaitKey()
	   return 0;
	end
    local r = tjm13(menu,#menu,bx*935,by*56+size1,C_WHITE,size1,5,nil)
	if r <= 0 then 
	   return 0 
	end
	JY.Person[pid][tl[num]] = menu1[r] --设置功体	
	
	--内功套路根据当前内功调整生命内力
	--切换内功需谨慎
end
--pic贴图位置
function picxy(id,picid,x,y,z,t)
lib.PicLoadCache(id,picid,x,y,z,t)
end 

--人物姓名
function name(id) 
   return JY.Person[id]['姓名']
end


function tjm(x,y,str,color,size,xnum,hnum,first,last)
	if xnum == nil then 
		xnum = #str
	end  
 
	if x==-1 then
		local ll=#str;
		local w=size*ll/2+2*CC.MenuBorderPixel;
		x=(CC.ScreenW-size/2*ll-2*CC.MenuBorderPixel)/2;
	end

	if y == -1 then
		y = (CC.ScreenH - size - 2 * CC.MenuBorderPixel) / 2
	end
	
	local ynum=size
	local T2={};
	T2["Ｒ"] = PinkRed
	T2["Ｌ"] = LimeGreen
	T2["Ｂ"] = C_BLACK
	T2["Ｗ"] = C_WHITE
	T2["Ｏ"] = C_ORANGE
	T2["Ｄ"] = M_DeepSkyBlue
	T2["Ｚ"] = Violet
	T2['Ｇ'] = C_GOLD
	local cx,cy=0,0;
	--local sid=lib.SaveSur(0,0,CC.ScreenW,CC.ScreenH);
	while string.len(str)>=1 do
		if JY.Restart == 1 then
			break
		end
		local try=string.sub(str,1,1)
		local control=false;

		local hs = size+CC.RowPixel
		if hnum ~= nil then 
			hs = hnum
		end
		if string.byte(try)>127 then --中文
			local s=string.sub(str,1,2);
			str=string.sub(str,3,-1);

			if T2[s] ~= nil then 
				--if s ~= "Ｗ" then
					color = T2[s]
				--else
					--color = C_BLACK
				--end	
				control = true;
			end
            
			if not control then
                if s == '*' then 
                   -- cy = cy + 1 
                  --  cx = 0
                else
                    if first ~= nil then
                        if last ~= nil then
                            if cy >= first and cy < last then
                                lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                            end
                        else 
                            if cy >= first then
                                lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                            end	  
                        end
                    else 
                        if last ~= nil then
                            if cy < last then
                                lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                            end
                        else 
                            lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                        end		  
                    end
                    cx=cx+1;
                end
			end
		else
			local s=try
			str=string.sub(str,2,-1);
            if s == 'Ｎ' or s == '*' then 
                cy = cy + 1 
                cx = 0
            else
                if first ~= nil then
                    if last ~= nil then
                        if cy >= first and cy < last then
                            lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                        end
                    else 
                        if cy >= first then
                            lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                        end	  
                    end
                else 
                    if last ~= nil then
                        if cy < last then
                            lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                        end
                    else 
                        lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
                    end		  
                end
                cx=cx+1;
            end
			
		end

		if not control then

			if cx > xnum then
				cx = 0;
				--字体结束不再进入下一行
				if string.len(str) >= 1 then 
					cy = cy + 1;
				end
			end
		end

	end

	--lib.FreeSur(sid);
	return cy+1
end
function QZXS(s)
  DrawStrBoxWaitKey(s, C_GOLD, 30)
end
function tb(s)
	DrawStrBoxWaitKey(s, C_GOLD, 30)
end

function Duiwumb()
	local bx = CC.ScreenW/1360
	local by = CC.ScreenH/768
	local zuobiao = {10,312}			
	local tb = 1 
	local lieshu = 8
	local pg = 0
	local jg = 20
	local liebiao = {}
	local cl = C_CYGOLD
	local size = CC.DefaultFont
	local id = - 1
	local TB = 0
	while true do 
		Cls()
		if JY.Restart == 1 then
			break
		end	
		local i = 0
		lib.Background(0,CC.ScreenH/2-50,CC.ScreenW,CC.ScreenH/2+150,98)

		for ii = 1,CC.TeamNum do 
			if JY.Base['队伍'..ii] >= 0 then 
				liebiao[ii] = {JY.Person[JY.Base['队伍'..ii]]['姓名'],JY.Base['队伍'..ii]}				
			end	
		end		
		if lieshu > #liebiao then
			lieshu = #liebiao
		end
		for ai = 1,lieshu do
			local tw = 0
			if CC.Png[JY.Person[liebiao[ai+pg][2]]['半身像']] ~= nil then 
				tw = CC.Png[JY.Person[liebiao[ai+pg][2]]['半身像']]
			end
			local cl1 = C_CYGOLD
			local pc = 72
			local pc1 = 74
			local pc2 = 72
			if tb == ai then
				cl1 = C_RED				
			end					
			DrawString(bx*zuobiao[1]+bx*62-string.len(liebiao[ai+pg][1])/4*size+(ai-1)*bx*152,by*zuobiao[2]+by*150,liebiao[ai+pg][1],cl1,size)
			local headid = JY.Person[liebiao[ai+pg][2]]["半身像"]
			lib.PicLoadCache(92,116*2,bx*zuobiao[1]+(ai-1)*bx*152,by*zuobiao[2],1)
			lib.LoadPNG(1,headid*2,bx*zuobiao[1]+(ai-1)*bx*152,by*zuobiao[2],1)
			lib.PicLoadCache(92,117*2,bx*zuobiao[1]+(ai-1)*bx*152,by*zuobiao[2],1)
			if tb == ai then
				TB = ai + pg
				lib.LoadPNG(91,pc*2,bx*zuobiao[1]+(ai-1)*bx*152,by*zuobiao[2],1)
				pc = pc + 1
				if pc > pc1 then
					pc = pc2
				end
			end		
		end		
		ShowScreen()
		lib.Delay(40)
		local X,ktype,mx,my = lib.GetKey()
		if X == VK_ESCAPE or ktype == 4 then
			return pg
		elseif X == VK_SPACE or X == VK_RETURN then 
			--ShowPersonStatus(TB)
			PersonStatus(TB)
		elseif  X == VK_RIGHT then
			tb = tb + 1
			if tb > lieshu then
				pg = pg + 1
				tb = lieshu
			end	
			if tb + pg > #liebiao then
				tb = 1
				pg = 0
			end	
		elseif  X == VK_LEFT then
			if pg > 0 then
				if tb > 1 then
					tb = tb - 1
				else
					pg = pg - 1
				end	
			else
				tb = tb - 1
				if tb < 1 then
					tb = lieshu
				end	
			end	
		elseif X == VK_UP or ktype == 6 then
			pg = pg - lieshu
			tb = 1
			if pg < 0 then 
				pg = 0 
			end
		elseif X == VK_DOWN or ktype == 7 then
			pg = pg + lieshu
			if pg + lieshu > #liebiao then 
				pg = #liebiao-lieshu
				tb = 1
			end
		else
			local mxx = false
			for j = 1,lieshu do
				if mx > bx*10+(j-1)*bx*152 and mx < bx*152+(j-1)*bx*152 and my > by*300 and my < by*500 then
					tb = j
					mxx = true
					break
				end
			end
			if mxx == true and ktype == 3 then
				--ShowPersonStatus(TB)
				PersonStatus(TB)				
			end						
		end
	end
end

function tjm9(x,y,str,color,size,xnum,hnum,first,last)
if xnum == nil then 
   xnum = #str
end  
 
if x==-1 then
   local ll=#str;
   local w=size*ll/2+2*CC.MenuBorderPixel;
   x=(CC.ScreenW-size/2*ll-2*CC.MenuBorderPixel)/2;
end

if y == -1 then
   y = (CC.ScreenH - size - 2 * CC.MenuBorderPixel) / 2
end
	
local ynum=size
local T2={{"Ｒ",C_RED},{"Ｇ",M_Green},{"Ｂ",C_BLACK},{"Ｗ",C_WHITE},{"Ｏ",C_ORANGE},{"Ｍ",M_Gray},{"Ｙ",M_Yellow},{"Ｚ",M_Orange}};

local cx,cy=0,0;
local sid=lib.SaveSur(0,0,CC.ScreenW,CC.ScreenH);
while string.len(str)>=1 do
 local try=string.sub(str,1,1)
 local control=false;

 local hs = size+CC.RowPixel
 if hnum ~= nil then 
    hs = hnum
 end
 if string.byte(try)>127 then --中文
    local s=string.sub(str,1,2);
    str=string.sub(str,3,-1);

    for i,v in pairs(T2) do
        if s==v[1] then
           color=v[2];
           control=true;
        break;
        end
    end

    if not control then
	   if first ~= nil then
	      if last ~= nil then
	         if cy >= first and cy < last then
                lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
		     end
		  else 
	         if cy >= first then
                lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
		     end	  
		  end
	   else 
          if last ~= nil then
	         if cy < last then
                lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
		     end
		  else 
		     lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
          end		  
	   end
       cx=cx+1;
    end

 else
    local s=try
    str=string.sub(str,2,-1);
	   if first ~= nil then
	      if last ~= nil then
	         if cy >= first and cy < last then
				lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
		     end
		  else 
	         if cy >= first then
				lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
		     end	  
		  end
	   else 
          if last ~= nil then
	         if cy < last then
				lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
		     end
		  else 
			 lib.DrawStr(x+size*cx,y+(hs)*cy,s,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
          end		  
	   end
    cx=cx+0.5;
 end

 if not control then

    if cx > xnum then
       cx = 0;
	   --字体结束不再进入下一行
	   if string.len(str) >= 1 then 
          cy = cy + 1;
	   end
       if cy >= ynum then
          cy = 0;
          WaitKey();
          lib.LoadSur(sid,0,0);
       end
    end
 end

 end

 lib.FreeSur(sid);
 return cy+1
end


function tjm30(id,wg,x,y)
   if x == nil or y == nil then 
      x,y = CC.ScreenW/2,CC.ScreenH/2
   end
   
   --武功等级根据当前人物武功等级
   local level = math.modf(tjm5(id,wg)/100)+1
   --获取武功的范围
   --say("武功等级"..level,0,1)
   if level == 10 then
	level = 11
   end
   
   local m1, m2, a1, a2, a3, a4, a5 =refw(wg, level,id)-- refw(wg, level,id)
   local movefanwei = {m1, m2}   --可移动的范围
   local atkfanwei = {a1, a2, a3, a4, a5}   --攻击范围
   local xx,yy = 6,6 
   local px,py = xx,yy

   if a1 >= 10 and a1 <= 12 then
      yy = 6 + math.ceil(a2/2)-1
	  py = yy + 1
   end
   
  tjm31(x,y,xx,yy,atkfanwei,px,py)
end
function tjm5(id,wgid)
   if wgid == '斗转' then 
	  return psx(id,'斗转等级')
   elseif wgid == '左右互搏' then 
      return psx(id,'左右等级')
   end
   for i = 1,CC.Kungfunum do 
      if JY.Person[id]["武功"..i] == wgid and JY.Person[id]["武功等级"..i] > 0 then
	     return JY.Person[id]["武功等级"..i]  
      end 
   end
   return 0
end
function tjm31(zx,zy,x, y, fanwei, cx, cy)

  local x0, y0 = cx, cy

  local kind = fanwei[1]			--攻击范围
  local len1 = fanwei[2]
  local len2 = fanwei[3]
  local len3 = fanwei[4]
  local len4 = fanwei[5]
  local xy = {}
  local num = 0
  if kind == 0 then
    num = 1
    xy[1] = {x, y}

  elseif kind == 1 then
    if not len1 then
      len1 = 0
    end
    if not len2 then
      len2 = 0
    end
    num = num + 1
    xy[num] = {x, y}
    for i = 1, len1 do
      xy[num + 1] = {x + i, y}
      xy[num + 2] = {x - i, y}
      xy[num + 3] = {x, y + i}
      xy[num + 4] = {x, y - i}
      num = num + 4
    end
    for i = 1, len2 do
      xy[num + 1] = {x + i, y + i}
      xy[num + 2] = {x - i, y - i}
      xy[num + 3] = {x - i, y + i}
      xy[num + 4] = {x + i, y - i}
      num = num + 4
    end

  elseif kind == 2 then
    for tx = x - len1, x + len1 do
      for ty = y - len1, y + len1 do
        if len1 < math.abs(tx - x) + math.abs(ty - y) then
          
        else
        	num = num + 1
        	xy[num] = {tx, ty}
        end
        
      end
    end
	
	
  elseif kind == 3 then
    if not len2 then
      len2 = len1
    end
    local dx, dy = math.abs(x - x0), math.abs(y - y0)
    if dy < dx then
      len1, len2 = len2, len1
    end
    for tx = x - len1, x + len1 do
      for ty = y - len2, y + len2 do
        num = num + 1
        xy[num] = {tx, ty}
      end
    end
  elseif kind == 5 then
    if not len1 then
      len1 = 0
    end
    if not len2 then
      len2 = 0
    end
    num = num + 1
    xy[num] = {x, y}
    for i = 1, len1 do
      xy[num + 1] = {x + i, y}
      xy[num + 2] = {x - i, y}
      xy[num + 3] = {x, y + i}
      xy[num + 4] = {x, y - i}
      num = num + 4
    end
    if len2 > 0 then
      xy[num + 1] = {x + 1, y + 1}
      xy[num + 2] = {x + 1, y - 1}
      xy[num + 3] = {x - 1, y + 1}
      xy[num + 4] = {x - 1, y - 1}
      num = num + 4
    end
    for i = 2, len2 do
      xy[num + 1] = {x + i, y + 1}
      xy[num + 2] = {x - i, y - 1}
      xy[num + 3] = {x - i, y + 1}
      xy[num + 4] = {x + i, y - 1}
      xy[num + 5] = {x + 1, y + i}
      xy[num + 6] = {x - 1, y - i}
      xy[num + 7] = {x - 1, y + i}
      xy[num + 8] = {x + 1, y - i}
      num = num + 8
    end
  elseif kind == 6 then
    if not len2 then
      len2 = len1
    end
    xy[1] = {x + 1, y}
    xy[2] = {x - 1, y}
    xy[3] = {x, y + 1}
    xy[4] = {x, y - 1}
    num = num + 4
    if len1 > 0 or len2 > 0 then
      xy[5] = {x + 1, y + 1}
      xy[6] = {x + 1, y - 1}
      xy[7] = {x - 1, y + 1}
      xy[8] = {x - 1, y - 1}
      num = num + 4
      for i = 2, len1 do
        xy[num + 1] = {x + i, y + 1}
        xy[num + 2] = {x - i, y + 1}
        xy[num + 3] = {x + i, y - 1}
        xy[num + 4] = {x - i, y - 1}
        num = num + 4
      end
      for i = 2, len2 do
        xy[num + 1] = {x + 1, y + i}
        xy[num + 2] = {x + 1, y - i}
        xy[num + 3] = {x - 1, y + i}
        xy[num + 4] = {x - 1, y - i}
        num = num + 4
      end
    end
  elseif kind == 7 then
    if not len2 then
      len2 = len1
    end
    if len1 == 0 then
      for i = y - len2, y + len2 do
        num = num + 1
        xy[num] = {x, i}
      end
    elseif len2 == 0 then
      for i = x - len1, x + len1 do
        num = num + 1
        xy[num] = {i, y}
      end
    else
      for i = x - len1, x + len1 do
        num = num + 1
        xy[num] = {i, y}
        num = num + 1
        xy[num] = {i, y + len2}
        num = num + 1
        xy[num] = {i, y - len2}
      end
      for i = 1, len2 - 1 do
        xy[num + 1] = {x, y + i}
        xy[num + 2] = {x, y - i}
        xy[num + 3] = {x - len1, y + i}
        xy[num + 4] = {x - len1, y - i}
        xy[num + 5] = {x + len1, y + i}
        xy[num + 6] = {x + len1, y - i}
        num = num + 6
      end
    end
  elseif kind == 8 then
    xy[1] = {x, y}
    num = 1
    for i = 1, len1 do
      xy[num + 1] = {x + i, y}
      xy[num + 2] = {x - i, y}
      xy[num + 3] = {x, y + i}
      xy[num + 4] = {x, y - i}
      xy[num + 5] = {x + i, y + len1}
      xy[num + 6] = {x - i, y - len1}
      xy[num + 7] = {x + len1, y - i}
      xy[num + 8] = {x - len1, y + i}
      num = num + 8
    end
  elseif kind == 9 then
    xy[1] = {x, y}
    num = 1
    for i = 1, len1 do
      xy[num + 1] = {x + i, y}
      xy[num + 2] = {x - i, y}
      xy[num + 3] = {x, y + i}
      xy[num + 4] = {x, y - i}
      xy[num + 5] = {x - i, y + len1}
      xy[num + 6] = {x + i, y - len1}
      xy[num + 7] = {x + len1, y + i}
      xy[num + 8] = {x - len1, y - i}
      num = num + 8
    end
  --elseif x == x0 and y == y0 then
  --  return 0
  elseif kind == 10 then
    if not len2 then
      len2 = 0
    end
    if not len3 then
      len3 = 0
    end
    if not len4 then
      len4 = 0
    end
    local fx, fy = x - x0, y - y0
    if fx > 0 then
      fx = 1
    elseif fx < 0 then
      fx = -1
    end
    if fy > 0 then
      fy = 1
    elseif fy < 0 then
      fy = -1
    end
    local dx1, dy1, dx2, dy2 = -fy, fx, fy, -fx
    dx1 = -(dx1 + fx) / 2
    dx2 = -(dx2 + fx) / 2
    dy1 = -(dy1 + fy) / 2
    dy2 = -(dy2 + fy) / 2
    if dx1 > 0 then
      dx1 = 1
    elseif dx1 < 0 then
      dx1 = -1
    end
    if dx2 > 0 then
      dx2 = 1
    elseif dx2 < 0 then
      dx2 = -1
    end
    if dy1 > 0 then
      dy1 = 1
    elseif dy1 < 0 then
      dy1 = -1
    end
    if dy2 > 0 then
      dy2 = 1
    elseif dy2 < 0 then
      dy2 = -1
    end
    for i = 0, len1 - 1 do
      num = num + 1
      xy[num] = {x + i * fx, y + i * fy}
    end
    for i = 0, len2 - 1 do
      num = num + 1
      xy[num] = {x + dx1 + i * fx, y + dy1 + i * fy}
      num = num + 1
      xy[num] = {x + dx2 + i * fx, y + dy2 + i * fy}
    end
    for i = 0, len3 - 1 do
      num = num + 1
      xy[num] = {x + 2 * dx1 + i * fx, y + 2 * dy1 + i * fy}
      num = num + 1
      xy[num] = {x + 2 * dx2 + i * fx, y + 2 * dy2 + i * fy}
    end
    for i = 0, len4 - 1 do
      num = num + 1
      xy[num] = {x + 3 * dx1 + i * fx, y + 3 * dy1 + i * fy}
      num = num + 1
      xy[num] = {x + 3 * dx2 + i * fx, y + 3 * dy2 + i * fy}
    end
  elseif kind == 11 then
    local fx, fy = x - x0, y - y0
    if fx > 1 then
      fx = 1
    elseif fx < -1 then
      fx = -1
    end
    if fy > 1 then
      fy = 1
    elseif fy < -1 then
      fy = -1
    end
    local dx1, dy1, dx2, dy2 = -fy, fx, fy, -fx
    if fx ~= 0 and fy ~= 0 then
      dx1 = -(dx1 + fx) / 2
      dx2 = -(dx2 + fx) / 2
      dy1 = -(dy1 + fy) / 2
      dy2 = -(dy2 + fy) / 2
      len1 = math.modf(len1 * 0.7071)
      for i = 0, len1 do
        num = num + 1
        xy[num] = {x + i * fx, y + i * fy}
        for j = 1, 2 * i + 1 do
          num = num + 1
          xy[num] = {x + i * fx + j * (dx1), y + i * fy + j * (dy1)}
          num = num + 1
          xy[num] = {x + i * fx + j * (dx2), y + i * fy + j * (dy2)}
        end
      end
    else
      for i = 0, len1 do
        num = num + 1
        xy[num] = {x + i * fx, y + i * fy}
        for j = 1, len1 - i do
          num = num + 1
          xy[num] = {x + i * fx + j * (dx1), y + i * fy + j * (dy1)}
          num = num + 1
          xy[num] = {x + i * fx + j * (dx2), y + i * fy + j * (dy2)}
        end
      end
    end
  elseif kind == 12 then
    local fx, fy = x - x0, y - y0
    if fx > 1 then
      fx = 1
    elseif fx < -1 then
      fx = -1
    end
    if fy > 1 then
      fy = 1
    elseif fy < -1 then
      fy = -1
    end
    local dx1, dy1, dx2, dy2 = -fy, fx, fy, -fx
    if fx ~= 0 and fy ~= 0 then
      dx1 = (dx1 + fx) / 2
      dx2 = (dx2 + fx) / 2
      dy1 = (dy1 + fy) / 2
      dy2 = (dy2 + fy) / 2
      len1 = math.modf(len1 * 1.41421)
      for i = 0, len1 do
        if i <= len1 / 2 then
          num = num + 1
          xy[num] = {x + i * fx, y + i * fy}
        end
        for j = 1, len1 - i * 2 do
          num = num + 1
          xy[num] = {x + i * fx + j * (dx1), y + i * fy + j * (dy1)}
          num = num + 1
          xy[num] = {x + i * fx + j * (dx2), y + i * fy + j * (dy2)}
        end
      end
    else
      for i = 0, len1 do
        num = num + 1
        xy[num] = {x + i * fx, y + i * fy}
        for j = 1, i do
          num = num + 1
          xy[num] = {x + i * fx + j * (dx1), y + i * fy + j * (dy1)}
          num = num + 1
          xy[num] = {x + i * fx + j * (dx2), y + i * fy + j * (dy2)}
        end
      end
    end
  elseif kind == 13 then
    local fx, fy = x - x0, y - y0
    if fx > 1 then
      fx = 1
    elseif fx < -1 then
      fx = -1
    end
    if fy > 1 then
      fy = 1
    elseif fy < -1 then
      fy = -1
    end
    local xx = x + fx * len1
    local yy = y + fy * len1
    for tx = xx - len1, xx + len1 do
      for ty = yy - len1, yy + len1 do
        if len1 < math.abs(tx - xx) + math.abs(ty - yy) then
          break;
        end
        num = num + 1
        xy[num] = {tx, ty}
      end
    end
  else
    return 0
  end

  local w = CC.ScreenW/1360*12
  local zx1 = zx + w
  local zy1 = zy + w
   
  local menu = {}
  -- for i = 1,11 do 
      -- menu[i] = {}
  -- end
  for i = 1,19 do 
      menu[i] = {}
  end
  
  --say("测试"..num,0,1)
  for i = 1,num do 
      menu[xy[i][1]+4][xy[i][2]+4] = 1
  end
  
  for i = 1,19 do 
      for j = 1,19 do
	      local color = 0
		  if menu[i][j] == 1 then
		     color = M_YellowGreen
		  end
		  if i == cx+4 and j == cy+4 then
		     if menu[i][j] == 1 then
				color = C_ORANGE
			 else 	
			    color = C_RED
			 end
		  end
		  lib.Background(zx+(i-1)*(w+1), zy+(j-1)*(w+1),zx1+(i-1)*(w+1),zy1+(j-1)*(w+1),128,color)
	  end
  end
   
end



function newselect()
	local function ph(c)
			if c <= 9 then
				return 280 + c-1
			end
	end
	local function disable(c)
	local dd = {}
			for i = 1, #dd do
				if c == dd[i] then
					return true
				end
			end	
		return false
	end
	local start = 80
	local c = 1
	local maxc = 9
	local tmp = 280
	CleanMemory()
	CC.ICONPICFILE = {CONFIG.DataPath .. "icon.idx", CONFIG.DataPath .. "icon.grp"}
	CC.HeadPicFile = {CONFIG.DataPath .. "atmb.idx", CONFIG.DataPath .. "atmb.grp"}
	--lib.PicLoadFile(CC.HeadPicFile[1], CC.HeadPicFile[2], 53)	
	CC.HeadPicFile = {CONFIG.DataPath .. "head.idx", CONFIG.DataPath .. "head.grp"}
	CC.ThingPicFile1 = {CONFIG.DataPath .. "sthing.idx", CONFIG.DataPath .. "sthing.grp"}
	lib.PicLoadFile(CC.ThingPicFile1[1], CC.ThingPicFile1[2], 93)
	lib.PicLoadFile(CC.ThingPicFile[1], CC.ThingPicFile[2], 2, 100, 100)
	lib.PicLoadFile(CC.ICONPICFILE[1], CC.ICONPICFILE[2], 54)
	lib.LoadPNGPath(CC.BodyPath, 53, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	--半身象
	lib.LoadPNGPath(CC.BJPath, 10, CC.BJNum, limitX(CC.ScreenW/936*100,0,100))		--奇穴

	while true do
		Cls()
		lib.PicLoadCache(93, 0, 450, 650)
		--lib.LoadPicture(CONFIG.PicturePath .. "bj0.png", 0, 0)
		--lib.LoadPicture(CC.STA, -1, -1)
		if disable(c) then
			lib.PicLoadCache(53, ph(c) * 2, 495,  500)	
			lib.PicLoadCache(54, 75 * 2, 495,  490)
			lib.PicLoadCache(54, 80 * 2, 495,  500)			
		else
			lib.PicLoadCache(53,ph(c) * 2, 495, 500)
            lib.PicLoadCache(54, 75 * 2, 495,  490)			
			lib.PicLoadCache(54, (start + c) * 2, 495, 500)
		end
		--lib.PicLoadCache(54, 75 * 2, CC.ScreenW/2 - 125, CC.ScreenH / 2 - 152, 1, 256)
		if c > 1 then
			lib.PicLoadCache(54, 61 * 2, CC.ScreenW/2 - 210, CC.ScreenH / 2 - 40, 1, 256)
		end
		if c < maxc then
			lib.PicLoadCache(54, 63 * 2, CC.ScreenW/2 + 110, CC.ScreenH / 2 - 40, 1, 256)
		end
		tb2("左/右键选择主角  满意后按空格键确认", -1, 670, C_ORANGE)
		ShowScreen()
		local p = WaitKey()
		if p == VK_SPACE or p == VK_RETURN then
			if not disable(c) then
				return c
			end
		elseif p == VK_ESCAPE then
			--break
		elseif p == VK_LEFT then
			c = limitX(c - 1, 1, maxc)
		elseif p == VK_RIGHT then
			c = limitX(c + 1, 1, maxc)
		end
	end
	
end



function tb2(s, x, y, color, size)
	if color == nil then color = C_GOLD end
	if size == nil then size = 30 end
	local ll = #s
	if x == nil or x == -1 then
		x = (CC.ScreenW-size/2*#s-2*CC.MenuBorderPixel)/2
	end
	if y == nil or y == -1 then
        y=(CC.ScreenH-size-2*CC.MenuBorderPixel)/2
	end	
	DrawString(x, y, s, color, size)
end

function joinPet()
	if JY.Base["宠物"] <= 0 then
		return
	end
	local x0, y0
	local p = false
	local p2 = false
	for k = 0, WAR.PersonNum - 1 do
		if WAR.Person[k]["人物编号"] == zj() then
			x0 = WAR.Person[k]["坐标X"]
			y0 = WAR.Person[k]["坐标Y"]
			p = true
			break
		end
	end

	if WAR.Data["自动选择参战人1"] ~= 0 then
		p2 = true
	elseif WAR.Data["自动选择参战人1"] == 0 and WAR.Data["自动选择参战人2"] ~= -1 then
		p2 = true
	end
	if p and p2 and yesno("要让宠物参战吗？") then
		local x, y = WE_xy(x0, y0)	
		NewWARPersonZJ(606, true, x, y, false, 2)
		--AddPersonAttrib(zj(), "体力", -20)	
		--tb(JY.Person[zj()]["姓名"].."体力减少20点")
	end
end

function hasPet()
	if JY.Base["宠物"] <= 0 then
		return false
	else
		return true
	end
end

function setPet(n, flag)
	if n == 0 then
		JY.Base["宠物"] = 0
		return
	end
	local start = 607
	local pid = 606
	for i = 1, #PSX - 8 do
		JY.Person[pid][PSX[i]] = JY.Person[start + n][PSX[i]]
	end
	--local t = math.modf(JY.Person[pid]["资质"] * 0.5)
	--JY.Person[pid]["生命最大值"] = 200
	--JY.Person[pid]["生命"] = 200
	--JY.Person[pid]["内力最大值"] = 500
	--JY.Person[pid]["内力"] = 500
	--JY.Person[pid]["攻击力"] = t + math.random(t)
	--JY.Person[pid]["防御力"] = t + math.random(t)
	--JY.Person[pid]["轻功"] = t + math.random(t)
	--JY.Person[pid]["武功等级1"] = 10
	--JY.Person[pid]["武功等级2"] = 10
	--JY.Person[pid]["拳掌功夫"] = 10
	--JY.Person[pid]["御剑能力"] = 10
	--JY.Person[pid]["耍刀技巧"] = 10
	--JY.Person[pid]["特殊兵器"] = 10
	JY.Base["宠物"] = n
	local str = "收服"..JY.Person[start + n]["姓名"].."为宠物！"
	if flag == nil then
		tb(str)
		tb("请给宠物起一个名字")
		JY.Person[pid]["姓名"] = "";
		while JY.Person[pid]["姓名"] == "" do
			JY.Person[pid]["姓名"] = Shurufa(32, CC.ScreenH - 6 * CC.Fontbig)
			if JY.Person[pid]["姓名"] == "" then
				tb("请给宠物起一个名字")
			end
		end	
	else
		return str
	end	
end

function IncludeFile()
	package.path=CONFIG.ScriptLuaPath;  --设置加载路径
	require("jyconst");					--加载其他文件，使用require避免重复加载
	require("jywar");
	require("JingMai");					--经脉系统
end

function yesno (str)
	return DrawStrBoxYesNo(-1, -1, str, C_WHITE, 30)
end

OEVENTLUA = {}

function addevent(sid, pid, pass, event, etype, pic, x, y)
	if x == nil then x = -2 end
	if y == nil then y = -2 end
	if pic == nil then pic = -2 end
	if etype == nil then etype = 1 end
	if event == nil then event = -2 end
	if pass == nil then pass = -2 end
	if etype == 1 then
		instruct_3(sid, pid, pass, 0, event, 0, 0, pic, pic, pic, -2, x, y)
	elseif etype == 2 then
		instruct_3(sid, pid, pass, 0, 0, event, 0, pic, pic, pic, -2, x, y)
	else
		instruct_3(sid, pid, pass, 0, 0, 0, event, pic, pic, pic, -2, x, y)
	end	
end

function  clone(pid,clone_choice)
        JY.Person[pid]["代号"]=JY.Person[clone_choice]["代号"]
		JY.Person[pid]["生命最大值"]=JY.Person[clone_choice]["生命最大值"]
		JY.Person[pid]["内力最大值"]=JY.Person[clone_choice]["内力最大值"]
		JY.Person[pid]["头像代号"]=JY.Person[clone_choice]["头像代号"]
		JY.Person[pid]["生命增长"]=JY.Person[clone_choice]["生命增长"]
		JY.Person[pid]["无用"]=JY.Person[clone_choice]["无用"]
		JY.Person[pid]["姓名"]=JY.Person[clone_choice]["姓名"]
		JY.Person[pid]["外号"]=JY.Person[clone_choice]["外号"]
		JY.Person[pid]["性别"]=JY.Person[clone_choice]["性别"]
        JY.Person[pid]["资质"]=JY.Person[clone_choice]["资质"]
		JY.Person[pid]["武器"]=JY.Person[clone_choice]["武器"]
		JY.Person[pid]["防具"]=JY.Person[clone_choice]["防具"]
        JY.Person[pid]["等级"]=JY.Person[clone_choice]["等级"]
		for i=1,5 do
			JY.Person[pid]["出招动画帧数" .. i]=JY.Person[clone_choice]["出招动画帧数" .. i]
			JY.Person[pid]["出招动画延迟" .. i]=JY.Person[clone_choice]["出招动画延迟" .. i]
			JY.Person[pid]["武功音效延迟" .. i]=JY.Person[clone_choice]["武功音效延迟" .. i]
		end
		
		--畅想攻防轻最低25
		JY.Person[pid]["攻击力"]=JY.Person[clone_choice]["攻击力"]
		JY.Person[pid]["防御力"]=JY.Person[clone_choice]["防御力"]
		JY.Person[pid]["轻功"]=JY.Person[clone_choice]["轻功"]
		--医疗用毒解毒最低30
		JY.Person[pid]["医疗能力"]=limitX(JY.Person[clone_choice]["医疗能力"],30)
		JY.Person[pid]["用毒能力"]=limitX(JY.Person[clone_choice]["用毒能力"],30)
		JY.Person[pid]["解毒能力"]=limitX(JY.Person[clone_choice]["解毒能力"],30)

		JY.Person[pid]["抗毒能力"]=JY.Person[clone_choice]["抗毒能力"]
		JY.Person[pid]["拳掌功夫"]=JY.Person[clone_choice]["拳掌功夫"]
		JY.Person[pid]["指法技巧"]=JY.Person[clone_choice]["指法技巧"]
		JY.Person[pid]["御剑能力"]=JY.Person[clone_choice]["御剑能力"]
		JY.Person[pid]["耍刀技巧"]=JY.Person[clone_choice]["耍刀技巧"]
		JY.Person[pid]["特殊兵器"]=JY.Person[clone_choice]["特殊兵器"]
		JY.Person[pid]["枪棒技巧"]=JY.Person[clone_choice]["枪棒技巧"]
		--暗器技巧至少30
		JY.Person[pid]["暗器技巧"]=limitX(JY.Person[clone_choice]["暗器技巧"],30)

		JY.Person[pid]["武学常识"]=JY.Person[clone_choice]["武学常识"]
		JY.Person[pid]["攻击带毒"]=JY.Person[clone_choice]["攻击带毒"]
		JY.Person[pid]["左右互搏"]=JY.Person[clone_choice]["左右互搏"]
	
		for i=1,12 do
			JY.Person[pid]["武功" .. i]=JY.Person[clone_choice]["武功" .. i]
			JY.Person[pid]["武功等级" .. i]=JY.Person[clone_choice]["武功等级" .. i]
		end

		for i=1,4 do
			JY.Person[pid]["携带物品" .. i]=JY.Person[clone_choice]["携带物品" .. i]
			JY.Person[pid]["携带物品数量" .. i]=JY.Person[clone_choice]["携带物品数量" .. i]
		end
		for i=1,6 do
			JY.Person[pid]["技能" .. i]=JY.Person[clone_choice]["技能" .. i]
		end		
		for i=1,4 do
			JY.Person[pid]["天赋外功"..i]=JY.Person[clone_choice]["天赋外功"..i]
		end
		
		JY.Person[pid]["天赋内功"]=JY.Person[clone_choice]["天赋内功"]
		JY.Person[pid]["天赋轻功"]=JY.Person[clone_choice]["天赋轻功"]
		JY.Person[pid]["畅想分阶"]=JY.Person[clone_choice]["畅想分阶"]
		JY.Person[pid]["外号2"]=JY.Person[clone_choice]["外号2"]
		JY.Person[pid]["特色指令"] = JY.Person[clone_choice]["特色指令"]
end


function xiaobin(pp)
	if (pp >= 191 and pp <= 409) or (pp >= 441 and pp <= 450) or (pp >= 455 and pp <= 457) or pp == 460 then
		return true
	end
	if pp >= 618 and pp <= 625 then
		return true
	end
	return false
end

function T7DFWM(id) --陈家洛判定
  if match_ID(id,75) then
    return true
  else
    return false
  end
end

function SetGlobal()  	 --设置游戏内部使用的全程变量
	JY={};

	JY.Status=GAME_INIT; --游戏当前状态

	--保存R×数据
	JY.Base={};          --基本数据
	JY.PersonNum=0;      --人物个数
	JY.Person={};        --人物数据
	JY.ThingNum=0        --物品数量
	JY.Thing={};         --物品数据
	JY.SceneNum=0        --场景数量
	JY.Scene={};         --场景数据
	JY.WugongNum=0       --物品数量
	JY.Wugong={};        --物品数据
	JY.ShopNum=0 		 --商店数量
	JY.Shop={};    		 --商店数据
   
	JY.MyCurrentPic = 0		--主角当前走路贴图在贴图文件中偏移
	JY.MyPic = 0     		--主角当前贴图
	JY.Mytick = 0			--主角没有走路的持续帧数
	JY.MyTick2 = 0			--显示事件动画的节拍
	JY.LOADTIME = 0
	JY.SAVETIME = 0
	JY.GTIME = 0			--游戏时间
	JY.GOLD = 0				--游戏银两

	JY.SubScene=-1;         --当前子场景编号
	JY.SubSceneX=0;         --子场景显示位置偏移，场景移动指令使用
	JY.SubSceneY=0;

	JY.Darkness=0;          --=0 屏幕正常显示，=1 不显示，屏幕全黑

	JY.CurrentD=-1;         --当前调用D*的编号
	JY.OldDPass=-1;         --上次触发路过事件的D*编号, 避免多次触发
	JY.CurrentEventType=-1  --当前触发事件的方式 1 空格 2 物品 3 路过

	JY.CurrentThing=-1;     --当前选择物品，触发事件使用

	JY.MmapMusic=-1;        --切换大地图音乐，返回主地图时，如果设置，则播放此音乐

	JY.CurrentMIDI=-1;      --当前播放的音乐id，用来在关闭音乐时保存音乐id。
	JY.EnableMusic=1;       --是否播放音乐 1 播放，0 不播放
	JY.EnableSound=1;       --是否播放音效 1 播放，0 不播放

	WAR={};					--战斗使用的全程变量 这里占个位置，因为程序后面不允许定义全局变量了。具体内容在WarSetGlobal函数中

	AutoMoveTab = {[0] = 0}
	
	JY.Restart = 0			--返回游戏初始界面
	JY.WalkCount = 0		--走路计步
	
	ItemInfo = {}			--物品详细说明
	
	G = {}					--常用函数
end

function JY_Main()        --主程序入口
	os.remove("debug.txt");      	  --清除以前的debug输出
    xpcall(JY_Main_sub,myErrFun);     --捕获调用错误
end

function myErrFun(err)      --错误处理，打印错误信息
    lib.Debug(err);                 --输出错误信息
    lib.Debug(debug.traceback());   --输出调用堆栈信息
end

function JY_Main_sub()		--真正的游戏主程序入口
	Ct = {};
    SetGlobal();			--设置全程变量JY
    IncludeFile();			--导入其他模块
    SetGlobalConst();		--设置全程变量CC, 程序使用的常量


    --禁止访问全程变量
	--[[
    setmetatable(_G,{ __newindex =function (_,n)
                       error("attempt read write to undeclared variable " .. n,2);
                       end,
                       __index =function (_,n)
                       error("attempt read read to undeclared variable " .. n,2);
                       end,
                     }  );
	--]]				
	
    lib.Debug("JY_Main start.");

	math.randomseed(os.time());			--初始化随机数发生器

    JY.Status=GAME_START;				--改变游戏状态

    lib.PicInit(CC.PaletteFile);		--加载原来的256色调色板
	
	lib.FillColor(0,0,0,0,0);
	
	lib.LoadPNGPath(CC.HeadPath, 1, CC.HeadNum, limitX(CC.ScreenW/936*100,0,100))	--设置读取PNG图片的路径
	lib.LoadPNGPath(CC.PTPath, 95, CC.PTNum, limitX(CC.ScreenW/936*100,0,100))
	
	lib.LoadPNGPath(CC.UIPath, 96, CC.UINum, limitX(CC.ScreenW/936*100,0,100))
	
	lib.LoadPNGPath(CC.BodyPath, 90, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	--
	lib.LoadPNGPath(CC.XTPath, 91, CC.XTNum, limitX(CC.ScreenW/936*100,0,100))	--UI
	
	
	while true do
		if JY.Restart == 1 then
			JY.Restart = 0
			JY.Status=GAME_START;
		end
		if JY.Status == GAME_END then
			break;
		end
		
		PlayMIDI(70);
		Cls();
		lib.ShowSlow(20,0);
		
		local r = StartMenu();
		if r ~= nil then
			return;
		end

		lib.LoadPicture("",0,0);
		lib.GetKey();
		
		Game_Cycle();
	end
end

function TitleSelection()
	local choice = 1
	local buttons ={
	{961,964,350,520,500,567},
	{962,965,550,520,700,567},
	{963,966,750,520,900,567}
	}
	local function on_button(mx, my)
		local r = 0
			for i = 1, #buttons do
				if mx >= buttons[i][3] and mx <= buttons[i][5] and my >= buttons[i][4] and my <= buttons[i][6] then
					r = i
					break
				end
			end
		return r
	end
	while true do
		if JY.Restart == 1 then
			return
		end
		local keypress, ktype, mx, my = lib.GetKey()
		if keypress == VK_DOWN then
			choice = choice + 1
			if choice > #buttons then
				choice = 1
			end
		elseif keypress == VK_UP then
			choice = choice - 1
			if choice < 1 then
				choice = #buttons
			end
		else
			if (ktype == 2 or ktype == 3) then
				local r = on_button(mx, my)
				if r > 0 then
					choice = r
				end
			end
			if keypress == VK_RETURN or (ktype == 3 and on_button(mx, my)>0) then
				break
			end
		end
		Cls()
		for i = 1, #buttons do
			local picid = buttons[i][1]
			if i == choice then
				picid = buttons[i][2]
			end
			lib.LoadPNG(1, picid * 2 , buttons[i][3], buttons[i][4], 1)
		end
		--版本号
		DrawString(CC.ScreenW-115,CC.ScreenH-30,CC.Version,C_BLACK,CC.Fontsmall)
		ShowScreen()
	end
	return choice
end

function StartMenu()
	Cls()
	--[[
	local menu={  {"重新开始",nil,1},
	              {"载入进度",nil,1},
	              {"离开游戏",nil,1}  };
	local menux=(CC.ScreenW-4*CC.StartMenuFontSize-2*CC.MenuBorderPixel)/2

	local menuReturn=ShowMenu(menu,3,0,menux,CC.StartMenuY,0,0,0,0,CC.StartMenuFontSize,C_STARTMENU, C_RED)
	Cls();]]
	local menuReturn = TitleSelection()
    if menuReturn == 1 then        --重新开始游戏
		NewGame();   		       --设置新游戏数据
		if JY.Restart == 1 then
			do return end
		end
		--畅想杨过初始场景
		if JY.Base["畅想"] == 58 then
			JY.SubScene = 18
			JY.Base["人X"] = 144
			JY.Base["人Y"] = 218
			JY.Base["人X1"] = 30
			JY.Base["人Y1"] = 32
		else
			JY.SubScene = CC.NewGameSceneID
			JY.Base["人X1"] = CC.NewGameSceneX
			JY.Base["人Y1"] = CC.NewGameSceneY
		end
		--无酒不欢：男女主角判定
		if JY.Person[0]["性别"] == 0 then
			JY.MyPic = CC.NewPersonPicM
		else
			JY.MyPic = CC.NewPersonPicF
		end
		if JY.Base["畅想"] == 447 or JY.Base["畅想"] == 448 or JY.Base["畅想"] == 449 or JY.Base["畅想"] == 450 then
        lib.PlayMPEG(CONFIG.DataPath .. "TXDY.avi",VK_ESCAPE);
		end 
		JY.Status = GAME_SMAP
		JY.MmapMusic = -1
		CleanMemory()
		Init_SMap(0)
        lib.ShowSlow(20,0)

		--if DrawStrBoxYesNo(-1, -1, "是否观看序章剧情？", C_GOLD, CC.DefaultFont, LimeGreen) == true then 
			--oldCallEvent(CC.NewGameEvent)
		--end
		
		--开局事件
		if JY.Base["畅想"] == 58 then		--畅想杨过
			CallCEvent(4187)
		else								--其他人
			CallCEvent(691)
		end
		
		--畅想开局获得自身的装备
		if JY.Base["畅想"] > 0 then
			if JY.Person[0]["武器"] ~= - 1 then
				instruct_2(JY.Person[0]["武器"], 1)
				JY.Person[0]["武器"] = - 1
			end
			if JY.Person[0]["防具"] ~= - 1 then
				instruct_2(JY.Person[0]["防具"], 1)
				JY.Person[0]["防具"] = - 1
			end
			if JY.Person[0]["坐骑"] ~= - 1 then
				instruct_2(JY.Person[0]["坐骑"], 1)
				JY.Person[0]["坐骑"] = - 1
			end	
			if JY.Person[0]["饰品"] ~= - 1 then
				instruct_2(JY.Person[0]["饰品"], 1)
				JY.Person[0]["饰品"] = - 1
			end	
		end
		--畅想尹克西获得一万两
		if JY.Base["畅想"] == 158 then
			instruct_2(174, 10000)
		    local wcywg = JYMsgBox("请选择", "是否体验黄沙万里鞭", {"是","否"}, 2, 60)
			if wcywg == 1 then
		       setWG(78)
	        end
			ClsN()
		end
		--标主可以在云岭洞花钱学习迷踪步
		if JY.Base["标准"] > 0 then
			addevent(41, 0, 1, 4144, 1, 8694)
		end
	elseif menuReturn == 2 then         --载入旧的进度

    	DrawStrBox(-1,CC.ScreenH*1/6-20,"读取进度",LimeGreen,CC.Fontbig,C_GOLD);
		DrawStrBox(290,CC.ScreenH*1/6+26,string.format("%-6s %-4s %-10s %-4s %-4s %-4s %-10s","存档名", "主角", "姓名", "难度", "资质", "天书", "位置"),C_ORANGE,CC.DefaultFont,C_GOLD);
	
    	local r = SaveList();
    	--ESC 重新返回选项
    	if r < 1 then
    		local s = StartMenu();
    		return s;
    	end
    	
    	Cls();
		DrawStrBox(-1,CC.StartMenuY,"请稍候...",C_GOLD,CC.DefaultFont);
		ShowScreen();
    	local result = LoadRecord(r);
    	if result ~= nil then
    		return StartMenu();
    	end

		if JY.Base["无用"] ~= -1 then
			if JY.SubScene < 0 then
				CleanMemory()
				lib.UnloadMMap()
			end
			lib.PicInit()
			lib.ShowSlow(20, 1)
			JY.Status = GAME_SMAP
			JY.SubScene = JY.Base["无用"]
			JY.MmapMusic = -1
			JY.MyPic = GetMyPic()
			Init_SMap(1)
		else
			JY.SubScene = -1
			JY.Status = GAME_FIRSTMMAP
		end
	elseif menuReturn == 3 then
        return -1;
	end
end

function CleanMemory()            --清理lua内存
    if CONFIG.CleanMemory==1 then
		collectgarbage("collect");
    end
end

function NewGame()     --选择新游戏，设置主角初始属性
	Cls();
	ShowScreen();
	LoadRecord(0); --  载入新游戏数据
	
	JY.Status = GAME_NEWNAME;
	ClsN();

--畅想初始化
--畅想初始化
JoinMP(5,2,5)
JoinMP(10,5,4)
JoinMP(11,5,4)

JY.Thing[308]["是否特效"] = 0

	for i = 12, 15 do
		JoinMP(i,5,3)
	end
	for i = 16, 17 do
		JoinMP(i,5,2)
	end
JoinMP(18,3,2)
	for i = 19, 23 do
		JoinMP(i,6,4)
	end
	
	JY.Person[28]["武功1"] = 127
	JY.Person[28]["武功等级1"] = 999
	JY.Person[28]["天赋外功1"] = 127
	
JoinMP(35,6,2)
	JY.Person[47]["特色指令"] = 1
	
JoinMP(49,3,2)	
JoinMP(50,1,4)
awakening(50,1)
JoinMP(54,6,2)
JY.Person[56]["特色指令"] = 1

JoinMP(60,7,3)
JoinMP(61,7,2)
JoinMP(62,4,3)

JoinMP(66,5,5)

JoinMP(56,8,2)
JoinMP(57,8,3)
JoinMP(626,8,2)
JoinMP(63,8,2)
	
JoinMP(69,1,4)
JoinMP(70,3,4)	
	JY.Person[75]["武功2"] = 166
	JY.Person[75]["武功等级2"] = 900
	JY.Person[75]["主运内功"] = 166
    JY.Person[75]["天赋内功"] = 166
    JY.Person[75]["携带物品".. 2] = 308
    JY.Person[75]["携带物品数量" .. 2] = 1	
JoinMP(78,8,2)
JoinMP(79,6,2)
JoinMP(80,2,2)
	JY.Person[80]["武功2"] = 99
	JY.Person[80]["武功等级2"] = 900
	JY.Person[80]["主运内功"] = 99
	
	JY.Person[81]["武功2"] = 142
	JY.Person[81]["武功等级2"] = 999	
	JY.Person[81]["天赋外功2"] = 142
JoinMP(82,2,2)	
JoinMP(84,4,2)

JY.Person[89]["天赋内功"] = 90
	JY.Person[89]["武功2"] = 90
	JY.Person[89]["武功等级2"] = 900
JoinMP(97,4,3)
JoinMP(103,4,3)
JY.Person[103]["携带物品".. 3] = 135
JY.Person[103]["携带物品数量" .. 3] = 1
JoinMP(109,6,4)

JoinMP(114,3,3)


JY.Person[116]["个人觉醒"] =1
JY.Person[117]["个人觉醒"] = 1

JoinMP(140,6,3)
JoinMP(141,6,3)
JoinMP(142,6,3)	
	JY.Person[142]["武功1"] = 162
	JY.Person[142]["武功等级1"] = 999
	JY.Person[142]["天赋外功1"] = 162
JoinMP(149,3,4)
JoinMP(158,4,2)
JoinMP(159,4,2)
	JY.Person[169]["武功2"] = 144
	JY.Person[169]["武功等级2"] = 900
	JoinMP(169,3,4)
	JY.Person[170]["武功2"] = 96
	JY.Person[170]["武功等级2"] = 900
	JoinMP(170,3,3)
JoinMP(185,6,4)




JoinMP(455,4,3)
JoinMP(458,1,4)
	JY.Person[458]["武功1"] = 60
	JY.Person[458]["武功等级1"] = 999
	JY.Person[458]["天赋外功1"] = 60
JoinMP(459,1,4)
	JY.Person[459]["武功1"] = 26
	JY.Person[459]["武功等级1"] = 999
	JY.Person[459]["天赋外功1"] = 26

	for i = 301, 310 do
		JoinMP(i,5,1)
	end

	JY.Person[302]["姓名"] = "百变星君" 
	JY.Person[302]["头像代号"] = 57
	JY.Person[302]["生命最大值"] = 920
	JY.Person[302]["生命"] = 920
	JY.Person[302]["内力最大值"] = 6000
	JY.Person[302]["攻击力"] = 200
	JY.Person[302]["防御力"] = 250
	JY.Person[302]["轻功"] = 200
	JY.Person[302]["等级"] = 30
	JY.Person[302]["武功1"] = 73
	JY.Person[302]["武功等级1"] = 999
	JY.Person[302]["武功2"] = 181
	JY.Person[302]["武功等级2"] = 900
	JY.Person[302]["武功3"] = 146
	JY.Person[302]["武功等级3"] = 900
	JY.Person[302]["天赋外功1"] = 73
	JY.Person[302]["天赋轻功"] = 146
    JY.Person[302]["天赋内功"] = 181
	JY.Person[302]["畅想分阶"] = 1
	JY.Person[302]["资质"] = 100
	JY.Person[302]["拳掌功夫"] = 90
	JY.Person[302]["耍刀技巧"] = 90	
	JoinMP(302,8,2)

	JY.Person[310]["姓名"] = "黑白熊" 
	JY.Person[310]["头像代号"] = 33
	JY.Person[310]["生命最大值"] = 920
	JY.Person[310]["生命"] = 920
	JY.Person[310]["内力最大值"] = 6000
	JY.Person[310]["攻击力"] = 200
	JY.Person[310]["防御力"] = 250
	JY.Person[310]["轻功"] = 200
	JY.Person[310]["等级"] = 30
	JY.Person[310]["武功1"] = 73
	JY.Person[310]["武功等级1"] = 999
	JY.Person[310]["武功2"] = 93
	JY.Person[310]["武功等级2"] = 900
	JY.Person[310]["武功3"] = 146
	JY.Person[310]["武功等级3"] = 900
	JY.Person[310]["天赋外功1"] = 73
--	JY.Person[310]["天赋轻功"] = 146
--    JY.Person[302]["天赋内功"] = 160
	JY.Person[310]["畅想分阶"] = 1
	JY.Person[310]["资质"] = 100
	JY.Person[310]["拳掌功夫"] = 90
	JY.Person[310]["指法技巧"] = 90	
	JoinMP(310,5,3)

	JY.Person[340]["姓名"] = "贾托尼" 
	JY.Person[340]["头像代号"] = 363
	JY.Person[340]["生命最大值"] = 920
	JY.Person[340]["生命"] = 920
	JY.Person[340]["内力最大值"] = 6000
	JY.Person[340]["攻击力"] = 200
	JY.Person[340]["防御力"] = 250
	JY.Person[340]["轻功"] = 200
	JY.Person[340]["等级"] = 30
	JY.Person[340]["武功1"] = 1
	JY.Person[340]["武功等级1"] = 999
	JY.Person[340]["武功2"] = 169
	JY.Person[340]["武功等级2"] = 900
	JY.Person[340]["天赋外功1"] = 1
--	JY.Person[310]["天赋轻功"] = 146
    JY.Person[340]["天赋内功"] = 169
	JY.Person[340]["畅想分阶"] = 1
	JY.Person[340]["资质"] = 100
	JY.Person[340]["拳掌功夫"] = 90
	JY.Person[340]["耍刀技巧"] = 90	
	JoinMP(340,5,3)

	JY.Person[360]["姓名"] = "念慈" 
	JY.Person[360]["头像代号"] = 245
	JY.Person[360]["生命最大值"] = 920
	JY.Person[360]["生命"] = 920
	JY.Person[360]["内力最大值"] = 6000
	JY.Person[360]["攻击力"] = 200
	JY.Person[360]["防御力"] = 250
	JY.Person[360]["轻功"] = 200
	JY.Person[360]["等级"] = 30
	JY.Person[360]["武功1"] = 2
	JY.Person[360]["武功等级1"] = 999
	JY.Person[360]["武功2"] = 58
	JY.Person[360]["武功等级2"] = 999
	JY.Person[360]["武功3"] = 90
	JY.Person[360]["武功等级3"] = 900
	JY.Person[360]["天赋外功1"] = 2
	JY.Person[360]["天赋外功2"] = 58
--	JY.Person[360]["天赋轻功"] = 147
--    JY.Person[302]["天赋内功"] = 160
	JY.Person[360]["畅想分阶"] = 1
	JY.Person[360]["资质"] = 100
	JY.Person[360]["拳掌功夫"] = 90
	JY.Person[360]["耍刀技巧"] = 90	
	JoinMP(360,6,3)

	JY.Person[400]["姓名"] = "慧聪" 
	JY.Person[400]["生命最大值"] = 920
	JY.Person[400]["生命"] = 920
	JY.Person[400]["内力最大值"] = 4300
	JY.Person[400]["攻击力"] = 100
	JY.Person[400]["防御力"] = 150
	JY.Person[400]["轻功"] = 100
	JY.Person[400]["等级"] = 30
	JY.Person[400]["武功1"] = 1
	JY.Person[400]["武功等级1"] = 999
	JY.Person[400]["武功2"] = 65
	JY.Person[400]["武功等级2"] = 900
	JY.Person[400]["武功3"] = 96
	JY.Person[400]["武功等级3"] = 900
	JY.Person[400]["天赋外功1"] = 1
	JY.Person[400]["天赋外功2"] = 65
--	JY.Person[400]["天赋内功"] = 96
	JY.Person[400]["畅想分阶"] = 1
	JY.Person[400]["资质"] = 100
	JY.Person[400]["拳掌功夫"] = 90
	JY.Person[400]["耍刀技巧"] = 90	
	JoinMP(400,3,3)



	
	JY.Person[447]["姓名"] = "段天涯" 
	JY.Person[447]["头像代号"] = 217
	JY.Person[447]["生命最大值"] = 920
	JY.Person[447]["内力最大值"] = 4300
	JY.Person[447]["攻击力"] = 180
	JY.Person[447]["防御力"] = 150
	JY.Person[447]["轻功"] = 150
	JY.Person[447]["等级"] = 30
	JY.Person[447]["武功1"] = 151
	JY.Person[447]["武功等级1"] = 999
		JY.Person[447]["武功2"] = 152
	JY.Person[447]["武功等级2"] = 900
		JY.Person[447]["武功3"] = 146
	JY.Person[447]["武功等级3"] = 1
	JY.Person[447]["天赋外功1"] = 151
	JY.Person[447]["天赋内功"] = 152
	JY.Person[447]["天赋轻功"] = 146
	JY.Person[447]["畅想分阶"] = 1
	JY.Person[447]["资质"] = 100
	JY.Person[447]["御剑能力"] = 90
	
	JY.Person[448]["姓名"] = "归海一刀" 
	JY.Person[448]["头像代号"] = 358
	JY.Person[448]["生命最大值"] = 920
	JY.Person[448]["内力最大值"] = 4300
	JY.Person[448]["攻击力"] = 180
	JY.Person[448]["防御力"] = 150
	JY.Person[448]["轻功"] = 100
	JY.Person[448]["等级"] = 30
	JY.Person[448]["武功1"] = 58
	JY.Person[448]["武功等级1"] = 999
	JY.Person[448]["天赋外功1"] = 58
	JY.Person[448]["畅想分阶"] = 1
	JY.Person[448]["资质"] = 100
	JY.Person[448]["耍刀技巧"] = 90
	
	JY.Person[449]["姓名"] = "上官海棠" 
	JY.Person[449]["头像代号"] = 61
	JY.Person[449]["生命最大值"] = 920
	JY.Person[449]["内力最大值"] = 4300
	JY.Person[449]["攻击力"] = 180
	JY.Person[449]["防御力"] = 150
	JY.Person[449]["轻功"] = 300
	JY.Person[449]["等级"] = 30
	JY.Person[449]["武功1"] = 161
	JY.Person[449]["武功等级1"] = 999
		JY.Person[449]["武功2"] = 145
	JY.Person[449]["武功等级2"] = 900
	JY.Person[449]["天赋外功1"] = 161
	JY.Person[449]["天赋轻功"] = 145
	JY.Person[449]["畅想分阶"] = 1
	JY.Person[449]["资质"] = 100
	JY.Person[449]["御剑能力"] = 90


	
	JY.Person[450]["姓名"] = "成是非" 
	JY.Person[450]["头像代号"] = 38
	JY.Person[450]["生命最大值"] = 920
	JY.Person[450]["内力最大值"] = 4300
	JY.Person[450]["攻击力"] = 180
	JY.Person[450]["防御力"] = 250
	JY.Person[450]["轻功"] = 100
	JY.Person[450]["等级"] = 30
	JY.Person[450]["武功1"] = 135
	JY.Person[450]["武功等级1"] = 999
		JY.Person[450]["武功2"] = 144
	JY.Person[450]["武功等级2"] = 900
		JY.Person[450]["武功3"] = 22
	JY.Person[450]["武功等级3"] = 900
	JY.Person[450]["天赋外功1"] = 135
	JY.Person[450]["天赋外功2"] = 22
	JY.Person[450]["天赋内功"] = 144
	JY.Person[450]["畅想分阶"] = 1
	JY.Person[450]["资质"] = 100
	JY.Person[450]["拳掌功夫"] = 90
	JY.Person[450]["指法技巧"] = 90
JY.Person[450]["出招动画帧数4"] = 20
JY.Person[450]["出招动画延迟4"] = 15
JY.Person[450]["武功音效延迟4"] = 13
	
	JY.Person[455]["姓名"] = "天竺子" --丁氏门人
	JY.Person[455]["头像代号"] = 410
	JY.Person[455]["生命最大值"] = 920
	JY.Person[455]["生命"] = 920
	JY.Person[455]["内力最大值"] = 4300
	JY.Person[455]["内力"] = 4300
	JY.Person[455]["攻击力"] = 280
	JY.Person[455]["防御力"] = 250
	JY.Person[455]["轻功"] = 300
	JY.Person[455]["等级"] = 30
	JY.Person[455]["武功1"] = 83
	JY.Person[455]["武功等级1"] = 999
	JY.Person[455]["天赋外功1"] = 83
	JY.Person[455]["武功2"] = 169
	JY.Person[455]["武功等级2"] = 900
	JY.Person[455]["天赋内功"] = 169
	JY.Person[455]["畅想分阶"] = 1
	JY.Person[455]["资质"] = 100
	JY.Person[455]["御剑能力"] = 200
	JY.Person[455]["武学常识"] = 100
	JY.Person[455]["左右互搏"] = 1
    awakening(455,1)	
	
	JY.Person[516]["姓名"] = "宫本武藏" 
	JY.Person[516]["头像代号"] = 401
	JY.Person[516]["生命最大值"] = 920
	JY.Person[516]["内力最大值"] = 4300
	JY.Person[516]["攻击力"] = 280
	JY.Person[516]["防御力"] = 250
	JY.Person[516]["轻功"] = 300
	JY.Person[516]["等级"] = 30
	JY.Person[516]["武功1"] = 151
	JY.Person[516]["天赋外功1"] = 151
	JY.Person[516]["畅想分阶"] = 1
	JY.Person[516]["资质"] = 100
	JY.Person[516]["御剑能力"] = 200
	JY.Person[516]["武学常识"] = 100
	JY.Person[516]["左右互搏"] = 1	
	
	JY.Person[517]["姓名"] = "佐佐木严流" 
	JY.Person[517]["头像代号"] = 401
	JY.Person[517]["生命最大值"] = 920
	JY.Person[517]["内力最大值"] = 4300
	JY.Person[517]["攻击力"] = 280
	JY.Person[517]["防御力"] = 250
	JY.Person[517]["轻功"] = 300
	JY.Person[517]["等级"] = 30
	JY.Person[517]["武功1"] = 151
	JY.Person[517]["天赋外功1"] = 151
	JY.Person[517]["畅想分阶"] = 1
	JY.Person[517]["资质"] = 100
	JY.Person[517]["御剑能力"] = 200
	JY.Person[517]["武学常识"] = 100
    
	JY.Person[501]["姓名"] = "果心居士" 
	JY.Person[501]["头像代号"] = 93
	JY.Person[501]["生命最大值"] = 920
	JY.Person[501]["内力最大值"] = 4300
	JY.Person[501]["攻击力"] = 280
	JY.Person[501]["防御力"] = 250
	JY.Person[501]["轻功"] = 300
	JY.Person[501]["等级"] = 30
	JY.Person[501]["武功1"] = 151
	JY.Person[501]["天赋外功1"] = 151
	JY.Person[501]["资质"] = 100
	JY.Person[501]["御剑能力"] = 200
	JY.Person[501]["武学常识"] = 100
	JY.Person[501]["左右互搏"] = 1	
	
	JY.Person[507]["头像代号"] = 93
	JY.Person[507]["生命最大值"] = 920
	JY.Person[507]["内力最大值"] = 4300
	JY.Person[507]["攻击力"] = 280
	JY.Person[507]["防御力"] = 250
	JY.Person[507]["轻功"] = 300
	JY.Person[507]["等级"] = 30
	JY.Person[507]["武功1"] = 151
	JY.Person[507]["天赋外功1"] = 151
	JY.Person[507]["资质"] = 100
	JY.Person[507]["御剑能力"] = 200
	JY.Person[507]["武学常识"] = 100	
	
	JY.Person[513]["头像代号"] = 93
	JY.Person[513]["生命最大值"] = 920
	JY.Person[513]["内力最大值"] = 4300
	JY.Person[513]["攻击力"] = 280
	JY.Person[513]["防御力"] = 250
	JY.Person[513]["轻功"] = 300
	JY.Person[513]["等级"] = 30
	JY.Person[513]["武功1"] = 151
	JY.Person[513]["天赋外功1"] = 151
	JY.Person[513]["资质"] = 100
	JY.Person[513]["御剑能力"] = 200
	JY.Person[513]["武学常识"] = 100
	
	JY.Person[514]["头像代号"] = 93
	JY.Person[514]["生命最大值"] = 920
	JY.Person[514]["内力最大值"] = 4300
	JY.Person[514]["攻击力"] = 280
	JY.Person[514]["防御力"] = 250
	JY.Person[514]["轻功"] = 300
	JY.Person[514]["等级"] = 30
	JY.Person[514]["武功1"] = 151
	JY.Person[514]["天赋外功1"] = 151
	JY.Person[514]["资质"] = 100
	JY.Person[514]["御剑能力"] = 200
	JY.Person[514]["武学常识"] = 100
	
   JY.Person[628]["畅想分阶"] = 1	
   JY.Person[637]["畅想分阶"] = 1
   JoinMP(647,7,3)
   	for i = 461, 496 do
		JoinMP(i,3,2)
	end
   	for i = 271, 280 do
		JoinMP(i,1,2)
	end   
 JoinMP(597,3,3)
JoinMP(598,3,3)
JoinMP(599,3,3) 
   
	ClsN()
    lib.LoadPicture(CC.BG01File,-1,-1)   
	--选择难度
	JY.Base["难度"] = JYMsgBox("请选择游戏难度", "本作品注重思考和规划，但是更加注重SL。*忽略成长过程直接追求无敌是很无聊的事情。*新人、准新人请务必选择入门难度。*放心，入门难度足够低，可以让你轻松上手*·追求轻松休闲、高自由度的老玩家，*推荐选择入门或第二难度。*·倘若为追求挑战，你选择了高难度，*记得提醒自己做好降龙十八窗的准备！*", MODEXZ2, 6, 35)
	ClsN()
	
--选择标主还是畅想
	local player_type = JYMsgBox("主角选择", "选择你想要的主角模式*", {"特殊","标准","畅想"}, 3, 225)
	ClsN()

	JY.Person[0]["姓名"]=CC.NewPersonName;
		  
	JY.Person[0]["生命最大值"] = 50
	JY.Person[0]["内力最大值"] = 100
	JY.Person[0]["生命"] = JY.Person[0]["生命最大值"]
	JY.Person[0]["内力"] = JY.Person[0]["内力最大值"]
	JY.Person[0]["攻击力"] = 30
	JY.Person[0]["防御力"] = 30
	JY.Person[0]["轻功"] = 30
	JY.Person[0]["医疗能力"] = 30
	JY.Person[0]["用毒能力"] = 30
	JY.Person[0]["解毒能力"] = 30
	JY.Person[0]["抗毒能力"] = 0
	JY.Person[0]["拳掌功夫"] = 30
	JY.Person[0]["指法技巧"] = 30
	JY.Person[0]["御剑能力"] = 30
	JY.Person[0]["耍刀技巧"] = 30
	JY.Person[0]["特殊兵器"] = 30
	JY.Person[0]["暗器技巧"] = 30
	
	--标准主角+特殊主角
	if player_type == 1 then	
		--特殊主角
			ClsN()
			--特殊主角的贴图
			JY.Person[0]["头像代号"] = 355
			local T_ani = {
				{0, 0, 0}, 
				{0, 0, 0}, 
				{10, 8, 6}, 
				{0, 0, 0}, 
				{0, 0, 0}}
			for i = 1, 5 do
				JY.Person[0]["出招动画帧数" .. i] = T_ani[i][1]
				JY.Person[0]["出招动画延迟" .. i] = T_ani[i][3]
				JY.Person[0]["武功音效延迟" .. i] = T_ani[i][2]
			end
			
			local gender;
			
			gender = JYMsgBox("请选择", "请选择你的主角性别 ", {"男", "女"}, 2, 291)
			
			--女主角初始化
			if gender == 2 then
				JY.Person[0]["性别"] = 1
				JY.Person[0]["外号"] = "姑娘"
				JY.Person[0]["外号2"] = "丫头"
				JY.Person[0]["头像代号"] = 368
				local f_ani = {
					{0, 0, 0}, 
					{0, 0, 0}, 
					{21, 19, 17}, 
					{0, 0, 0}, 
					{0, 0, 0}}
				for i = 1, 5 do
					JY.Person[0]["出招动画帧数" .. i] = f_ani[i][1]
					JY.Person[0]["出招动画延迟" .. i] = f_ani[i][3]
					JY.Person[0]["武功音效延迟" .. i] = f_ani[i][2]
				end
			end
			
			ClsN()
			
			JY.Person[0]["资质"] = InputNum("输入资质",1,100);

			ClsN()
			
			JY.Base["特殊"] = 1
			JY.Person[0]["姓名"] = "无酒不欢"
			JY.Person[0]["攻击力"] = 40
			JY.Person[0]["防御力"] = 40
			JY.Person[0]["轻功"] = 40
			JY.Person[0]["拳掌功夫"] = 50
			JY.Person[0]["指法技巧"] = 50
			JY.Person[0]["御剑能力"] = 50
			JY.Person[0]["耍刀技巧"] = 50
			JY.Person[0]["特殊兵器"] = 50
            JY.Person[0]["特色指令"] = 1
			ClsN()
			say("在你初出茅庐之前，我决定帮你一把。",347,0,"谢无悠");
	         ClsN()
	         say("选择一个你想要强化的队友吧。",347,0,"谢无悠");
	ClsN()
	local k = CC.PersonExit;
	local menu = {}	
	for i = 1, 59 do
		local kfname = JY.Person[CC.PersonExit[i][1]]["姓名"]
		if string.len(kfname) == 8 then
			kfname = kfname.."  "
		elseif string.len(kfname) == 6 then
			kfname = kfname.."    "
		elseif string.len(kfname) == 4 then
			kfname = kfname.."      "
		end
		menu[i] = {kfname,nil,1}
		if i == 10  then
			menu[i][3] = 2
		end
	end
	local nexty = CC.ScreenH/2-CC.DefaultFont*4 + CC.SingleLineHeight
	local r = ShowMenu2(menu, #menu, 4, 5, CC.ScreenW/2-CC.DefaultFont*10-20, nexty, 0, 0, 1, 0, CC.DefaultFont, C_ORANGE, C_WHITE,"得到强化队友")
	
	if r > 0 then
	    local k = CC.PersonExit[r][1]
	    JY.Person[k]["论剑奖励"] = 1
	end
			ClsN()
			
		--标准主角
		elseif player_type == 2 then
			ClsN()
			
			local gender;
			
			gender = JYMsgBox("请选择", "请选择你的主角性别 ", {"男", "女"}, 2, 291)
			
			--女主角初始化
			if gender == 2 then
				JY.Person[0]["性别"] = 1
				JY.Person[0]["外号"] = "姑娘"
				JY.Person[0]["外号2"] = "丫头"
				JY.Person[0]["头像代号"] = 303
				local f_ani = {
				{0, 0, 0}, 
				{9, 2, 3}, 
				{8, 3, 4}, 
				{8, 3, 4}, 
				{9, 5, 6}}
				for i = 1, 5 do
					JY.Person[0]["出招动画帧数" .. i] = f_ani[i][1]
					JY.Person[0]["出招动画延迟" .. i] = f_ani[i][3]
					JY.Person[0]["武功音效延迟" .. i] = f_ani[i][2]
				end
			end
			
			ClsN()
			
			JY.Person[0]["资质"] = InputNum("输入资质",1,100);

			ClsN()
			
			--选择系
			local TF = JYMsgBox("请选择主角的天赋能力", TFXZSAY1, TFE, 9, 291)
--			local TF = newselect()
			--是标主
			SetS(10, 0, 6, 0, 1)
			if TF == 1 then         --拳
				SetS(4, 5, 5, 5, 1)
				JY.Person[0]["拳掌功夫"] = 40
				JY.Base["标准"] = 1
			elseif TF == 2 then     --指
				JY.Person[0]["指法技巧"] = 40
				JY.Base["标准"] = 2
			elseif TF == 3 then     --剑
				SetS(4, 5, 5, 5, 2)
				JY.Person[0]["御剑能力"] = 40
				JY.Base["标准"] = 3			
			elseif TF == 4 then     --刀
				SetS(4, 5, 5, 5, 3)
				JY.Person[0]["耍刀技巧"] = 40
				JY.Base["标准"] = 4
			elseif TF == 5 then		 --特 
				SetS(4, 5, 5, 5, 4)
				JY.Person[0]["特殊兵器"] = 40
				JY.Base["标准"] = 5
			elseif TF == 6 then		 --天罡
				JY.Person[0]["内力最大值"] = 500
				JY.Person[0]["内力"] = 500
				SetS(4, 5, 5, 5, 5)
				JY.Base["标准"] = 6
			elseif TF == 7 then		 --仁者
				JY.Person[0]["品德"] = 100
				JY.Person[0]["拳掌功夫"] = 40
				JY.Person[0]["指法技巧"] = 40
				JY.Person[0]["御剑能力"] = 40
				JY.Person[0]["耍刀技巧"] = 40
				JY.Person[0]["特殊兵器"] = 40
				SetS(4, 5, 5, 5, 6)
				JY.Base["标准"] = 7
			elseif TF == 8 then		 --医生
				JY.Person[0]["医疗能力"] = 200
				JY.Person[0]["用毒能力"] = 200
				JY.Person[0]["解毒能力"] = 200
				SetS(4, 5, 5, 5, 7)
				JY.Base["标准"] = 8
			elseif TF == 9 then		 --毒王
				JY.Base["标准"] = 9
				JY.Person[0]["用毒能力"] = 300
				JY.Person[0]["解毒能力"] = 300
			end
			ClsN()
			say("在你初出茅庐之前，我决定帮你一把。",347,0,"谢无悠");
	         ClsN()
	         say("选择一个你喜欢的天赋内功吧。",347,0,"谢无悠");
	if instruct_11(0,188) == true then
	ClsN()
	local k = JY.Wugong;
	local menu = {}	
	for i = 1, 180 do
		local kfname = k[i]["名称"]
		if string.len(kfname) == 8 then
			kfname = kfname.."  "
		elseif string.len(kfname) == 6 then
			kfname = kfname.."    "
		elseif string.len(kfname) == 4 then
			kfname = kfname.."      "
		end
		menu[i] = {kfname,nil,2}
		if k[i]["武功类型"] == 6  then
			menu[i][3] = 1
		end
	end
	local nexty = CC.ScreenH/2-CC.DefaultFont*4 + CC.SingleLineHeight
	local r = ShowMenu2(menu, #menu, 4, 5, CC.ScreenW/2-CC.DefaultFont*10-20, nexty, 0, 0, 1, 0, CC.DefaultFont, C_ORANGE, C_WHITE,"得到天赋内功")
	
	if r > 0 then
		SetTianNei(0, r)
	end
	else
	ClsN()
		TalkEx("也行，你也有自己的想法了",347,0,"谢无悠") 
		instruct_0()
	end	
			ClsN()
	--畅想主角
	else
		lib.LoadPNG(1, 1000 * 2 , 0 , 0, 1)
		
	    local menu = {}
		for i = 1, JY.PersonNum - 1 do
			menu[#menu + 1] = {JY.Person[i]["姓名"], nil, JY.Person[i]["畅想分阶"], i}
		end
		
		--无酒不欢：分出一个菜单函数来显示畅想选单
		local clone_choice = ShowMenu3(menu,#menu,8,15,CC.MainMenuX+CC.Fontsmall*1-13,CC.MainMenuY+CC.Fontsmall*3+10,CC.Fontsmall, C_GOLD, C_WHITE)
	
		ClsN()
		
		JY.Base["畅想"] = clone_choice
		
		JY.Person[0]["代号"]=JY.Person[clone_choice]["代号"]
		JY.Person[0]["头像代号"]=JY.Person[clone_choice]["头像代号"]
		JY.Person[0]["生命增长"]=JY.Person[clone_choice]["生命增长"]
		JY.Person[0]["无用"]=JY.Person[clone_choice]["无用"]
		JY.Person[0]["姓名"]=JY.Person[clone_choice]["姓名"]
		JY.Person[0]["外号"]=JY.Person[clone_choice]["外号"]
		JY.Person[0]["性别"]=JY.Person[clone_choice]["性别"]

		JY.Person[0]["武器"]=JY.Person[clone_choice]["武器"]
		JY.Person[0]["防具"]=JY.Person[clone_choice]["防具"]
		JY.Person[0]["坐骑"]=JY.Person[clone_choice]["坐骑"]
		JY.Person[0]["饰品"]=JY.Person[clone_choice]["饰品"]

		for i=1,5 do
			JY.Person[0]["出招动画帧数" .. i]=JY.Person[clone_choice]["出招动画帧数" .. i]
			JY.Person[0]["出招动画延迟" .. i]=JY.Person[clone_choice]["出招动画延迟" .. i]
			JY.Person[0]["武功音效延迟" .. i]=JY.Person[clone_choice]["武功音效延迟" .. i]
		end
		
		--畅想攻防轻最低25
		JY.Person[0]["攻击力"]=limitX(JY.Person[clone_choice]["攻击力"]/4,25)
		JY.Person[0]["防御力"]=limitX(JY.Person[clone_choice]["防御力"]/4,25)
		JY.Person[0]["轻功"]=limitX(JY.Person[clone_choice]["轻功"]/4,25)
		--医疗用毒解毒最低30
		JY.Person[0]["医疗能力"]=limitX(JY.Person[clone_choice]["医疗能力"],30)
		JY.Person[0]["用毒能力"]=limitX(JY.Person[clone_choice]["用毒能力"],30)
		JY.Person[0]["解毒能力"]=limitX(JY.Person[clone_choice]["解毒能力"],30)

		JY.Person[0]["抗毒能力"]=JY.Person[clone_choice]["抗毒能力"]
		JY.Person[0]["拳掌功夫"]=JY.Person[clone_choice]["拳掌功夫"]
		JY.Person[0]["指法技巧"]=JY.Person[clone_choice]["指法技巧"]
		JY.Person[0]["御剑能力"]=JY.Person[clone_choice]["御剑能力"]
		JY.Person[0]["耍刀技巧"]=JY.Person[clone_choice]["耍刀技巧"]
		JY.Person[0]["特殊兵器"]=JY.Person[clone_choice]["特殊兵器"]
		--暗器技巧至少30
		JY.Person[0]["暗器技巧"]=limitX(JY.Person[clone_choice]["暗器技巧"],30)

		JY.Person[0]["武学常识"]=JY.Person[clone_choice]["武学常识"]
		JY.Person[0]["攻击带毒"]=JY.Person[clone_choice]["攻击带毒"]
		JY.Person[0]["左右互搏"]=JY.Person[clone_choice]["左右互搏"]
	
		for i=1,12 do
			JY.Person[0]["武功" .. i]=JY.Person[clone_choice]["武功" .. i]
			JY.Person[0]["武功等级" .. i]=JY.Person[clone_choice]["武功等级" .. i]
		end

		for i=1,4 do
			JY.Person[0]["携带物品" .. i]=JY.Person[clone_choice]["携带物品" .. i]
			JY.Person[0]["携带物品数量" .. i]=JY.Person[clone_choice]["携带物品数量" .. i]
		end
		
		for i=1,4 do
			JY.Person[0]["天赋外功"..i]=JY.Person[clone_choice]["天赋外功"..i]
		end
		
		JY.Person[0]["天赋内功"]=JY.Person[clone_choice]["天赋内功"]
		JY.Person[0]["天赋轻功"]=JY.Person[clone_choice]["天赋轻功"]
		JY.Person[0]["畅想分阶"]=JY.Person[clone_choice]["畅想分阶"]
		JY.Person[0]["外号2"]=JY.Person[clone_choice]["外号2"]
		JY.Person[0]["特色指令"] = JY.Person[clone_choice]["特色指令"]
		JY.Person[0]["半身像"] = JY.Person[clone_choice]["半身像"]
		JY.Person[0]["枪棒技巧"] = JY.Person[clone_choice]["枪棒技巧"]
		for i=1,6 do
			JY.Person[0]["技能" .. i]=JY.Person[clone_choice]["技能" .. i]
		end	
		
		--畅想萧中慧无法慧心
		if JY.Base["畅想"] == 77 then
			JY.Person[0]["特色指令"] = 0	
		end
		
		--畅想王语嫣初始兵器值
		if JY.Base["畅想"] == 76 then
			JY.Person[0]["拳掌功夫"]=30
			JY.Person[0]["指法技巧"]=30
			JY.Person[0]["御剑能力"]=30
			JY.Person[0]["耍刀技巧"]=30
			JY.Person[0]["特殊兵器"]=30
		end
		
		--畅想郭靖初始20拳
		if JY.Base["畅想"] == 55 then
			JY.Person[0]["拳掌功夫"]=20
		end
		
		--畅想陈家洛初始兵器值提高
		if JY.Base["畅想"] == 75 then
			JY.Person[0]["拳掌功夫"]=100
			JY.Person[0]["指法技巧"]=60
			JY.Person[0]["御剑能力"]=60
			JY.Person[0]["耍刀技巧"]=60
			JY.Person[0]["特殊兵器"]=60
		end

		if JY.Base["畅想"] == 69 then
		    local wcywg = JYMsgBox("请选择", "是否开场领悟天外", {"降龙","打狗","否"}, 3, 69)
			if wcywg == 1 then
		       setWG(26)
			elseif wcywg == 2 then
		       setWG(80) 
	        end
			ClsN()
		end
	
		if JY.Base["畅想"] == 60 then
		    local wcywg = JYMsgBox("请选择", "是否体验灵蛇杖大礼包", {"是","否"}, 2, 60)
			if wcywg == 1 then
		       setWG(81)
			   awakening(0,1)
JY.Person[0]["武功2"] = 81
JY.Person[0]["武功等级2"] = 999
			   ClsN()
			   instruct_2(244,1)
	        end
			ClsN()
		end

		if JY.Base["畅想"] == 655 then
		    local wcywg = JYMsgBox("请选择", "是否体验凝血神爪", {"是","否"}, 2, 60)
			if wcywg == 1 then
		       setWG(134)
	        end
			ClsN()
		end

	
		--畅想王重阳开局选择外功
		if JY.Base["畅想"] == 129 then
			local wcywg = JYMsgBox("请选择", "请选择你的初始外功", {"全真剑法","一阳指"}, 2, 129)
			if wcywg == 1 then
				JY.Person[0]["武功1"]=39
				JY.Person[0]["武功等级1"]=999
			elseif wcywg == 2 then
				JY.Person[0]["武功1"]=17
				JY.Person[0]["武功等级1"]=999
			end
			JY.Person[0]["武功2"]=100
			JY.Person[0]["武功等级2"]=999
			JY.Person[0]["武功3"]=0
			JY.Person[0]["武功等级3"]=0
			ClsN()
		end
		
		--畅想裘千尺头像变美
		if JY.Base["畅想"] == 617 then
			JY.Person[0]["头像代号"]=353
			JY.Person[0]["出招动画帧数3"]=24
			JY.Person[0]["出招动画延迟3"]=22
			JY.Person[0]["武功音效延迟3"]=22
		end

		if JY.Base["畅想"] == 455 then
			JY.Person[0]["个人觉醒"]=1
		end
		
		if JY.Base["畅想"] == 637 then
			setNG(107)
			setWG(11)
		end		
		
		--畅想杨过初始化
		if JY.Base["畅想"] == 58 then
			JY.Person[0]["攻击力"]=30
			JY.Person[0]["防御力"]=30
			JY.Person[0]["轻功"]=30
			JY.Person[0]["拳掌功夫"]=50
			JY.Person[0]["指法技巧"]=30
			JY.Person[0]["御剑能力"]=50
			JY.Person[0]["特殊兵器"]=10
			JY.Person[0]["武功1"]=42
			JY.Person[0]["武功等级1"]=999
			JY.Person[0]["武功2"]=95
			JY.Person[0]["武功等级2"]=900
			JY.Person[0]["武功3"]=0
			JY.Person[0]["武功等级3"]=0
			JY.Person[0]["天赋内功"]=95
			JY.Person[0]["天赋外功1"]=42
			JY.Person[0]["天赋外功2"]=0
			JY.Scene[18]["进入条件"] = 0
			JY.Scene[19]["进入条件"] = 1
			JY.Scene[101]["进入条件"] = 1
			JY.Scene[36]["进入条件"] = 1
			JY.Scene[28]["进入条件"] = 1
			JY.Scene[93]["进入条件"] = 1
			JY.Scene[105]["进入条件"] = 1
			null(18, 6)
			null(70, 87)
			addevent(70, 95, 0, 4188, 3, 0)
		end

		if JY.Base["畅想"] == 606 then
        local wcywg = JYMsgBox("请选择", "是否体验六脉神剑天外", {"是","否"}, 2, 606)
			if wcywg == 1 then
		       setWG(49)
	        end
			ClsN()
		end
		
		JY.Person[0]["资质"] = InputNum("输入资质",1,100);

		ClsN()	
	end
	 
	--选择内力性质
	local nl = JYMsgBox("请选择", "想要哪种属性的内力", {"阴性", "阳性", "调和"}, 3, 261)
	if nl == 1 then
		JY.Person[0]["内力性质"] = 0
	elseif nl == 2 then
		JY.Person[0]["内力性质"] = 1
	else
		JY.Person[0]["内力性质"] = 2
	end
	
	--天罡内力
	if JY.Base["标准"] == 6 then
		if JY.Person[0]["内力性质"] == 0 then
			SetS(112,0,0,0,0)
		elseif JY.Person[0]["内力性质"] == 1 then
			SetS(112,0,0,0,1)
		else
			SetS(112,0,0,0,2)
		end
		JY.Person[0]["内力性质"] = 2
	end

	ClsN();
	ShowScreen()
	
	--其他人物初始化
	for p = 0, JY.PersonNum-1 do
		local r = 0
		for i,v in pairs(CC.PersonExit) do
			if v[1] == p then
				r = 1
			end
		end
		if p == 0 then
			r = 1
		end
		
		--敌方的初始化
		if r == 0 then
			for i = 1, CC.Kungfunum do
				if JY.Person[p]["武功" .. i] > 0 then
					if p < 191 then
						--JY.Person[p]["武功等级" .. i] = 999    --BOSS武功是为极
					else
						--不到10级的加到10级
						if JY.Person[p]["武功等级" .. i] < 900 then
							JY.Person[p]["武功等级" .. i] = 900
						end
					end
				else
					break;
				end
			end
		
			--生命不足200的加到200
			if JY.Person[p]["生命最大值"] < 200 then
				JY.Person[p]["生命最大值"] = 200
				JY.Person[p]["生命"] = JY.Person[p]["生命最大值"]
			end
			
			--内力不足200的加到200
			if JY.Person[p]["内力最大值"] < 200 then
				JY.Person[p]["内力最大值"] = 200
				JY.Person[p]["内力"] = JY.Person[p]["内力最大值"]
			end
			
			--设置血量翻倍，根据难度系数提高
			local dif_factor;
			--难1，难2
			if JY.Base["难度"] < 3 then
				dif_factor = 2;
			--难3，难4，难5
			elseif JY.Base["难度"] > 2 and JY.Base["难度"] < 6 then
				dif_factor = 3;
			--难6
			else
				dif_factor = 4;
			end
			
			JY.Person[p]["血量翻倍"] = dif_factor
			
			--木桩血量不翻倍
			if p == 591 then
				JY.Person[p]["血量翻倍"] = 1
			end
			
			--李秋水的无相分身为1血
			if p == 600 then
				JY.Person[p]["生命最大值"] = 1
				JY.Person[p]["生命"] = JY.Person[p]["生命最大值"]
				JY.Person[p]["血量翻倍"] = 1
			end
		end
	end
	
	--无酒不欢：增加一些初始化设定
	
	--华山后山谢无悠
	instruct_3(80, 17, 1, 0, 4105, 0, 0, 4133*2, 4133*2, 4133*2, 0, -2, -2)
	
	--鸠摩智贴图
	instruct_3(16, 10, -2,-2,-2,-2,-2,4153*2,4153*2,4153*2,-2,-2,-2)
	
	--李文秀贴图
	instruct_3(62,4,0,0,0,0,0,9238,9238,9238,0,0,0); 
	
	--丐帮乞丐贴图
		local tmpmenu = {
		{1, 99},
		{3, 99},
		{60, 98},
		{61, 99},
	}
	local tmprand = math.random(#tmpmenu)
	SetS(tmpmenu[tmprand][1], 32, 30, 3, tmpmenu[tmprand][2])
	instruct_3(tmpmenu[tmprand][1],tmpmenu[tmprand][2],1,-2,31010,-2,-2,6266,6266,6266,-2,-2,-2)
end

--无酒不欢：机率判定函数
function JLSD(s1, s2, dw)
    local pid = WAR.Person[WAR.CurID]["人物编号"]
	local d = 0
	local pd = 0
	local s = math.random(100+d)
	local s3 = math.random(100+d)
	local chance_up = 0;
	--论剑打赢阿凡提奖励，几率+6
	if dw == 0 and JY.Person[606]["论剑奖励"] == 1 then
		chance_up = 3
	end
	--如果不在队伍中，几率+20
	if inteam(dw) == false then
		chance_up = JY.Base["难度"]+4
	end
	
	if WAR.KMZWD == 2 and dw ~= pid then
	   pd = 1
	end
	if WAR.TWBl == 1 and dw ~= pid then
	   pd = 1
	end	
	
	if WAR.SJSD[dw] ~=nil  then
	   pd = 1
	end
	
	if WAR.MBZ[dw] ~= nil then
	   if WAR.MBZ[dw] >= 50 then
	   s2 = math.modf(s2/2)
	   end				
	end
	
	if WAR.MK_XLT[dw]~=nil then
	chance_up = chance_up + 10
	end
	
	if WAR.YDXT[dw] ~=nil  then
	chance_up = chance_up + 10
	end
 
	if force_ID(dw)  then----斗将强化
	chance_up = chance_up + 15
	end
 
 	if WAR.Person[WAR.CurID]["精神崩溃"]>50 and math.random(10,60)<30 then
	   pd = 1
	end
 
	--判定是否成功
	if pd == 0 then
        if s1 - chance_up < s and s <= s2 + chance_up then
		  return true
	    elseif  (s1 - chance_up < s3 and s3 <= s2 + chance_up) and nglw(dw,102)>=1 then
	      return true
	    else
		  return false
	    end
    else
	return false
	end
end

--游戏主循环
function Game_Cycle()
    lib.Debug("Start game cycle");

    while JY.Status ~=GAME_END and JY.Status ~=GAME_START do
		if JY.Restart == 1 then
			break
		end
        local t1=lib.GetTime();

	    JY.Mytick=JY.Mytick+1;    --20个节拍无击键，则主角变为站立状态
		if JY.Mytick%20==0 then
            JY.MyCurrentPic=0;
		end

        if JY.Mytick%1000==0 then
            JY.MYtick=0;
        end

        if JY.Status==GAME_FIRSTMMAP then  --首次显示主场景，重新调用主场景贴图，渐变显示。然后转到正常显示
			CleanMemory()
			lib.ShowSlow(20, 1)
			JY.MmapMusic = 57
			JY.Status = GAME_MMAP
			Init_MMap()
			lib.DrawMMap(JY.Base["人X"], JY.Base["人Y"], GetMyPic())
			lib.ShowSlow(20, 0)
        elseif JY.Status==GAME_MMAP then
            Game_MMap();
 		elseif JY.Status==GAME_SMAP then
            Game_SMap();
		end
		collectgarbage("step", 0)
        local t2=lib.GetTime();
	    if t2-t1<CC.Frame then
            lib.Delay(CC.Frame-(t2-t1));
	    end
	end
end

function Game_MMap()      --主地图
	if JY.Restart == 1 then
		return
	end

    local direct = -1;
    local keypress, ktype, mx, my = lib.GetKey();
	--先检测跟上次不同的方向是否被按下
    for i = VK_RIGHT,VK_UP do
        if i ~= CC.PrevKeypress and lib.GetKeyState(i) ~=0 then
			keypress = i
		end
	end 
    --如果与上次不同的方向未被按下，则检测与上次相同的方向是否被按下
	if keypress==-1 and	lib.GetKeyState(CC.PrevKeypress) ~=0 then
		keypress = CC.PrevKeypress
	end
    CC.PrevKeypress = keypress
    if keypress==VK_UP then
		direct=0;
		JY.WalkCount = JY.WalkCount + 1
	elseif keypress==VK_DOWN then
		direct=3;
		JY.WalkCount = JY.WalkCount + 1
	elseif keypress==VK_LEFT then
		direct=2;
		JY.WalkCount = JY.WalkCount + 1
	elseif keypress==VK_RIGHT then
		direct=1;
		JY.WalkCount = JY.WalkCount + 1
	else
		JY.WalkCount = 0
	end

		if keypress == VK_UP or keypress == VK_DOWN or keypress == VK_LEFT or keypress == VK_RIGHT then
			OEVENTLUA[30050]()
	    end		
   
    if ktype == 1 then
	    JY.Mytick=0;
		if keypress==VK_ESCAPE then
			Cls()
			MMenu();
			--CMenu()
			if JY.Status ~= GAME_MMAP  then
				return ;
			end
		elseif keypress == VK_H then		--按h直接回家
			My_Enter_SubScene(70, 35, 31, 2);
			return;
		--无酒不欢：全套快捷键 7-30
		elseif keypress == VK_S then	--存档
			Menu_SaveRecord()
			if JY.Status ~= GAME_MMAP  then
				return ;
			end
		elseif keypress == VK_L then	--读档
			Menu_ReadRecord()
			if JY.Status ~= GAME_MMAP  then
				return ;
			end
		elseif keypress == VK_Z then	--状态
			Cls()
			Menu_Status()
			--Duiwumb()
		elseif keypress == VK_E then	--物品
			Cls()
			Menu_Thing()
		elseif keypress == VK_F1 then	--马车	
			Cls()
			My_ChuangSong_Ex()
			if JY.Status ~= GAME_MMAP then
				return;
			end
		elseif keypress == VK_F3 then	--队友排位
			Cls()
			Menu_TZDY()
		elseif keypress == VK_F4 then	--整理
			Cls()		
			Menu_WPZL()
		end
	elseif ktype == 2 or ktype == 3 then
		local tmpx,tmpy = mx, my
		mx = mx - CC.ScreenW / 2
		my = my - CC.ScreenH / 2
		mx = (mx) / CC.XScale
		my = (my) / CC.YScale
		mx, my = (mx + my) / 2, (my - mx) / 2
		if mx > 0 then
			mx = mx + 0.99
		else
			mx = mx - 0.01
		end
		if my > 0 then
			my = my + 0.99
		else
			mx = mx - 0.01
		end
		mx = math.modf(mx)+JY.Base["人X"];
		my = math.modf(my)+ JY.Base["人Y"]
				
		--鼠标移动
		if ktype == 2 then
			if lib.GetMMap(mx, my, 3) > 0 then				--如果有建筑，判断是否可进入
				for i=0, 4 do
		    		for j=0, 4 do
		    			local xx, yy = mx-i, my-j;
				    	local sid=CanEnterScene(xx,xx);
				    	if sid < 0 then
				    		xx, yy = mx+i, my+j;
				    		sid=CanEnterScene(xx,yy);
				    	end
						if sid>=0 then
							CC.MMapAdress[0] = sid;
							CC.MMapAdress[1] = tmpx;
							CC.MMapAdress[2] = tmpy;
							CC.MMapAdress[3] = xx;
							CC.MMapAdress[4] = yy;
		
							i=5;		--退出循环
							break;
						end
					end
				end
			else
				CC.MMapAdress[0]= nil;
			end
		--鼠标左键
		elseif ktype == 3 then
			if CC.MMapAdress[0] ~= nil then
				mx = CC.MMapAdress[3] - JY.Base["人X"];
				my = CC.MMapAdress[4] - JY.Base["人Y"];
				CC.MMapAdress[0]= nil;
			else
				AutoMoveTab = {[0] = 0}
				mx = mx - JY.Base["人X"]
				my = my - JY.Base["人Y"]
			end
			walkto(mx, my)
		end
	elseif ktype == 4 then
		JY.Mytick=0;
		Cls()
		MMenu();
		--CMenu()
		if JY.Status ~= GAME_MMAP then
			return ;
		end
	end
    
    if AutoMoveTab[0] ~= 0 then
	    if direct == -1 then
			direct = AutoMoveTab[AutoMoveTab[0]]
			AutoMoveTab[AutoMoveTab[0]] = nil
			AutoMoveTab[0] = AutoMoveTab[0] - 1
	    end
	else
	    AutoMoveTab = {[0] = 0}
	end


    local x,y;              --按照方向键要到达的坐标
	local CanMove = function(nd, nnd)
		local nx, ny = JY.Base["人X"] + CC.DirectX[nd + 1], JY.Base["人Y"] + CC.DirectY[nd + 1]
		if nnd ~= nil then
			nx, ny = nx + CC.DirectX[nnd + 1], ny + CC.DirectY[nnd + 1]
		end
		if CC.hx == nil and ((lib.GetMMap(nx, ny, 3) == 0 and lib.GetMMap(nx, ny, 4) == 0) or CanEnterScene(nx, ny) ~= -1) then
			return true
		else
			return false
		end
	end
    if direct ~= -1 then   --按下了光标键
        AddMyCurrentPic();         --增加主角贴图编号，产生走路效果
        x=JY.Base["人X"]+CC.DirectX[direct+1];
        y=JY.Base["人Y"]+CC.DirectY[direct+1];
        JY.Base["人方向"]=direct;
		if JY.WalkCount == 1 then
			lib.Delay(90)
		end
    else
        x=JY.Base["人X"];
        y=JY.Base["人Y"];

    end

	if direct~=-1 then
		JY.SubScene=CanEnterScene(x,y);   --判断是否进入子场景
	end

    if lib.GetMMap(x,y,3)==0 and lib.GetMMap(x,y,4)==0 then     --没有建筑，可以到达
        JY.Base["人X"]=x;
        JY.Base["人Y"]=y;
    end
    JY.Base["人X"]=limitX(JY.Base["人X"],10,CC.MWidth-10);           --限制坐标不能超出范围
    JY.Base["人Y"]=limitX(JY.Base["人Y"],10,CC.MHeight-10);

    if CC.MMapBoat[lib.GetMMap(JY.Base["人X"],JY.Base["人Y"],0)]==1 then
	    JY.Base["乘船"]=1;
	else
	    JY.Base["乘船"]=0;
	end

    lib.DrawMMap(JY.Base["人X"],JY.Base["人Y"],GetMyPic());             --绘画主地图

	--当前XY坐标显示
    if CC.ShowXY==1 then
	    DrawString(10,CC.ScreenH-60,string.format("%s %d %d","大地图",JY.Base["人X"],JY.Base["人Y"]) ,C_GOLD,CC.Fontsmall);
	end
	
	DrawTimer();		--最下方动态提示
	JYZTB();			--左上角简易信息
		
		
	--显示鼠标指中的场景名称
	if CC.MMapAdress[0] ~= nil then
		DrawStrBox(CC.MMapAdress[1]+10,CC.MMapAdress[2],JY.Scene[CC.MMapAdress[0]]["名称"],C_GOLD,CC.DefaultFont);
	end
		
    ShowScreen();

    if JY.SubScene >= 0 then          --进入子场景
        CleanMemory();
		lib.UnloadMMap();
        lib.PicInit();
        lib.ShowSlow(20,1)

		JY.Status=GAME_SMAP;
        JY.MmapMusic=-1;

        JY.MyPic=GetMyPic();
        JY.Base["人X1"]=JY.Scene[JY.SubScene]["入口X"]
        JY.Base["人Y1"]=JY.Scene[JY.SubScene]["入口Y"]

        Init_SMap(1);
		return
    end
end

--主角走路
function walkto(xx,yy,x,y,flag)
	local x,y
	AutoMoveTab={[0]=0}
	if JY.Status==GAME_SMAP  then
		x=x or JY.Base["人X1"]
		y=y or JY.Base["人Y1"]
	elseif JY.Status==GAME_MMAP then
		x=x or JY.Base["人X"]
		y=y or JY.Base["人Y"]
	end
	xx,yy=xx+x,yy+y
	if JY.Status==GAME_SMAP then
		CC.AutoMoveEvent[0] = 0;
		CC.AutoMoveEvent[1] = 0;
		CC.AutoMoveEvent[2] = 0;

		if SceneCanPass(xx, yy) == false then
			if GetS(JY.SubScene, xx, yy, 3) > 0 and GetD(JY.SubScene, GetS(JY.SubScene, xx, yy, 3), 2) > 0 then
				CC.AutoMoveEvent[1] = xx;
				CC.AutoMoveEvent[2] = yy;
				--无酒不欢：一处蛋疼的细节修改，自动触发事件的站位优先级
				if x < xx then
					if SceneCanPass(xx-1,yy) then
						xx = xx-1;
					elseif SceneCanPass(xx,yy+1) then
						yy = yy+1;
					elseif SceneCanPass(xx,yy-1) then
						yy = yy-1;
					elseif SceneCanPass(xx+1,yy) then
						xx = xx+1;
					else
						return;
					end
				else
					if SceneCanPass(xx+1,yy) then
						xx = xx+1;
					elseif SceneCanPass(xx,yy+1) then
						yy = yy+1;
					elseif SceneCanPass(xx,yy-1) then
						yy = yy-1;
					elseif SceneCanPass(xx-1,yy) then
						xx = xx-1;
					else
						return;
					end
				end
			else
				return;
			end
		end

	end
	if JY.Status==GAME_MMAP and ((lib.GetMMap(xx,yy,3)==0 and lib.GetMMap(xx,yy,4)==0) or CanEnterScene(xx,yy)~=-1)==false then
		return
	end
	local steparray={};
	local stepmax;
	local xy={}
	if JY.Status==GAME_SMAP then
		for i=0,CC.SWidth-1 do
			xy[i]={}
		end
	elseif JY.Status==GAME_MMAP then
		for i=0,479 do
			xy[i]={}
		end
	end
	if flag~=nil then
		stepmax=640
	else
		stepmax=240
	end
	for i=0,stepmax do
	    steparray[i]={};
        steparray[i].x={};
        steparray[i].y={};
	end
	local function canpass(nx,ny)
		if JY.Status==GAME_SMAP and (nx>CC.SWidth-1 or ny>CC.SWidth-1 or nx<0 or ny<0) then
			return false
		end
		if JY.Status==GAME_MMAP and (nx>479 or ny>479 or nx<1 or ny<1) then
			return false
		end
		if xy[nx][ny]==nil then
			if JY.Status==GAME_SMAP then
				if  SceneCanPass(nx,ny) then
					return true
				end
			elseif JY.Status==GAME_MMAP then
				if (lib.GetMMap(nx,ny,3)==0 and lib.GetMMap(nx,ny,4)==0) or CanEnterScene(nx,ny)~=-1 then
					return true
				end
			end
		end
		return false
	end

	local function FindNextStep(step)
		if step==stepmax then
			return
		end
		local step1=step+1
		local num=0
		for i=1,steparray[step].num do

			if steparray[step].x[i]==xx and steparray[step].y[i]==yy then
				return
			end

			if canpass(steparray[step].x[i]+1,steparray[step].y[i]) then
				num=num+1
				steparray[step1].x[num]=steparray[step].x[i]+1
				steparray[step1].y[num]=steparray[step].y[i]
				xy[steparray[step1].x[num]][steparray[step1].y[num]]=step1
			end
			if canpass(steparray[step].x[i]-1,steparray[step].y[i]) then
				num=num+1
				steparray[step1].x[num]=steparray[step].x[i]-1
				steparray[step1].y[num]=steparray[step].y[i]
				xy[steparray[step1].x[num]][steparray[step1].y[num]]=step1
			end
			if canpass(steparray[step].x[i],steparray[step].y[i]+1) then
				num=num+1
				steparray[step1].x[num]=steparray[step].x[i]
				steparray[step1].y[num]=steparray[step].y[i]+1
				xy[steparray[step1].x[num]][steparray[step1].y[num]]=step1
			end
			if canpass(steparray[step].x[i],steparray[step].y[i]-1) then
				num=num+1
				steparray[step1].x[num]=steparray[step].x[i]
				steparray[step1].y[num]=steparray[step].y[i]-1
				xy[steparray[step1].x[num]][steparray[step1].y[num]]=step1
			end
		end
		if num>0 then
			steparray[step1].num=num
			FindNextStep(step1)
		end
	end

	steparray[0].num=1;
	steparray[0].x[1]=x;
	steparray[0].y[1]=y;
	xy[x][y]=0
	FindNextStep(0);

    local movenum=xy[xx][yy];

	if movenum==nil then
		return
	end
	AutoMoveTab[0]=movenum
	for i=movenum,1,-1 do
        if xy[xx-1][yy]==i-1 then
            xx=xx-1;
            AutoMoveTab[1+movenum-i]=1;
        elseif xy[xx+1][yy]==i-1 then
            xx=xx+1;
            AutoMoveTab[1+movenum-i]=2;
        elseif xy[xx][yy-1]==i-1 then
            yy=yy-1;
            AutoMoveTab[1+movenum-i]=3;
        elseif xy[xx][yy+1]==i-1 then
            yy=yy+1;
            AutoMoveTab[1+movenum-i]=0;
        end
	end
end

function GetMyPic()      --计算主角当前贴图
    local n;
	if JY.Status==GAME_MMAP and JY.Base["乘船"]==1 then
		if JY.MyCurrentPic >=4 then
			JY.MyCurrentPic=0
		end
	else
		if JY.MyCurrentPic >6 then
			JY.MyCurrentPic=1
		end
	end

	if JY.Base["乘船"]==0 then
		if JY.Person[0]["性别"] == 0 then
			n=CC.MyStartPicM+JY.Base["人方向"]*7+JY.MyCurrentPic;
		else
			n=CC.MyStartPicF+JY.Base["人方向"]*7+JY.MyCurrentPic;
		end
	else
	    n=CC.BoatStartPic+JY.Base["人方向"]*4+JY.MyCurrentPic;
	end
	return n;
end

--增加当前主角走路动画帧, 主地图和场景地图都使用
function AddMyCurrentPic()
    JY.MyCurrentPic=JY.MyCurrentPic+1;
end

--场景是否可进
--id 场景代号
--x,y 当前主地图坐标
--返回：场景id，-1表示没有场景可进
function CanEnterScene(x,y)         --场景是否可进
    for id = 0,JY.SceneNum-1 do
		local scene=JY.Scene[id];
		if (x==scene["外景入口X1"] and y==scene["外景入口Y1"]) or
		   (x==scene["外景入口X2"] and y==scene["外景入口Y2"]) then
			local e=scene["进入条件"];
			if e==0 then        --可进
				return id;
			elseif e==1 then    --不可进
				return -1
			end
		end
	end
    return -1;
end

--主菜单
function MMenu()
    local menu={{"队伍",Menu_Teaminfo,1},
	            {"物品",Menu_Thing,1},
				{"医疗",Menu_Doctor,1},
	            {"解毒",Menu_DecPoison,1},
	            {"离队",Menu_PersonExit,1},
	            {"系统",Menu_System,1},
                {"门派", Menu_MP, 1}, 
				{"经脉", JingMai_testShowJMLayout, 1}, 
				};

    ShowMenu(menu,8,0,CC.MainMenuX,CC.MainMenuY,0,0,1,1,CC.DefaultFont,C_RED, C_ORANGE)
end

--系统子菜单
function Menu_System()
	local menu = {
	{"读取进度", Menu_ReadRecord, 1}, 
	{"保存进度", Menu_SaveRecord, 1}, 
	{"关闭音乐", Menu_SetMusic, 1}, 
	{"关闭音效", Menu_SetSound, 1}, 
	{"物品整理", Menu_WPZL, 1}, 
	--{"系统攻略", Menu_Help, 1},
	{"我的代码", Menu_MYDIY, 1},
	{"离开游戏", Menu_Exit2, 1}
	}
	if JY.EnableMusic == 0 then
		menu[3][1] = "打开音乐"
	end
	if JY.EnableSound == 0 then
		menu[4][1] = "打开音效"
	end
	local r = ShowMenu(menu, #menu, 0, CC.MainSubMenuX, CC.MainSubMenuY, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r == 0 then
		return 0
	elseif r < 0 then
		return 1
	end
end

function Menu_MP() --门派菜单日月神教
	local menu = {}
	for i = 1, #CC.MPMENU do
		menu[i] = {CC.MPMENU[i], nil, 1}
	end
	local r = ShowMenu(menu, #menu, 0, CC.MainSubMenuX, CC.MainSubMenuY, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r == 1 then
		local menu2 = {}
		for i = 1, #CC.MP do
			menu2[i] = CC.MP[i]
		end
		
		DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, "要查看哪个门派", C_WHITE, CC.DefaultFont)
		local r2 = ShowMenu(menu2,#menu2,15,85,55,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
		--local r2 = ShowMenu(menu2,#menu2,0,CC.MainSubMenuX,CC.MainSubMenuY+CC.SingleLineHeight,0,0,1,1,CC.DefaultFont,C_ORANGE,C_WHITE);
		if r2 <= 0 then
			do return end
		end
		Cls()
		say(CC.MPINFO[r2],585,0) 		
		Cls()
		say(CC.MPINFO2[r2],585,0) 			
		for i = 1, #CC.SKILLINFO[r2] do		
			Cls()
			local r3 = JYMsgBox(CC.SKILLNAME[r2][i], CC.SKILLINFO[r2][i], {"继续", "停止"}, 2, 220)
			if r3 == 2 then
				break
			end
		end
	elseif r == 2 then
		OEVENTLUA[30001]()
	else
		return 0
	end	
end

function Menu_MYDIY()
	dofile(CONFIG.ScriptPath.."DIY.lua");	--飝
end

function Menu_Help()
	--暂时取消
	--[[
	local title = "系统攻略";
	local str ="装备说明：查看各种装备的说明。"
						.."*武功说明：查看各种武功的说明。"
						.."*天书攻略：各种天书的拿法，以及游戏技攻略。"
	local btn = {"装备说明","武功说明","天书攻略"};
	local num = #btn;
	local r = JYMsgBox(title,str,btn,num,nil,1);

	if r == 1 then
		ZBInstruce();
	elseif r == 2 then
		WuGongIntruce();
	elseif r == 3 then
		TSInstruce();
	end]]
	return 1;
end

--音乐开关
function Menu_SetMusic()
	if JY.EnableMusic == 0 then
		JY.EnableMusic = 1
		PlayMIDI(JY.CurrentMIDI)
	else
		JY.EnableMusic = 0
		lib.PlayMIDI("")
	end
	return 1
end

--音效开关
function Menu_SetSound()
	if JY.EnableSound == 0 then
		JY.EnableSound = 1
	else
		JY.EnableSound = 0
	end
	return 1
end

--队伍菜单
function Menu_Teaminfo()
	local menu = {
		{"状态查看", Menu_Status, 1}, 
		{"队伍排序", Menu_TZDY, 1}}
	
	ShowMenu(menu, 2, 0, CC.MainSubMenuX, CC.MainSubMenuY, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
end

--物品菜单
function Menu_Thing()
	local menu = {
	{"全部物品", nil, 1}, 
	{"剧情物品", nil, 1}, 
	{"神兵宝甲", nil, 1}, 
	{"武功秘笈", nil, 1}, 
	{"灵丹妙药", nil, 1}, 
	{"伤人暗器", nil, 1}}
	local r = ShowMenu(menu, 6, 0, CC.MainSubMenuX, CC.MainSubMenuY, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r > 0 then
		local thing = {}
		local thingnum = {}
		for i = 0, CC.MyThingNum - 1 do
			thing[i] = -1
			thingnum[i] = 0
		end
		local num = 0
		for i = 0, CC.MyThingNum - 1 do
			local id = JY.Base["物品" .. i + 1]
			if id >= 0 then
				if r == 1 then
					thing[i] = id
					thingnum[i] = JY.Base["物品数量" .. i + 1]
				else
					if JY.Thing[id]["类型"] == r - 2 then
						thing[num] = id
						thingnum[num] = JY.Base["物品数量" .. i + 1]
						num = num + 1
					end
				end
			end 
		end
		local r = SelectThing(thing, thingnum)
		if r >= 0 then
			UseThing(r)
			return 1
		end
	end
	return 0
end

--物品整理
function Menu_WPZL()
	local function swap(a, b) 
		JY.Base["物品" .. a], JY.Base["物品" .. b] = JY.Base["物品" .. b], JY.Base["物品" .. a]
		JY.Base["物品数量" .. a], JY.Base["物品数量" .. b] = JY.Base["物品数量" .. b], JY.Base["物品数量" .. a]
	end
	
	local flag = 0;
	for i=1, CC.MyThingNum do
        flag = 0;
        for j=1, CC.MyThingNum-i+1 do
             if JY.Base["物品"..j] > -1 and JY.Base["物品" .. j+1] > -1 then				--如果两个物品有效
				local wg1 = JY.Thing[JY.Base["物品"..j]]["练出武功"];
				local wg2 = JY.Thing[JY.Base["物品"..j+1]]["练出武功"];                           
				if wg2 < 0 then								--不可练出武功的根据编号排序
					if wg1 > 0 or  (wg1 < 0 and JY.Base["物品"..j] > JY.Base["物品"..j+1])  then                
						swap(j, j+1);
						flag = 1;
					end   
                elseif wg1 > 0 then							--可练出武功的根据类型排序，如果类型相同，再根据武功10级威力排序                         
					if JY.Wugong[wg1]["武功类型"] > JY.Wugong[wg2]["武功类型"] or (JY.Wugong[wg1]["武功类型"] == JY.Wugong[wg2]["武功类型"] and JY.Wugong[wg1]["攻击力10"] > JY.Wugong[wg2]["攻击力10"]) then
						swap(j, j+1);
						flag = 1;
					end
				end
			end
		end
		if flag == 0 then									--如果一轮下来没有任何的交换，肯定就是已经排好序了，直接退出
			break;
		end
	end
	Cls()
	DrawStrBoxWaitKey("行囊整理完毕", C_WHITE, CC.DefaultFont)
end

--大商家卖物品菜单
function MenuDSJ()
	local menu = {
	{"全部物品", nil, 0}, 
	{"剧情物品", nil, 0}, 
	{"神兵宝甲", nil, 1}, 
	{"武功秘笈", nil, 1}, 
	{"灵丹妙药", nil, 1}, 
	{"伤人暗器", nil, 1}}
	local r = ShowMenu(menu, 6, 0, CC.ScreenW/2-CC.DefaultFont*2-10, CC.ScreenH/2-CC.DefaultFont*3, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r > 0 then
		local thing = {}
		local thingnum = {}
		for i = 0, CC.MyThingNum - 1 do
			thing[i] = -1
			thingnum[i] = 0
		end
		local num = 0
		for i = 0, CC.MyThingNum - 1 do
			local id = JY.Base["物品" .. i + 1]
			if id >= 0 then
				if r == 1 then
					thing[i] = id
					thingnum[i] = JY.Base["物品数量" .. i + 1]  
				else
					if JY.Thing[id]["类型"] == r - 2 then
						thing[num] = id
						thingnum[num] = JY.Base["物品数量" .. i + 1]
						num = num + 1
					end
				end
			end
		end
	  
		local r = SelectThing(thing, thingnum)
		if r >= 0 then
			return r
		end
	end
	return -1
end

--铁匠强化物品菜单
function MenuTJQH()
	local thing = {}
	local thingnum = {}
	for i = 0, CC.MyThingNum - 1 do
		thing[i] = -1
		thingnum[i] = 0
	end
	local num = 0
	for i = 0, CC.MyThingNum - 1 do
		local id = JY.Base["物品" .. i + 1]
		if id >= 0 then
			if JY.Thing[id]["类型"] == 1 then
				thing[num] = id
				thingnum[num] = JY.Base["物品数量" .. i + 1]
				num = num + 1
			end	
		end
	end
	local r = SelectThing(thing, thingnum)
	if r >= 0 then
		return r
	end
	return -1
end

--回营整备
function Menu_HYZB()
	if JY.SubScene ~= 25 then
		JY.SubScene = 70
		JY.Base["人X1"] = 8
		JY.Base["人Y1"] = 28
		JY.Base["人X"] = 358
		JY.Base["人Y"] = 235
	end
end

--无酒不欢：新版X菜单
function Menu_Exit()      --离开菜单
	local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)
	lib.SetClip(0,0,0,0)
	local t = 0
	for i = 0, (CC.ScreenH/2), 3 do
		lib.Background(0,i,CC.ScreenW,i + 3,t)
		t = t + 1
	end
	for i = (CC.ScreenH/2)+1, CC.ScreenH-3, 3 do
		lib.Background(0,i,CC.ScreenW,i + 3,t)
		t = t - 1
	end
	lib.GetKey()
	local menu = {
	{"离开游戏", nil, 1}, 
	{"返回标题", nil, 1},
	{"继续游戏", nil, 2}}
	local r = ShowMenu(menu, 3, 0, CC.ScreenW/2-105, CC.ScreenH/2-89, 0, 0, 0, 0, 50, C_GOLD, C_WHITE)
	if r == 1 then
        JY.Status =GAME_END;
        return 1;
	elseif r == 2 then
		JY.Restart = 1
        JY.Status =GAME_START;
        return 0;
	end
	lib.LoadSur(surid, 0, 0)
	ShowScreen();
	lib.FreeSur(surid)
    return 0;
end

--离开菜单
function Menu_Exit2()
    Cls();
    if DrawStrBoxYesNo(-1,-1,"是否真的要离开游戏(Y/N)?",C_WHITE,CC.DefaultFont) == true then
        JY.Status =GAME_END;
    end
    return 1;
end

--保存进度
function Menu_SaveRecord()
	Cls();
	DrawStrBox(-1,CC.ScreenH*1/6-20,"保存进度",LimeGreen,CC.Fontbig,C_GOLD);
	DrawStrBox(104,CC.ScreenH*1/6+26,string.format("%-6s %-4s %-10s %-4s %-4s %-4s %-10s","存档名", "主角", "姓名", "难度", "资质", "天书", "位置"),C_ORANGE,CC.DefaultFont,C_GOLD);
	local r = SaveList();
    if r>0 then
        DrawStrBox(CC.MainSubMenuX2,CC.MainSubMenuY,"请稍候......",C_WHITE,CC.DefaultFont);
        ShowScreen();
        SaveRecord(r);
        Cls();
	end
    return 0;
end

--读取进度
function Menu_ReadRecord()
	Cls();
	DrawStrBox(-1,CC.ScreenH*1/6-20,"读取进度",LimeGreen,CC.Fontbig,C_GOLD);
	DrawStrBox(104,CC.ScreenH*1/6+26,string.format("%-6s %-4s %-10s %-4s %-4s %-4s %-10s","存档名", "主角", "姓名", "难度", "资质", "天书", "位置"),C_ORANGE,CC.DefaultFont,C_GOLD);
	local r = SaveList();
	if r < 1 then
		return 0;
	end
    	
	Cls();
	DrawStrBox(-1,CC.StartMenuY,"请稍候...",C_GOLD,CC.DefaultFont);
	ShowScreen();
	local result = LoadRecord(r);
	if result ~= nil then
		return 0;
	end
	--子场景
	if JY.Base["无用"] ~= -1 then
		if JY.SubScene < 0 then
			CleanMemory()
			lib.UnloadMMap()
		end
		lib.PicInit()
		lib.ShowSlow(20, 1)
		JY.Status = GAME_SMAP
		JY.SubScene = JY.Base["无用"]
		JY.MmapMusic = -1
		JY.MyPic = GetMyPic()
		Init_SMap(1)
	--大地图
	else
		JY.SubScene = -1
		JY.Status = GAME_FIRSTMMAP
	end
    return 1;
end

--状态子菜单
function Menu_Status()
	--无酒不欢：各状态下对应X轴
	local xcor = CC.MainSubMenuX +2*CC.MenuBorderPixel+4*CC.DefaultFont+5
	if JY.Status == GAME_WMAP then
		xcor = CC.MainSubMenuX + 15
	end
    DrawStrBox(xcor,CC.MainSubMenuY,"要查阅谁的状态",LimeGreen,CC.DefaultFont,C_GOLD);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;

    local r=SelectTeamMenu(xcor,nexty);
    if r >0 then
        --ShowPersonStatus(r)
		PersonStatus(r)
		return 1;
	else
        Cls(xcor,CC.MainSubMenuY,CC.ScreenW,CC.ScreenH);
        return 0;
	end
end

--离队菜单
function Menu_PersonExit()
	DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, "要求谁离队", C_WHITE, CC.DefaultFont)
	local nexty = CC.MainSubMenuY + CC.SingleLineHeight
	local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
	if r == 1 then
		DrawStrBoxWaitKey("抱歉！没有你游戏进行不下去", C_GOLD, CC.DefaultFont, nil, LimeGreen)
	else
		if JY.SubScene == 82 then
			do return end
		end
	end
	if r > 0 and JY.SubScene == 55 and JY.Base["队伍" .. r] == 35 then
		do return end
	end
	if r > 1 then
		local personid = JY.Base["队伍" .. r]
		for i,v in ipairs(CC.PersonExit) do
			if personid == v[1] then
				CallCEvent(v[2])
				break;
			end
		end
	end
	Cls()
	return 0
end

--队伍选择人物菜单
function SelectTeamMenu(x,y)
	local menu={};
	for i=1,CC.TeamNum do
        menu[i]={"",nil,0};
		local id=JY.Base["队伍" .. i]
		if id>=0 then
            if JY.Person[id]["生命"]>0 then
                menu[i][1]=JY.Person[id]["姓名"];
                menu[i][3]=1;
            end
		end
	end
    return ShowMenu(menu,CC.TeamNum,0,x,y,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
end

--计算当前队友个数
function GetTeamNum()
    local r=CC.TeamNum;
	for i=1,CC.TeamNum do
	    if JY.Base["队伍" .. i]<0 then
		    r=i-1;
		    break;
		end
    end
	return r;
end

--人物属性
function psx(id,str) 
    return JY.Person[id][str]
end

---显示队伍状态
-- 左右键翻页，上下键换队友
function ShowPersonStatusA()
	local r = New_Team()
	--local r = Team()
	if r == 1 then
       PersonStatus(r)
	end

end



---显示队伍状态
-- 左右键翻页，上下键换队友
function ShowPersonStatus(teamid)
	local page = 1
	local pagenum = 3
	if JY.Status == GAME_WMAP then
	    if WAR.Person[teamid]["我方"] == false then
	        pagenum = 2
	    end
	end
	local teamnum = GetTeamNum()
	local istart = 1
	local AI_s1 = 1
	local AI_menu_selected = 0
	local WG_num = 0
	local NG_num = 0
	local QG_num = 0
	local AniFrame = 0
	while true do
		if JY.Restart == 1 then
			break
		end
		Cls()
		local id = JY.Base["队伍" .. teamid]
		local sp = JY.Person[id]
		--天赋ID
		local tfid;
		--主角
		if id == 0 then
			--标主
			if JY.Base["标准"] > 0 then
				tfid = 280 + JY.Base["标准"]
			--特殊
			elseif JY.Base["特殊"] > 0 then
				tfid = 290
			--畅想
			else
				tfid = JY.Base["畅想"]
				--畅想袁承志
				if JY.Base["畅想"] == 54 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "54-1"
				elseif JY.Base["畅想"] == 1 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "1-1"
				elseif JY.Base["畅想"] == 2 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "2-1"
				elseif JY.Base["畅想"] == 3 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "3-1"
				elseif JY.Base["畅想"] == 4 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "4-1"
				elseif JY.Base["畅想"] == 26 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "26-1"
				elseif JY.Base["畅想"] == 47 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "47-1"
				elseif JY.Base["畅想"] == 48 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "48-1"
				elseif JY.Base["畅想"] == 49 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "49-1"
				elseif JY.Base["畅想"] == 72 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "72-1"
				elseif JY.Base["畅想"] == 103 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "103-1"
				elseif JY.Base["畅想"] == 38 and JY.Person[id]["个人觉醒"] >= 1 then
					if JY.Person[id]["个人觉醒"] < 2 then
					tfid = "38-1"
					else
					tfid = "38-2"
					end
				end
			end
		--队友
		else
			tfid = id
			--畅想袁承志
			if id == 54 and JY.Person[id]["个人觉醒"] >= 1 then
				tfid = "54-1"
				elseif id == 1 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "1-1"
				elseif id == 2 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "2-1"
				elseif id == 3 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "3-1"
				elseif id == 4 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "4-1"
				elseif id == 26 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "26-1"
				elseif id == 47 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "47-1"
				elseif id == 48 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "48-1"
				elseif id == 49 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "49-1"
				elseif id == 72 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "72-1"
				elseif id == 103 and JY.Person[id]["个人觉醒"] >= 1 then
					tfid = "103-1"
				elseif id == 38 and JY.Person[id]["个人觉醒"] >= 1 then
					if JY.Person[id]["个人觉醒"] < 2 then
					tfid = "38-1"
					else
					tfid = "38-2"
				    end
				elseif id == 645 and D1ZSF(id) then
				    tfid = "645-1"
				elseif id == 645 and D2ZBT(id) then
				    tfid = "645-2"
				elseif id == 645 and D3FQY(id) then
				    tfid = "645-3"
			end
		end
		--无酒不欢：第二页的翻页上限判定需要因人而异
		local max_row = -17;
		if TFJS[tfid] ~= nil then
			max_row = max_row + #TFJS[tfid]
		end
		if id == 0 then
			max_row = max_row + #ZJZSJS
		end
		--AI的子选项默认值获取
		local AI_s2 = {sp["行为模式"],sp["优先使用"],sp["主运内功"],sp["主运轻功"],sp["是否吃药"],sp["生命阈值"],sp["内力阈值"],sp["体力阈值"],sp["禁用自动"]}
		local yxsy = {}
		local yxsynum = 0
		yxsy[0] = 0
		for j = 1, CC.Kungfunum do
			if sp["武功"..j] == 0 then
				break
			end
			--外功，不能选斗转
			if JY.Wugong[sp["武功"..j]]["武功类型"] <= 5 and sp["武功"..j] ~= 43 then
				yxsynum = yxsynum + 1
				yxsy[yxsynum] = sp["武功"..j]
			end
		end
		local zyng = {}
		local zyngnum = 0
		zyng[0] = 0
		for j = 1, CC.Kungfunum do
			if sp["武功"..j] == 0 then
				break
			end
			if JY.Wugong[sp["武功"..j]]["武功类型"] == 6 then
				--天罡不能运三大
				if id == 0 and JY.Base["标准"] == 6 then
					if sp["武功"..j] == JY.Person[id]["天赋内功"]  then
					
					else
						zyngnum = zyngnum + 1
						zyng[zyngnum] = sp["武功"..j]
					end
				else
					zyngnum = zyngnum + 1
					zyng[zyngnum] = sp["武功"..j]
				end
			end
		end
		local zyqg = {}
		local zyqgnum = 0
		zyqg[0] = 0
		for j = 1, CC.Kungfunum do
			if sp["武功"..j] == 0 then
				break
			end
			if JY.Wugong[sp["武功"..j]]["武功类型"] == 7 then
				zyqgnum = zyqgnum + 1
				zyqg[zyqgnum] = sp["武功"..j]
			end
		end
		--状态界面动画显示，97号
		lib.PicLoadFile(string.format(CC.FightPicFile[1],JY.Person[id]["头像代号"]),
		string.format(CC.FightPicFile[2],JY.Person[id]["头像代号"]), 97)
		local m = 0
		local dl = 0
		for j=1,5 do
			if JY.Person[id]['出招动画帧数'..j]>0 then
				if j>1 then
					m=j
					break;
				end
				dl=dl+JY.Person[id]['出招动画帧数'..j]*4
			end
		end
		dl=dl+JY.Person[id]['出招动画帧数'..m]*3
		ShowPersonStatus_sub(id, page, istart, tfid, max_row, nil, AI_s1, AI_s2, AI_menu_selected,AniFrame,dl)
		ShowScreen()
		local keypress, ktype, mx, my = WaitKey()
		lib.Delay(CC.Frame)
		--ktype  1：键盘，2：鼠标移动，3:鼠标左键，4：鼠标右键，5：鼠标中键，6：滚动上，7：滚动下
		if keypress == VK_ESCAPE or ktype == 4 then
			if page == 3 and AI_menu_selected > 0 then
				AI_menu_selected = 0
			else
				break;
			end
		elseif keypress == VK_UP  then
			if page == 1 then
				teamid = teamid - 1
				AniFrame = 0
			elseif page == 2 then
				if istart > 1 then
					istart = istart - 1
				end
			elseif page == 3 then
				if AI_menu_selected == 0 then
					AI_s1 = AI_s1 - 1
					--战斗中不能在此切换主运内轻
					if JY.Status == GAME_WMAP and AI_s1 == 4 then
						AI_s1 = AI_s1 - 2
					end
					if AI_s1 < 1 then
						AI_s1 = 9
					end
				end
			end
		elseif keypress == VK_DOWN then
			if page == 1 then
				teamid = teamid + 1
				AniFrame = 0
			elseif page == 2 then
				if istart < max_row then
					istart = istart + 1
				end
			elseif page == 3 then
				if AI_menu_selected == 0 then
					AI_s1 = AI_s1 + 1
					--战斗中不能在此切换主运内轻
					if JY.Status == GAME_WMAP and AI_s1 == 3 then
						AI_s1 = AI_s1 + 2
					end
					if AI_s1 > 9 then
						AI_s1 = 1
					end
				end
			end
		elseif keypress == VK_LEFT then
			if page == 3 and AI_menu_selected > 0 then
				if AI_menu_selected == 1 then
					JY.Person[id]["行为模式"] = JY.Person[id]["行为模式"] - 1
					if JY.Person[id]["行为模式"] < 1 then
						JY.Person[id]["行为模式"] = 4
					end
				elseif AI_menu_selected == 2 then
					if WG_num > 0 then
						WG_num = WG_num - 1
						JY.Person[id]["优先使用"] = yxsy[WG_num]
					end
				elseif AI_menu_selected == 3 then
					if NG_num > 0 then
						NG_num = NG_num - 1
						JY.Person[id]["主运内功"] = zyng[NG_num]
					end
				elseif AI_menu_selected == 4 then
					if QG_num > 0 then
						QG_num = QG_num - 1
						JY.Person[id]["主运轻功"] = zyqg[QG_num]
					end
				elseif AI_menu_selected == 5 then
					JY.Person[id]["是否吃药"] = JY.Person[id]["是否吃药"] - 1
					if JY.Person[id]["是否吃药"] < 1 then
						JY.Person[id]["是否吃药"] = 2
					end
				elseif AI_menu_selected == 6 then
					JY.Person[id]["生命阈值"] = JY.Person[id]["生命阈值"] - 1
					if JY.Person[id]["生命阈值"] < 1 then
						JY.Person[id]["生命阈值"] = 3
					end
				elseif AI_menu_selected == 7 then
					JY.Person[id]["内力阈值"] = JY.Person[id]["内力阈值"] - 1
					if JY.Person[id]["内力阈值"] < 1 then
						JY.Person[id]["内力阈值"] = 3
					end
				elseif AI_menu_selected == 8 then
					JY.Person[id]["体力阈值"] = JY.Person[id]["体力阈值"] - 1
					if JY.Person[id]["体力阈值"] < 1 then
						JY.Person[id]["体力阈值"] = 3
					end
				elseif AI_menu_selected == 9 then
					JY.Person[id]["禁用自动"] = JY.Person[id]["禁用自动"] - 1
					if JY.Person[id]["禁用自动"] < 1 then
						JY.Person[id]["禁用自动"] = 2
					end
				end
			else
				page = page - 1
				if istart > 1 then
					istart = 1
				end
				if AI_s1 > 1 then
					AI_s1 = 1
				end
			end
		elseif keypress == VK_RIGHT then
			if page == 3 and AI_menu_selected > 0 then
				if AI_menu_selected == 1 then
					JY.Person[id]["行为模式"] = JY.Person[id]["行为模式"] + 1
					if JY.Person[id]["行为模式"] > 4 then
						JY.Person[id]["行为模式"] = 1
					end
				elseif AI_menu_selected == 2 then
					if WG_num < yxsynum then
						WG_num = WG_num + 1
						JY.Person[id]["优先使用"] = yxsy[WG_num]
					end
				elseif AI_menu_selected == 3 then
					if NG_num < zyngnum then
						NG_num = NG_num + 1
						JY.Person[id]["主运内功"] = zyng[NG_num]
					end
				elseif AI_menu_selected == 4 then
					if QG_num < zyqgnum then
						QG_num = QG_num + 1
						JY.Person[id]["主运轻功"] = zyqg[QG_num]
					end
				elseif AI_menu_selected == 5 then
					JY.Person[id]["是否吃药"] = JY.Person[id]["是否吃药"] + 1
					if JY.Person[id]["是否吃药"] > 2 then
						JY.Person[id]["是否吃药"] = 1
					end	
				elseif AI_menu_selected == 6 then
					JY.Person[id]["生命阈值"] = JY.Person[id]["生命阈值"] + 1
					if JY.Person[id]["生命阈值"] > 3 then
						JY.Person[id]["生命阈值"] = 1
					end	
				elseif AI_menu_selected == 7 then
					JY.Person[id]["内力阈值"] = JY.Person[id]["内力阈值"] + 1
					if JY.Person[id]["内力阈值"] > 3 then
						JY.Person[id]["内力阈值"] = 1
					end	
				elseif AI_menu_selected == 8 then
					JY.Person[id]["体力阈值"] = JY.Person[id]["体力阈值"] + 1
					if JY.Person[id]["体力阈值"] > 3 then
						JY.Person[id]["体力阈值"] = 1
					end	
				elseif AI_menu_selected == 9 then
					JY.Person[id]["禁用自动"] = JY.Person[id]["禁用自动"] + 1
					if JY.Person[id]["禁用自动"] > 2 then
						JY.Person[id]["禁用自动"] = 1
					end	
				end
			else
				page = page + 1
				if istart > 1 then
					istart = 1
				end
			end
		elseif keypress == VK_SPACE or keypress == VK_RETURN then
			if page == 3 then
				if AI_menu_selected == 0 then
					AI_menu_selected = AI_s1
				else
					AI_menu_selected = 0
				end
			end
		end
		AniFrame = AniFrame + 1
		if AniFrame == JY.Person[id]['出招动画帧数'..m] then
			AniFrame = 0
		end
		teamid = limitX(teamid, 1, teamnum)
		page = limitX(page, 1, pagenum)
	end
end

--无酒不欢：人物状态栏
--case：nil=正常浏览，else加点
function ShowPersonStatus_sub(id, page, istart, tfid, max_row, case, AI_s1, AI_s2, AI_menu_selected,AniFrame,dl)
	if JY.Restart == 1 then
		do return end
	end
	local size = CC.FontSmall4
	local p = JY.Person[id]
	local p0 = JY.Person[0]
	local h = size + CC.PersonStateRowPixel
	local dx = (CC.ScreenW) / 3
	local dy = (CC.ScreenH) / 3
	local i = 1
	local x1, y1 = nil, nil
  
	--无酒不欢：属性显示
	local function DrawAttrib(str, color1, color2)
		if str == "实战" and p[str] >= 500 then
		    if wglw(id,52)>1 and JY.Person[id]["实战"] < 1000 then
			DrawString(x1 + size*2 -15, y1 + h * i, string.format("%5d", p[str]), color2, size)
			else
			DrawString(x1 + size*4 -27, y1 + h * i, string.format("%s", "极"), C_RED, size)
			end		
		else
			DrawString(x1 + size*2 -15, y1 + h * i, string.format("%5d", p[str]), color2, size)
		end
		if str == "武学常识" then
			str = "武常"
		elseif str == "特殊兵器" then	
			str = "奇门"
		elseif str == "攻击带毒" then	
			str = "带毒"
		end
		DrawString(x1, y1 + h * i, string.sub(str, 1, 4), color1, size)
		--五岳剑法额外剑系数显示
		if str == "御剑能力" and WuyueJF(id) then
			DrawString(x1+size*4+10, y1 + h * i, "+ 50", LimeGreen, size)
		end	
		--战场情侣加成
		if JY.Status == GAME_WMAP then
			if str == "医疗能力" then
				for k,v in pairs(CC.AddDoc) do
					if match_ID(id, v[1]) then
						for wid = 0, WAR.PersonNum - 1 do
							if match_ID(WAR.Person[wid]["人物编号"], v[2]) and WAR.Person[wid]["死亡"] == false then
								DrawString(x1+size*4+10, y1 + h * i, "+ "..v[3], LimeGreen, size)
								--break
							end
						end
					end
				end
			end
			if str == "用毒能力" then
				for k,v in pairs(CC.AddPoi) do
					if match_ID(id, v[1]) then
						for wid = 0, WAR.PersonNum - 1 do
							if match_ID(WAR.Person[wid]["人物编号"], v[2]) and WAR.Person[wid]["死亡"] == false then
								DrawString(x1+size*4+10, y1 + h * i, "+ "..v[3], LimeGreen, size)
								--break
							end
						end
					end
				end
			end
		end
		i = i + 1
	end
  
	x1 = size*3 -10
	y1 = size + 6

	if page == 1 then
		--背景图
		lib.LoadPNG(1, 1007 * 2 , 0 , 0, 1)

		local hid = nil
		--主角
		if id == 0 and JY.Base["畅想"] == 0 then
			--标主
			if JY.Base["标准"] > 0 then
				if p["性别"] == 0 then
					hid = 546 + JY.Base["标准"]
				else
					hid = 555 + JY.Base["标准"]
				end
			--特殊
			else
				if p["性别"] == 0 then
					hid = 290
				else
					hid = 368
				end
			end
		--畅想主角和队友
		else
			hid = p["头像代号"]
			if p["头像代号"] == 217 then
			hid = 389
			end
			if p["头像代号"] == 93 then
			   if (id == 0 and JY.Base["畅想"] == 507) or id == 507 then
			   hid = 206
			   end
			end
			   if (id == 0 and JY.Base["畅想"] == 646) or id == 646 then
			   hid = 584
			   end
		end
		local headw, headh = lib.GetPNGXY(1, hid*2)
		local headx = (size*9 - headw) / 3
		local heady = (h * 6 - headh) / 6

		--半身象
		local bodyw,  bodyh = lib.GetPNGXY(97, hid*2)
		local bodyx = (size*9 - bodyw) / 3
		local bodyy = (h * 6 - bodyh) / 6
		
	   lib.LoadPNG(90, hid * 2 ,x1 + bodyx/2,y1 + bodyy/2,1)
       lib.LoadPNG(90, 1002 * 2 ,0 , 0, 1)
-------------------------------
		y1 = y1 - 8
		i = 5
		--名字
		--DrawString(x1-40, y1 + h * i-160,"姓名", M_Black, size)
		DrawString(x1 + size * 13+20, y1 + h * (i)-165, p["姓名"], C_CYGOLD, size)		
		--等级
		--DrawString(x1-40, y1 + h * i-160,"等级", C_BLACK, size)
	if MPPD(id) ~= 0 then
		local mptype, mpdj = MPDISPLAY(id)
		if mptype ~= nil then
            if MPPD(id) == 5 and match_ID(id,66) then
			DrawString(x1 + size * 5+10 , y1 + h * (i)-160, "【".."波斯明教圣女".."】", M_Red, size*0.8)
			elseif MPPD(id) == 5 then
			if (id == 0 and JY.Base["畅想"] == 0 and MPDJ(id) > 4 ) then
			DrawString(x1 + size * 5+10 , y1 + h * (i)-160, "【".."明教代行使者".."】", C_GOLD, size*0.8)
			else
			DrawString(x1 + size * 5+10, y1 + h * (i)-160, "【"..mptype..mpdj.."】", M_DeepSkyBlue, size*0.8)
			end
			else
			DrawString(x1 + size * 5+10, y1 + h * (i)-160, "【"..mptype..mpdj.."】", M_DeepSkyBlue, size*0.8)
			end
		else
			DrawString(x1 + size * 5+10, y1 + h * (i)-160, "【江湖人士】", C_ORANGE, size*0.8)
		end
	else
		DrawString(x1 + size * 5+10, y1 + h * (i)-160, "【江湖人士】", C_ORANGE, size*0.8)
	end		
		DrawString(x1 + size * 17+25, y1 + h * (i)-160, p["等级"], C_CYGOLD, size*0.9)
		DrawString(x1 + size * 17+50, y1 + h * (i)-160, "级", C_CYGOLD, size*0.9)		
		i = i + 1	


		--体能
		--DrawString(x1, y1 + h * i, "体能 【 ※※ 】", Violet, size)
		--i = i + 1
		--DrawString(x1, y1 + h * (i), "天赋：", LimeGreen, size)
		--DrawString(x1-40, y1 + h * i-160,"天赋：", M_Black, size)
	  
		--主角天赋
		if id == 0 then
			local main_tf;
			--标主
			if JY.Base["标准"] > 0 then
				main_tf = ZJTF[JY.Base["标准"]]
			--特殊
			elseif JY.Base["特殊"] > 0 then
				main_tf = " "
			--畅想
			elseif JY.Base["畅想"] > 0 then
				if RWTFLB[p["代号"]] ~= nil then
					main_tf = RWTFLB[p["代号"]]
				end
			end
			if main_tf ~= nil then
				DrawString(x1-7, y1 + h * (i)-142, main_tf, C_CYGOLD, size*0.8)
			end
		end

		--普通角色天赋
		if id ~= 0 and RWTFLB[id] ~= nil then
			DrawString(x1-7, y1 + h * (i)-142,RWTFLB[id], C_CYGOLD, size*0.8)
		end
	  
	--称号
		--i = i + 1
		--DrawString(x1-40, y1 + h * i-160, "称号：", C_BLACK, size)
		
		local size1 = size *0.8		
		--主角称号
		if id == 0 then
			local main_ch;

			--标主
			if JY.Base["标准"] > 0 then
				if p["六如觉醒"] == 0 then
					main_ch = "江湖小虾米"
				else
					main_ch = "觉醒之苍龙"
				end
			--特殊
			elseif JY.Base["特殊"] > 0 then
				main_ch = " "
			--畅想
			elseif JY.Base["畅想"] > 0 then
				if RWWH[JY.Base["畅想"]] ~= nil and JY.Base["畅想"] ~= 35 and JY.Base["畅想"] ~= 38 and JY.Base["畅想"] ~= 49 then
					main_ch = RWWH[JY.Base["畅想"]]
				elseif JY.Base["畅想"] == 35 then
					if JY.Person[id]["个人觉醒"] >= 2 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["35"], C_CYGOLD, size1)
					elseif JY.Person[id]["个人觉醒"] >= 1 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH[35], C_CYGOLD, size1)
					end
				elseif JY.Base["畅想"] == 38 then
					if JY.Person[id]["个人觉醒"] >= 2 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["38-2"], C_CYGOLD, size1)	
					elseif JY.Person[id]["个人觉醒"] >= 1 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["38"], C_CYGOLD, size1)
					else
						DrawString(x1-7, y1 + h * (i)-100, RWWH[38], C_CYGOLD, size1)
					end
				elseif JY.Base["畅想"] == 49 then
					if JY.Person[id]["个人觉醒"] >= 1 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["49"], C_CYGOLD, size1)
					else
						DrawString(x1-7, y1 + h * (i)-100, RWWH[49], C_CYGOLD, size1)
					end
				end
			end
			if main_ch ~= nil then
				DrawString(x1-7, y1 + h * (i)-100, main_ch, C_CYGOLD, size1)
			end
		end
		
		--其他人称号
		if RWWH[id] ~= nil and id ~= 35 and id ~= 38 and id ~= 49 then
			DrawString(x1-7, y1 + h * (i)-100, RWWH[id], C_CYGOLD, size1)
		end

		--令狐冲
		if id == 35 then
			if JY.Person[id]["个人觉醒"] >= 2 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["35"], C_CYGOLD, size1)
			elseif JY.Person[id]["个人觉醒"] >= 1 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH[35], C_CYGOLD, size1)
			end
		end

		--虚竹
		if id == 49 then
			if JY.Person[id]["个人觉醒"] >= 1 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["49"], C_CYGOLD, size1)
			else
				DrawString(x1-7, y1 + h * (i)-100, RWWH[49], C_CYGOLD, size1)
			end
		end
	  
		--石破天
		if id == 38 then

			if JY.Person[id]["个人觉醒"] >= 2 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["38-2"], C_CYGOLD, size1)
			elseif JY.Person[id]["个人觉醒"] >= 1 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["38"], C_CYGOLD, size1)
			else
				DrawString(x1-7, y1 + h * (i)-100, RWWH[38], C_CYGOLD, size1)
			end
		end
	  
		--资质
		DrawString(x1-7, y1 + h * (i)-70, "资质", C_CYGOLD, size1)
		DrawString(x1+size*2-7, y1 + h * (i)-70, p["资质"], C_CYGOLD, size1)

        local ii = 0
        local diyx,diyy = CC.ThingPicWidth/2,CC.ThingPicHeight/2
        local ax,ay = x1, y1 + h * i + diyy * ii
        local s = 2
        ax = x1 - size
        ay = y1 + h * i + diyy * ii
		
		--武器，防具
		i = i + 1
		if p["武器"] > -1 then
			lib.PicLoadCache(2, p["武器"] * 2, diyx/5+ax*8+30, diyy/4+ax*3-80, 1)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3-80, JY.Thing[p["武器"]]["名称"], C_CYGOLD, size*0.8)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3-80+size*0.7, "LV"..JY.Thing[p["武器"]]["装备等级"], M_DeepSkyBlue, size*0.7)
		end
		i = i + 1
		if p["防具"] > -1 then
			lib.PicLoadCache(2, p["防具"] * 2, diyx/5+ax*8+30, diyy/4+ax*3+83-63, 1)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3+20, JY.Thing[p["防具"]]["名称"], C_CYGOLD, size*0.8)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3+20+size*0.7, "LV"..JY.Thing[p["防具"]]["装备等级"], M_Red, size*0.7)
		end		
		if p["饰品"] > -1 then
		 lib.PicLoadCache(2, p["饰品"] * 2, diyx/5+ax*8+30, diyy/4+ax*3+166-45, 1)
		DrawString( diyx/5+ax*8+32, diyy/4+ax*3+121, JY.Thing[p["饰品"]]["名称"], C_CYGOLD, size*0.8)
		DrawString( diyx/5+ax*8+32, diyy/4+ax*3+121+size*0.7, "LV"..JY.Thing[p["饰品"]]["装备等级"], M_Orange, size*0.7)
		end	
		
					
--第二列开始D
	---------------------------------------------------------------------		
		i = 0
		x1 = dx + size + 1-20
		y1 = size*2-30+280
	    local color = nil
		if p["受伤程度"] < 33 then
			color = RGB(236, 200, 40)
		elseif p["受伤程度"] < 66 then
			color = RGB(244, 128, 32)
		else
			color = RGB(232, 32, 44)
		end
		i = i + 1
		--DrawString(x1, y1 + h * (i), "生命", C_BLACK, size)
		DrawString(x1 + 2 * size-202, y1 + h * (i)*3+9, string.format("%5d", p["生命"]), C_CYGOLD, size*0.7)
		DrawString(x1 + 4 * size-208, y1 + h * (i)*3+13, "/", C_CYGOLD, size*0.6)
		if p["中毒程度"] == 0 then
			color = RGB(252, 148, 16)
		elseif p["中毒程度"] < 50 then
			color = RGB(120, 208, 88)
		else
			color = RGB(56, 136, 36)
		end
		DrawString(x1 + 4*size-212, y1 + h * (i)*3+9, string.format("%5s", p["生命最大值"]), C_CYGOLD, size*0.7)
		local nl = nil
		if p["内力性质"] == 0 then
			color = RGB(208, 152, 208)
			nl = "(阴)"
		elseif p["内力性质"] == 1 then
			color = RGB(236, 200, 40)
			nl = "(阳)"
		else
			color =MilkWhite
			nl = "(调和)"
		end
		--天罡内力颜色
		if JY.Base["标准"] == 6  and id == 0 then
			color = M_Plum
			nl = "(天罡)"
		end
		--DrawString(x1, y1 + h * (i), "内力", C_BLACK, size)
		DrawString(x1 + 2 * size-202,  y1 + h * (i)*3+33, string.format("%5d", p["内力"]), color, size*0.7)
		DrawString(x1 + 4 * size-208, y1 + h * (i)*3+35, "/", color, size*0.6)
		DrawString(x1 + 4*size-202, y1 + h * (i)*3+33, string.format("%5d", p["内力最大值"]), color, size*0.7)
		DrawString(x1 + 4*size-150, y1 + h * (i)*3+33, nl, color, size*0.7)			
--------------------------------------------
		i = 0
		x1 = dx + size + 1-20
		y1 = size*2-30
		
		--装备增加的属性
		local str_gain, def_gain, agi_gain = 0, 0, 0
		if p["武器"] > -1 then
			if JY.Thing[p["武器"]]["加攻击力"] > 0 then
				str_gain = str_gain + JY.Thing[p["武器"]]["加攻击力"]*10 + JY.Thing[p["武器"]]["加攻击力"]*(JY.Thing[p["武器"]]["装备等级"]-1)*2
			elseif JY.Thing[p["武器"]]["加攻击力"] < 0 then
				str_gain = str_gain + JY.Thing[p["武器"]]["加攻击力"]*10 - JY.Thing[p["武器"]]["加攻击力"]*(JY.Thing[p["武器"]]["装备等级"]-1)*2
			end
			if JY.Thing[p["武器"]]["加防御力"] > 0 then
				def_gain = def_gain + JY.Thing[p["武器"]]["加防御力"]*10 + JY.Thing[p["武器"]]["加防御力"]*(JY.Thing[p["武器"]]["装备等级"]-1)*2
			elseif JY.Thing[p["武器"]]["加防御力"] < 0 then
				def_gain = def_gain + JY.Thing[p["武器"]]["加防御力"]*10 - JY.Thing[p["武器"]]["加防御力"]*(JY.Thing[p["武器"]]["装备等级"]-1)*2
			end
			if JY.Thing[p["武器"]]["加轻功"] > 0 then
				agi_gain = agi_gain + JY.Thing[p["武器"]]["加轻功"]*10 + JY.Thing[p["武器"]]["加轻功"]*(JY.Thing[p["武器"]]["装备等级"]-1)*2
			elseif JY.Thing[p["武器"]]["加轻功"] < 0 then
				agi_gain = agi_gain + JY.Thing[p["武器"]]["加轻功"]*10 - JY.Thing[p["武器"]]["加轻功"]*(JY.Thing[p["武器"]]["装备等级"]-1)*2
			end
		end
		if p["防具"] > -1 then
			if JY.Thing[p["防具"]]["加攻击力"] > 0 then
				str_gain = str_gain + JY.Thing[p["防具"]]["加攻击力"]*10 + JY.Thing[p["防具"]]["加攻击力"]*(JY.Thing[p["防具"]]["装备等级"]-1)*2
			elseif JY.Thing[p["防具"]]["加攻击力"] < 0 then
				str_gain = str_gain + JY.Thing[p["防具"]]["加攻击力"]*10 - JY.Thing[p["防具"]]["加攻击力"]*(JY.Thing[p["防具"]]["装备等级"]-1)*2
			end
			if JY.Thing[p["防具"]]["加防御力"] > 0 then
				def_gain = def_gain + JY.Thing[p["防具"]]["加防御力"]*10 + JY.Thing[p["防具"]]["加防御力"]*(JY.Thing[p["防具"]]["装备等级"]-1)*2
			elseif JY.Thing[p["防具"]]["加防御力"] < 0 then
				def_gain = def_gain + JY.Thing[p["防具"]]["加防御力"]*10 - JY.Thing[p["防具"]]["加防御力"]*(JY.Thing[p["防具"]]["装备等级"]-1)*2
			end
			if JY.Thing[p["防具"]]["加轻功"] > 0 then
				agi_gain = agi_gain + JY.Thing[p["防具"]]["加轻功"]*10 + JY.Thing[p["防具"]]["加轻功"]*(JY.Thing[p["防具"]]["装备等级"]-1)*2
			elseif JY.Thing[p["防具"]]["加轻功"] < 0 then
				agi_gain = agi_gain + JY.Thing[p["防具"]]["加轻功"]*10 - JY.Thing[p["防具"]]["加轻功"]*(JY.Thing[p["防具"]]["装备等级"]-1)*2
			end
		end
		if p["饰品"] > -1 then
			if JY.Thing[p["饰品"]]["加攻击力"] > 0 then
				str_gain = str_gain + JY.Thing[p["饰品"]]["加攻击力"]*10 + JY.Thing[p["饰品"]]["加攻击力"]*(JY.Thing[p["饰品"]]["装备等级"]-1)*2
			elseif JY.Thing[p["饰品"]]["加攻击力"] < 0 then
				str_gain = str_gain + JY.Thing[p["饰品"]]["加攻击力"]*10 - JY.Thing[p["饰品"]]["加攻击力"]*(JY.Thing[p["饰品"]]["装备等级"]-1)*2
			end
			if JY.Thing[p["饰品"]]["加防御力"] > 0 then
				def_gain = def_gain + JY.Thing[p["饰品"]]["加防御力"]*10 + JY.Thing[p["饰品"]]["加防御力"]*(JY.Thing[p["饰品"]]["装备等级"]-1)*2
			elseif JY.Thing[p["饰品"]]["加防御力"] < 0 then
				def_gain = def_gain + JY.Thing[p["饰品"]]["加防御力"]*10 - JY.Thing[p["饰品"]]["加防御力"]*(JY.Thing[p["饰品"]]["装备等级"]-1)*2
			end
			if JY.Thing[p["饰品"]]["加轻功"] > 0 then
				agi_gain = agi_gain + JY.Thing[p["饰品"]]["加轻功"]*10 + JY.Thing[p["饰品"]]["加轻功"]*(JY.Thing[p["饰品"]]["装备等级"]-1)*2
			elseif JY.Thing[p["饰品"]]["加轻功"] < 0 then
				agi_gain = agi_gain + JY.Thing[p["饰品"]]["加轻功"]*10 - JY.Thing[p["饰品"]]["加轻功"]*(JY.Thing[p["饰品"]]["装备等级"]-1)*2
			end
		end

	local tmp1, tmp2, tmp3 = 0, 0, 0 --攻防轻
	local tmp4, tmp5, tmp6, tmp7 = 0, 0, 0, 0 --医毒解暗
	local tmpa, tmpb, tmpc, tmpd, tmpe = 0, 0, 0, 0, 0 --拳剑刀特
	

	tmp1 = tmp1 + MPAttrib(id, 1)
	tmp2 = tmp2 + MPAttrib(id, 2)
	tmp3 = tmp3 + MPAttrib(id, 3)
	tmp4 = tmp4 + MPAttrib(id, 4)
	tmp5 = tmp5 + MPAttrib(id, 5)
	tmp6 = tmp6 + MPAttrib(id, 6)
	tmp7 = tmp7 + MPAttrib(id, 7)
	
		if JY.Status == GAME_WMAP then
	
		--战场情侣加成 
		if JY.Status == GAME_WMAP then
		local gj = 0
		if PersonKF(id,108) then
		 gj = math.modf (JY.Person[id]["攻击力"]*0.3)
		   str_gain = str_gain +gj
		 end
		local fy = 0
		if PersonKF(id,108) then 
		 fy = math.modf(JY.Person[id]["防御力"]*0.3)
		   def_gain = def_gain +fy
		 end
	    --霍青桐，我方人数人越多，伤害越高    
		if match_ID(id, 74) then
		 local hqtgj= 0
			for j = 0, WAR.PersonNum - 1 do
				if WAR.Person[j]["死亡"] == false and WAR.Person[j]["我方"] == WAR.Person[i]["我方"] then
				 def_gain =  def_gain+10
			end		
	    end	
	end	
end		 
		local qg = 0
		if PersonKF(id,108) then
		 qg = math.modf(JY.Person[id]["轻功"]*0.3)
		   agi_gain = agi_gain +qg
		 end		 		 
			--队友攻击力加成
			for i,v in pairs(CC.AddAtk) do
				if match_ID(id, v[1]) then
					for wid = 0, WAR.PersonNum - 1 do
						if match_ID(WAR.Person[wid]["人物编号"], v[2]) and WAR.Person[wid]["死亡"] == false then
							str_gain = str_gain + v[3]
						end
					end
				end
			end
			--队友防御力加成
			for i,v in pairs(CC.AddDef) do
				if match_ID(id, v[1]) then
					for wid = 0, WAR.PersonNum - 1 do
						if match_ID(WAR.Person[wid]["人物编号"], v[2]) and WAR.Person[wid]["死亡"] == false then
							def_gain = def_gain + v[3]
						end
					end
				end
			end
			--队友轻功加成
			for i,v in pairs(CC.AddSpd) do
				if match_ID(id, v[1]) then
					for wid = 0, WAR.PersonNum - 1 do
						if match_ID(WAR.Person[wid]["人物编号"], v[2]) and WAR.Person[wid]["死亡"] == false then
							agi_gain = agi_gain + v[3] 
						end
					end
				end
			end
		end

	str_gain = str_gain + tmp1	
	def_gain = def_gain + tmp2
	agi_gain = agi_gain + tmp3
	local bz1 = "↑"
	local bz2 = "↑"
	local bz3 = "↑"
		--DrawAttrib("攻击力", C_BLACK, PinkRed)
		DrawString(x1 - size * 8+15, y1*19+17, p["攻击力"], C_CYGOLD, size*0.7)	
		if str_gain <= -1 then
			str_gain = -str_gain
			bz1 = "↓"		
		end	
		DrawString(x1 - size * 8+50, y1*19+17, bz1, M_Yellow, size*0.7)
		DrawString(x1 - size * 8+70,  y1*19+17, str_gain, C_CYGOLD, size*0.7)			
		
		--DrawAttrib("防御力", C_BLACK, PinkRed)
		DrawString(x1 - size * 8+15, y1*19+40, p["防御力"], C_CYGOLD, size*0.7)		

		if def_gain <= -1 then
		   def_gain = -def_gain
           bz2 = "↓"				
		end	
	    DrawString(x1 - size * 8+50, y1*19+40, bz2 ,  M_Yellow, size*0.7)
		DrawString(x1 - size * 8+70, y1*19+40, def_gain, C_CYGOLD, size*0.7)
		
		DrawString(x1 - size * 8+15, y1*19+65, p["轻功"], C_CYGOLD, size*0.7)		
		--DrawAttrib("轻功", C_BLACK, PinkRed)
		if agi_gain <= -1 then
		agi_gain = -(agi_gain)
		 bz3 = "↓"		
		end
		DrawString(x1 - size * 8+50,y1*19+65, bz3,  M_Yellow, size*0.7)	
			DrawString(x1 - size * 8+70, y1*19+65, agi_gain, C_CYGOLD, size*0.7)	
		local aay = 10
		--能力属性
		DrawString(x1 - size * 8+15, y1*19+100, p["拳掌功夫"], C_CYGOLD, size*0.7)
		DrawString(x1 - size * 8+15, y1*19+112+aay, p["指法技巧"], C_CYGOLD, size*0.7)	
		DrawString(x1 - size * 8+15, y1*19+134+aay, p["御剑能力"], C_CYGOLD, size*0.7)	
		DrawString(x1 - size * 8+15, y1*19+155+aay, p["耍刀技巧"], C_CYGOLD, size*0.7)	
		DrawString(x1 - size * 8+15, y1*19+178+aay, p["特殊兵器"], C_CYGOLD, size*0.7)	
					
		--DrawAttrib("拳掌功夫", C_BLACK, C_CYGOLD)
		--DrawAttrib("指法技巧", C_BLACK, C_CYGOLD)
		--DrawAttrib("御剑能力", C_BLACK, C_CYGOLD)
		--DrawAttrib("耍刀技巧", C_BLACK, C_CYGOLD)
		--DrawAttrib("特殊兵器", C_BLACK, C_CYGOLD)
		--DrawAttrib("暗器技巧", C_BLACK, C_CYGOLD)
	   

	   --连击，暴击
      
	  local a3i =x1 - size * 8+10
		local a3x = size*6

		DrawString(a3i+a3x,y1*19+97, Person_LJ(id), C_CYGOLD, size*0.7)
		DrawString(a3i+a3x, y1*19+118, Person_BJ(id), C_CYGOLD, size*0.7)
		DrawString(a3i+a3x, y1*19+130+aay, p["抗毒能力"], C_CYGOLD, size*0.7)	
		DrawString(a3i+a3x, y1*19+153+aay, p["攻击带毒"], C_CYGOLD, size*0.7)	
		DrawString(a3i+a3x, y1*19+175+aay, p["解毒能力"], C_CYGOLD, size*0.7)
		if tmp6 > -1 then
		DrawString(a3i+a3x+35, y1*19+175+aay, "↑ " , M_Red, size*0.7)
		DrawString(a3i+a3x+55, y1*19+175+aay, tmp6, C_CYGOLD, size*0.7)		
		else
			tmp6 = -tmp6
			DrawString(a3i+a3x+35, y1*19+175+aay, "↓ " , M_DarkOliveGreen, size*0.7)
			DrawString(a3i+a3x+55, y1*19+175+aay, tmp6, C_CYGOLD, size*0.7)			
		end			
	--DrawString(x1 + size * 4 + 75, y1 + h * (i), "暴击", C_BLACK, size)	
	--DrawString(x1, y1 + h * (i), "连击", C_BLACK, size)
	--	DrawAttrib("解毒能力", C_BLACK, C_CYGOLD)
	--	DrawAttrib("抗毒能力", C_BLACK, C_CYGOLD)
	--	DrawAttrib("攻击带毒", C_BLACK, C_CYGOLD)			
		--i = 0
		--x1 = dx + size + 1-20+180
		--y1 = size*2-30  
	--	DrawAttrib("医疗能力", C_BLACK, C_CYGOLD)
	--	DrawAttrib("用毒能力", C_BLACK, C_CYGOLD)
    --   DrawAttrib("出战", C_BLACK, C_CYGOLD)
	local aay=size*5
     DrawString(x1 - size * 2+10, y1*19+17,p["医疗能力"], C_CYGOLD, size*0.7)
		if tmp4 > -1 then
		DrawString(x1 - size * 2+10+35, y1*19+17, "↑ " , M_Red, size*0.7)
		DrawString(x1 - size * 2+10+55, y1*19+17, tmp4, C_CYGOLD, size*0.7)		
		else
			tmp4 = -tmp4
			DrawString(x1 - size * 2+10+35, y1*19+17, "↓ " , M_DarkOliveGreen, size*0.7)
			DrawString(x1 - size * 2+10+55, y1*19+17, tmp4, C_CYGOLD, size*0.7)			
		end		
     DrawString(x1 - size * 2+10, y1*19+40, p["用毒能力"], C_CYGOLD, size*0.7)	
	 	if tmp5 > -1 then
		DrawString(x1 - size * 2+10+35, y1*19+40, "↑ " , M_Red, size*0.7)
		DrawString(x1 - size * 2+10+55, y1*19+40, tmp5, C_CYGOLD, size*0.7)		
		else
			tmp5 = -tmp5
			DrawString(x1 - size * 2+10+35, y1*19+40, "↓ " , M_DarkOliveGreen, size*0.7)
			DrawString(x1 - size * 2+10+55, y1*19+40, tmp5, C_CYGOLD, size*0.7)			
		end	
     DrawString(x1 - size * 2+10, y1*19+64, p["暗器技巧"], C_CYGOLD, size*0.7)	
	 	if tmp7 > -1 then
		DrawString(x1 - size * 2+10+35, y1*19+64, "↑ " , M_Red, size*0.7)
		DrawString(x1 - size * 2+10+55, y1*19+64, tmp7, C_CYGOLD, size*0.7)		
		else
			tmp7 = -tmp7
			DrawString(x1 - size * 2+10+35, y1*19+64, "↓ " , M_DarkOliveGreen, size*0.7)
			DrawString(x1 - size * 2+10+55, y1*19+64, tmp7, C_CYGOLD, size*0.7)			
		end		 
		--集气条
    local jqz = 0
	local jqz0 = 8
	local jqz1 = 0
	local jqz3 = 0
	local x = JY.Person[id]["轻功"]
	local jqz2 = 0
    local y = JY.Person[id]["内力"]	
		if x > 160 then
			jqz1 = 6 + (x - 160) / 60
		elseif x > 80 then
			jqz1 = 4 + (x - 80) / 40
		elseif x > 30 then
			jqz1 = 2 + (x - 30) / 25
		else
			jqz1 = x / 15
		end	
		if y > 5600 then
			jqz2 = 8 + math.min((y - 5600) / 1200, 3)
		elseif y > 3600 then
			jqz2 = 6 + (y- 3600) / 1000
		elseif y > 2000 then
			jqz2 = 4 + (y - 2000) / 800
		elseif y > 800 then
			jqz2 = 2 + (y - 800) / 600
		else
			jqz2 = y / 400
		end
	   jqz = math.modf(jqz0+jqz1 + jqz2+jqz3) 
	--DrawString(x1, y1 + h * (i), "集气", C_BLACK, size)
	--DrawString(x1 + size*3-2 , y1 + h * (i),jqz, C_CYGOLD, size)
	--	DrawAttrib("武学常识", C_BLACK, C_CYGOLD)
	--	DrawAttrib("实战", C_BLACK, C_CYGOLD)		

	DrawString(x1 + size*4 , y1*19+17,p["武学常识"], C_CYGOLD, size*0.7)
    DrawString(x1 + size*4 , y1*19+39,p["实战"], C_CYGOLD, size*0.7)
	DrawString(x1 + size*4 , y1*19+60,jqz, C_CYGOLD, size*0.7)	
		--左右
		--DrawString(x1 + size * 4 + 75, y1 + h * (i), "互搏", C_BLACK, size)
     local hb = nil
	if p["左右互搏"] == 1 then
		hb = "◎"
		else
		hb = "※"
		end
	DrawString(x1 + size*4 , y1*19+96, hb, C_CYGOLD, size*0.7)
	
	DrawString(x1+size+10 , y1*19+96+70, "修炼", C_CYGOLD, size*0.7)
	local thingid = p["修炼物品"]
		if thingid > 0 then
			--lib.PicLoadCache(2, p["修炼物品"] * 2, x1 + size*4, y1*19+96-100, 1)
            DrawString(x1 + size * 3, y1*19+96+70, JY.Thing[thingid]["名称"], M_DeepSkyBlue, size*0.7)			
			i = i + 1
			local n = TrainNeedExp(id)
			if n < math.huge then
				DrawString(x1 + size * 4-40, y1*19+96+90, string.format("%5d/%5d", p["修炼点数"], n), C_CYGOLD, size*0.7)
			else
				DrawString(x1 + size * 4-40,  y1*19+96+90, string.format("%5d/===", p["修炼点数"]), C_CYGOLD, size*0.7)
			end
		else
	--DrawString(x1 + size * 6 + 108, y1 + h * (i), hb, PinkRed, size)
	--DrawString(x1 + size*4 , y1*19+60, "互搏", C_CYGOLD, size*0.7)


		--[[判断左右，100-资质
		local hb = 0 
		local zyjl = 80 - p["资质"]
		if zyjl < 0 then
			zyjl = 0
		end
		local zyjl = 0
		--周伯通100%
		if id == 64 then
			zyjl = 100
          end
		--郭靖80%
		if id == 55 then
			zyjl = 80
          end
		--小龙女70%
		if id == 59 then
			zyjl = 70
          end			
		--周芷若觉醒后，70%
		if id == 631 and p["个人觉醒"] > 0 then
			zyjl = 70
          end
		--周伯通支线完成后，主角+20%
		if id == 0 and JY.Person[64]["品德"] == 80 then
			zyjl = zyjl + 20
          end	
        if p["左右互搏"] == 1 then
		   hb = zyjl
		  end]]
 	 

		--体质 体力
		
---------------------------------------------------------
	--	DrawString(x1, y1 + h * (i), "体力", C_BLACK, size)
	--	DrawString(x1 + size * 2 + 10, y1 + h * (i), p["体力"], PinkRed, size)
	--	DrawString(x1 + size * 4 + 75, y1 + h * (i), "体质", C_BLACK, size)
	--	DrawString(x1 + size * 6 + 108, y1 + h * (i), p["生命增长"], PinkRed, size)
	--	i = i + 1


		--内伤，中毒
		--i = i + 1
		--DrawString(x1, y1 + h * (i), "内伤", C_BLACK, size)
		--DrawString(x1 + size * 2 + 10, y1 + h * (i), p["受伤程度"], PinkRed, size)
		--DrawString(x1 + size * 4 + 75, y1 + h * (i), "中毒", C_BLACK, size)
		--DrawString(x1 + size * 6 + 108, y1 + h * (i), p["中毒程度"], M_Olive, size)

		

	  --经验值
	  i = i + 1
		DrawString(x1-130, y1 + 12*h * (i)-40, "升级", C_CYGOLD, size*0.8)
		local kk = nil
		if p["等级"] >= 30 then
			kk = "   ="
		else
			kk = 2 * (p["经验"] - CC.Exp[p["等级"] - 1])
			if kk < 0 then
				kk = "  0"
			elseif kk < 10 then
				kk = "   " .. kk
			elseif kk < 100 then
				kk = "  " .. kk
			elseif kk < 1000 then
				kk = " " .. kk
			end
		end		
		
		--等级
		DrawString(x1-size *4, y1 + 12*h * (i)-40, kk, C_CYGOLD, size*0.8)
		local tmp = nil
		if CC.Level <= p["等级"] then
			tmp = "="
		else
			tmp = 2 * (CC.Exp[p["等级"]] - CC.Exp[p["等级"] - 1])
		end
		DrawString(x1-size *2, y1 + 12*h * (i)-40, "/" .. tmp, C_CYGOLD, size*0.8)
		end
---------------------------------------------------------------
		--第三列开始
		x1 = dx*2 - size*2-30
		y1 = size*2+30
		i = 0

		
		local T = {"一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "极"}
	    local SortingNum = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"} 	
		for j = 1, CC.Kungfunum do
			i = i + 1
			local wugong = p["武功" .. j]
			if wugong > 0 then
				lib.LoadPNG(1, 1005 * 2 , x1 -38, y1 + h * (i), 1)
				DrawString(x1 -34, y1 + h * (i)+5, SortingNum[j], C_WHITE, CC.FontSMALL)
				local level = math.modf(p["武功等级" .. j] / 100) + 1
				if p["武功等级" .. j] == 999 then
					level = 11
				end
				DrawString(x1, y1 + h * (i), string.format("%s", JY.Wugong[wugong]["名称"]), M_Orange, size*0.9)
				if p["武功等级" .. j] > 900 then
					lib.SetClip(x1, y1 + h * 1, x1 + size + string.len(JY.Wugong[wugong]["名称"]) * size * (p["武功等级" .. j] - 900) / 200, y1 + h * (i) + h*0.8)
					DrawString(x1, y1 + h * (i), string.format("%s", JY.Wugong[wugong]["名称"]), M_Orange, size*0.9)
					lib.SetClip(0, 0, 0, 0)
				end
				--等级
				DrawString(x1 + size * 6 -6+75, y1 + h * (i), T[level], C_CYGOLD, size*0.9)
				--耗内
				local nl = nil
		        nl = math.modf((level + 3) / 2) * JY.Wugong[wugong]["消耗内力点数"]
				DrawString(x1 + size * 6 -6, y1 + h * (i), nl, C_CYGOLD, size*0.9)
				--如果是特技，显示特技
				if secondary_wugong(wugong) then
					DrawString(x1 + size * 8 -14+90, y1 + h * (i), "特技", M_PaleGreen, size*0.9)
				--如果不是，则显示武功威力
				else
					--威力
					local wugongwl = get_skill_power(id, wugong, level)
					--区别天赋内外功的颜色
					if Given_WG(id, wugong) or Given_NG(id, wugong) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), PinkRed, size*0.9)
					--五岳剑法组合颜色
					elseif wugong >= 30 and wugong <= 34 and WuyueJF(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)
					--琴棋书画组合颜色
					elseif (wugong == 73 or wugong == 72 or wugong == 84 or wugong == 142) and QinqiSH(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)
					--桃花绝技组合颜色
					elseif (wugong == 12 or wugong == 18 or wugong == 38) and TaohuaJJ(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)
					--紫气天罗组合颜色
					elseif (wugong == 3 or wugong == 9 or wugong == 5 or wugong == 21 or wugong == 118) and ZiqiTL(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)						
					else
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), RGB(208, 152, 208), size*0.9)
					end
				end
			end
		end
		i = 17

		if p["天赋内功"] ~= 0 then
		    local T = {"低阶", "中阶", "高阶", "超阶"}
			local str = ""
			if nglw(id,p["天赋内功"])<1 then
			str = "未开启"
			else
			str = T[nglw(id,p["天赋内功"])]
			end
			DrawString(x1+60-9+30, y1 + h * 17-8, JY.Wugong[p["天赋内功"]]["名称"].."."..str, TG_Red_Bright, size*0.6)
			i = i + 1
		end
		if p["天赋轻功"] ~= 0 then
			local T = {"入门", "进阶"}
			local str = ""
			if qglw(id,p["天赋轻功"])<1 then
			str = "未开启"
			else
			str = T[qglw(id,p["天赋轻功"])]
			end
			DrawString(x1 + size*5-10+80+30, y1 + h * 17-8, JY.Wugong[p["天赋轻功"]]["名称"].."."..str, M_DeepSkyBlue, size*0.6)
			i = i + 1
		end
		if p["天赋外功1"] ~= 0 then
			local T = {"低阶", "中阶", "高阶"}
			local str = ""
			if wglw(id,p["天赋外功1"])<1 then
			str = "未开启"
			else
			str = T[wglw(id,p["天赋外功1"])]
			end
			DrawString(x1+60-9+30, y1 + h * 18-13, JY.Wugong[p["天赋外功1"]]["名称"].."."..str, C_GOLD, size*0.6)
			i = i + 1
		end
		if p["天赋外功2"] ~= 0 then
			local T = {"低阶", "中阶", "高阶"}
			local str = ""
			if wglw(id,p["天赋外功2"])<1 then
			str = "未开启"
			else
			str = T[wglw(id,p["天赋外功2"])]
			end
			DrawString(x1 + size*5-10+80+30, y1 + h * 18-13, JY.Wugong[p["天赋外功2"]]["名称"].."."..str, C_GOLD, size*0.6)
		end
		
		x1 = dx - size *3 -10
		i = 19
		if case == nil then
			if JY.Status ~= GAME_WMAP then
				DrawString(x1-size*5, y1 + h * (i)+2, "上下键换人 →键显示人物天赋 ESC退出", M_PaleTurquoise, size*0.7)
			else
				DrawString(x1-size*5, y1 + h * (i)+2, "上下键换人 →键显示人物天赋 ESC退出", Snow3, size*0.7)
			end
		else
			DrawString(x1-size*5, y1 + h * (i)+2, "上下键选择属性 左右键减少/增加 回车键确认加点", Snow3, size*0.7)
		end
	--动画显示
		if dl then
			lib.PicLoadCache(97,(dl+AniFrame)*2,diyx/5+ax*2,diyy/4+ax*5+130) 	
		end
-------------------------------------
--属性显示 顾	
		x1 = dx-450
		y1 = size*2+360
		i = 3
        size = CC.FontSmall4*0.7	
DrawAttrib("攻击力", C_WSTM, C_WSTM)
DrawAttrib("防御力", C_WSTM, C_WSTM)
DrawAttrib("轻功", C_WSTM, C_WSTM)

DrawAttrib("拳掌功夫", C_WSTM, C_WSTM)
DrawAttrib("指法技巧", C_WSTM, C_WSTM)
DrawAttrib("御剑能力", C_WSTM, C_WSTM)
DrawAttrib("耍刀技巧", C_WSTM, C_WSTM)
DrawAttrib("特殊兵器", C_WSTM, C_WSTM)
DrawAttrib("暗器技巧", C_WSTM, C_WSTM)
DrawAttrib("解毒能力", C_BLACK, C_CYGOLD)
DrawAttrib("抗毒能力", C_BLACK, C_CYGOLD)
DrawAttrib("攻击带毒", C_BLACK, C_CYGOLD)
DrawAttrib("医疗能力", C_WHITE, C_GOLD)
DrawAttrib("用毒能力", C_BLACK, C_CYGOLD)
DrawAttrib("武学常识", C_BLACK, C_CYGOLD)
DrawAttrib("实战", C_BLACK, C_CYGOLD)
------------------------------------------------
	--第二页
elseif page == 2 then
		local y2 = y1
		lib.LoadPNG(1, 1006 * 2 , 0 , 0, 1)
		--上下翻的箭头显示
		if istart > 1 then
			DrawString(x1-size*2-7, y1+h, "↑", C_CYGOLD, size)
		end
		if istart < max_row then
			DrawString(x1-size*2-7, y1+18*h+12, "↓", C_CYGOLD, size)
		end
		local function strcolor_switch(s)
			local Color_Switch={{"Ｒ",PinkRed},{"Ｇ",C_GOLD},{"Ｂ",C_BLACK},{"Ｗ",C_WHITE},{"Ｏ",C_ORANGE},{"Ｌ",LimeGreen},{"Ｄ",M_DeepSkyBlue},{"Ｚ",Violet}}
			for i = 1, 8 do
				if Color_Switch[i][1] == s then
					return Color_Switch[i][2]
				end
			end
		end
		x1 = x1 - size
		DrawString(x1+size*14+20, y1-13, p["姓名"], C_CYGOLD, size)
		DrawString(x1+size*7, y1+23, "上下键浏览 ←键返回状态页面 →键进入AI设定 ESC退出", C_CYGOLD, size*0.6)
		local row = 1
		if TFJS[tfid] ~= nil then
			y2 = y2 + 53
			for i = istart, #TFJS[tfid] do
				local tfstr = TFJS[tfid][i]
				--控制显示行数
				if row < 20 then
					if string.sub(tfstr,1,2) == "Ｎ" then
						row = row + 1
					else
						local color;
						color = strcolor_switch(string.sub(tfstr,1,2))
						tfstr = string.sub(tfstr,3,-1)
						DrawString(x1, y2 + (h-2) * (row), tfstr, color, size*0.9)
						row = row + 1
					end
				end
			end
			row = row + 1
		end
		--主角额外显示
		if id == 0 then
			if TFJS[tfid] == nil then
				y2 = y2 + 13
			end
			for i = 1, #ZJZSJS do
				local zjstr = ZJZSJS[i]
				--控制显示行数
				if row < 20 then
					if string.sub(zjstr,1,2) == "Ｎ" then
						row = row + 1
					else
						local color;
						color = strcolor_switch(string.sub(zjstr,1,2))
						zjstr = string.sub(zjstr,3,-1)
						DrawString(x1, y2 + (h-2) * (row), zjstr, color, size*0.9)
						row = row + 1
					end
				end
			end
		end
		x1 = dx - size *6 -10
		y1 = size*2
		i = 19
	--AI设定页面
	elseif page == 3 then
		lib.LoadPNG(1, 1009 * 2 , 0 , 0, 1)
		
		local wg_color1 = C_WHITE
		local wg_color2 = C_ORANGE
		if JY.Status == GAME_WMAP then
			wg_color1 = M_DimGray
			wg_color2 = M_DimGray
		end
		
		x1 = size*2 + 10
		i = 0
		DrawString(x1+size*13+7+20, y1-13, p["姓名"], C_CYGOLD, size)
	--	DrawString(x1+size*5, y1+23, "上下键浏览 ←键返回状态页面 →键进入AI设定 ESC退出", C_CYGOLD, size*0.6)

		y1 = y1 + h * 3
		local AI_s1_name = {"行为模式","优先使用","主运内功","主运轻功","是否吃药","生命阈值","内力阈值","体力阈值","禁用AI"}
		for j = 1, 9 do
			local color = LimeGreen
			if AI_s1 == j then
				color = C_GOLD
				DrawString(x1-size-2+10, y1 + h * (j-1)*2, "☆", color, size*0.9)
			end
			if JY.Status == GAME_WMAP and (j == 3 or j == 4) then
				color = M_DimGray
			end
			DrawString(x1+10, y1 + h * (j-1)*2, AI_s1_name[j], color, size*0.9)
		end
		local AI_1_s2_name = {"自动攻击","自动防御","原地休息","逃离休息"}
		for j = 1, 4 do
			local color = C_WHITE
			if AI_s2[1] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_1_s2_name[j], color, size*0.9)
		end
		i = i + 2
		if p["优先使用"] == 0 then
			DrawString(x1+h*5, y1 + h * (i), "未设定", C_WHITE, size*0.9)
		else
			DrawString(x1+h*5, y1 + h * (i), JY.Wugong[p["优先使用"]]["名称"], C_ORANGE, size*0.9)
		end
		i = i + 2
		if p["主运内功"] == 0 then
			DrawString(x1+h*5, y1 + h * (i), "未设定", wg_color1, size*0.9)
		else
			DrawString(x1+h*5, y1 + h * (i), JY.Wugong[p["主运内功"]]["名称"], wg_color2, size*0.9)
		end
		i = i + 2
		if p["主运轻功"] == 0 then
			DrawString(x1+h*5, y1 + h * (i), "未设定", wg_color1, size*0.9)
		else
			DrawString(x1+h*5, y1 + h * (i), JY.Wugong[p["主运轻功"]]["名称"], wg_color2, size*0.9)
		end
		i = i + 2
		local AI_5_s2_name = {"是","否"}
		for j = 1, 2 do
			local color = C_WHITE
			if AI_s2[5] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_5_s2_name[j], color, size*0.9)
		end
		i = i + 2
		local AI_6_s2_name = {"70%","50%","30%"}
		for j = 1, 3 do
			local color = C_WHITE
			if AI_s2[6] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_6_s2_name[j], color, size*0.9)
		end
		i = i + 2
		local AI_7_s2_name = {"70%","50%","30%"}
		for j = 1, 3 do
			local color = C_WHITE
			if AI_s2[7] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_7_s2_name[j], color, size*0.9)
		end
		i = i + 2
		local AI_8_s2_name = {"50","30","10"}
		for j = 1, 3 do
			local color = C_WHITE
			if AI_s2[8] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_8_s2_name[j], color, size*0.9)
		end
		i = i + 2
		local AI_9_s2_name = {"是","否"}
		for j = 1, 2 do
			local color = C_WHITE
			if AI_s2[9] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_9_s2_name[j], color, size*0.9)
		end
		
		if AI_menu_selected == 1 or AI_menu_selected > 4 then
			DrawString(x1+h*5*(AI_s2[AI_menu_selected])-h, y1 + h * (AI_menu_selected-1)*2+2, "→", C_ORANGE, size*0.99)
		end
		
		if AI_menu_selected > 1 and AI_menu_selected < 5 then
			DrawString(x1+h*4, y1 + h * (AI_menu_selected-1)*2+2, "←", C_ORANGE, size*0.99)
			DrawString(x1+h*9+12, y1 + h * (AI_menu_selected-1)*2+2, "→", C_ORANGE, size*0.9)
		end

		x1 = dx - size *5 -15
		y1 = size*2
		i = 19
		if AI_menu_selected > 0 then
			x1 = dx - 15
			DrawString(x1+size*2, y1, "左右键选择 回车/ESC键确认", C_CYGOLD, size*0.6)
		else
			DrawString(x1+size*2, y1, "上下键选择 回车键确认 ←键返回天赋页面 ESC退出", C_CYGOLD, size*0.6)
		end
	end
end

--计算人物修炼成功需要的点数
--id 人物id
function TrainNeedExp(id)         --计算人物修炼物品成功需要的点数
    local thingid=JY.Person[id]["修炼物品"];
	local r =0;
	if thingid >= 0 then
        if JY.Thing[thingid]["练出武功"] >=0 then
            local level=0;          --此处的level是实际level-1。这样没有武功時和炼成一级是一样的。
			for i =1,CC.Kungfunum do               -- 查找当前已经炼成武功等级
			    if JY.Person[id]["武功" .. i]==JY.Thing[thingid]["练出武功"] then
                    level=math.modf(JY.Person[id]["武功等级" .. i] /100);
					break;
                end
            end
			if level <9 then
                r=math.modf((5-math.modf(JY.Person[id]["资质"]/25))*JY.Thing[thingid]["需经验"]*(level+1)*0.5);
			else
                r=math.huge;
			end
		else
            r=(5-math.modf(JY.Person[id]["资质"]/25))*JY.Thing[thingid]["需经验"];
		end
	end
    return r;
end

--医疗菜单
function Menu_Doctor()       --医疗菜单
    DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"谁要使用医术",C_WHITE,CC.DefaultFont);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;
    DrawStrBox(CC.MainSubMenuX,nexty,"医疗能力",C_ORANGE,CC.DefaultFont);

	local menu1={};
	for i=1,CC.TeamNum do
        menu1[i]={"",nil,0};
		local id=JY.Base["队伍" .. i]
        if id >=0 then
            if JY.Person[id]["医疗能力"]>=20 then
                 menu1[i][1]=string.format("%-10s%4d",JY.Person[id]["姓名"],JY.Person[id]["医疗能力"]);
                 menu1[i][3]=1;
            end
        end
	end

    local id1,id2;
	nexty=nexty+CC.SingleLineHeight;
    local r=ShowMenu(menu1,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);

    if r >0 then
	    id1=JY.Base["队伍" .. r];
        Cls(CC.MainSubMenuX,CC.MainSubMenuY,CC.ScreenW,CC.ScreenH);
        DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"要医治谁",C_WHITE,CC.DefaultFont);
        nexty=CC.MainSubMenuY+CC.SingleLineHeight;

		local menu2={};
		for i=1,CC.TeamNum do
			menu2[i]={"",nil,0};
			local id=JY.Base["队伍" .. i]
			if id>=0 then
				 menu2[i][1]=string.format("%-10s%4d/%4d",JY.Person[id]["姓名"],JY.Person[id]["生命"],JY.Person[id]["生命最大值"]);
				 menu2[i][3]=1;
			end
		end

		local r2=ShowMenu(menu2,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE,C_WHITE);

		if r2 >0 then
	        id2=JY.Base["队伍" .. r2];
            local num=ExecDoctor(id1,id2);
			if num>0 then
                AddPersonAttrib(id1,"体力",-2);
			end
            DrawStrBoxWaitKey(string.format("%s 生命增加 %d",JY.Person[id2]["姓名"],num),C_ORANGE,CC.DefaultFont);
		end
	end

	Cls();
    return 0;
end

--解毒
function Menu_DecPoison()         --解毒
    DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"谁要帮人解毒",C_WHITE,CC.DefaultFont);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;
    DrawStrBox(CC.MainSubMenuX,nexty,"解毒能力",C_ORANGE,CC.DefaultFont);

	local menu1={};
	for i=1,CC.TeamNum do
        menu1[i]={"",nil,0};
		local id=JY.Base["队伍" .. i]
        if id>=0 then
            if JY.Person[id]["解毒能力"]>=20 then
                 menu1[i][1]=string.format("%-10s%4d",JY.Person[id]["姓名"],JY.Person[id]["解毒能力"]);
                 menu1[i][3]=1;
            end
        end
	end

    local id1,id2;
 	nexty=nexty+CC.SingleLineHeight;
    local r=ShowMenu(menu1,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);

    if r >0 then
	    id1=JY.Base["队伍" .. r];
         Cls(CC.MainSubMenuX,CC.MainSubMenuY,CC.ScreenW,CC.ScreenH);
        DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"替谁解毒",C_WHITE,CC.DefaultFont);
		nexty=CC.MainSubMenuY+CC.SingleLineHeight;

        DrawStrBox(CC.MainSubMenuX,nexty,"中毒程度",C_WHITE,CC.DefaultFont);
	    nexty=nexty+CC.SingleLineHeight;

		local menu2={};
		for i=1,CC.TeamNum do
			menu2[i]={"",nil,0};
			local id=JY.Base["队伍" .. i]
			if id>=0 then
				 menu2[i][1]=string.format("%-10s%5d",JY.Person[id]["姓名"],JY.Person[id]["中毒程度"]);
				 menu2[i][3]=1;
			end
		end

		local r2=ShowMenu(menu2,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
		if r2 >0 then
	        id2=JY.Base["队伍" .. r2];
            local num=ExecDecPoison(id1,id2);
            DrawStrBoxWaitKey(string.format("%s 中毒程度减少 %d",JY.Person[id2]["姓名"],num),C_ORANGE,CC.DefaultFont);
		end
	end
    Cls();
    ShowScreen();
    return 0;
end

--解毒
--id1 解毒id2, 返回id2中毒减少点数
function ExecDecPoison(id1,id2)     --执行解毒
    local add=JY.Person[id1]["解毒能力"];
    local value=JY.Person[id2]["中毒程度"];

    if value > add+20 then
        return 0;
	end

	if WAR.POISON2[id2]~=nil and JY.Status == GAME_WMAP  then
       return 0;
	end

 	add=limitX(math.modf(add/3)+Rnd(10)-Rnd(10),0,value);
    return -AddPersonAttrib(id2,"中毒程度",-add);
end


--显示物品菜单
function SelectThing(thing,thingnum)    

   local bx = CC.ScreenW/1360
   local by = CC.ScreenH/768
   local size = CC.DefaultFont*0.7
   local size1 = CC.DefaultFont*0.6
   local size2 = CC.DefaultFont*0.55
   local cont = 1 
   local cont1 = 0
   local cxt = 1

	local xnum=CC.MenuThingXnum;
	local ynum=CC.MenuThingYnum;

	local w=CC.ThingPicWidth*xnum+(xnum-1)*CC.ThingGapIn+2*CC.ThingGapOut;  --总体宽度
	local h=CC.ThingPicHeight*ynum+(ynum-1)*CC.ThingGapIn+2*CC.ThingGapOut; --物品栏高度

	local dx=(CC.ScreenW-w)/2;
	local dy=(CC.ScreenH-h-2*(CC.ThingFontSize+2*CC.MenuBorderPixel+8))/2-CC.ThingFontSize-11;

	local y1_1,y1_2,y2_1,y2_2,y3_1,y3_2;                  --名称，说明和图片的Y坐标

	local cur_line=0;
	local cur_x=0;
	local cur_y=0;
	local cur_thing=-1;

	while true do
		if JY.Restart == 1 then
			break
		end
		Cls();
		y1_1=dy;
		y1_2=y1_1+CC.ThingFontSize+2*CC.MenuBorderPixel;
		--DrawBox(dx,y1_1,dx+w,y1_2,C_WHITE);
		y2_1=y1_2+5
		y2_2=y2_1+CC.ThingFontSize+2*CC.MenuBorderPixel
		--DrawBox(dx,y2_1,dx+w,y2_2,C_WHITE);
		y3_1=y2_2+5;
		y3_2=y3_1+h;
		--DrawBox(dx,y3_1,dx+w,y3_2,C_WHITE);
		lib.LoadPNG(1, 1004 * 2 , bx*220+(cxt-1)*bx*100,by*30, 1)

		for y=0,ynum-1 do
			for x=0,xnum-1 do
				local id=y*xnum+x+xnum*cur_line         --当前待选择物品
				local boxcolor;
				--选中物品颜色
				if x==cur_x and y==cur_y then
					boxcolor=S_Yellow;
					if thing[id]>=0 then
						cur_thing=thing[id];
						local str=JY.Thing[thing[id]]["名称"];
						--装备等级显示
						if JY.Thing[thing[id]]["装备类型"] > -1 then
							str = str .." LV."..JY.Thing[thing[id]]["装备等级"]
						end
						if JY.Thing[thing[id]]["类型"]==1 or JY.Thing[thing[id]]["类型"]==2 then
							if JY.Thing[thing[id]]["使用人"] >=0 then
								str=str .. "(" .. JY.Person[JY.Thing[thing[id]]["使用人"]]["姓名"] .. ")";
							end
						end
						str=string.format("%s X %d",str,thingnum[id]);
						local str2=JY.Thing[thing[id]]["物品说明"];
						if thing[id]==182 then
							str2=str2..string.format('(人%3d,%3d)',JY.Base['人X'],JY.Base['人Y'])
						end
						DrawString(dx+CC.ThingGapOut,y1_1+CC.MenuBorderPixel,str,C_GOLD,CC.ThingFontSize);
						DrawString(dx+CC.ThingGapOut,y2_1+CC.MenuBorderPixel,str2,C_ORANGE,CC.ThingFontSize);
						local myfont=CC.FontSmall
						local mx, my = dx + 4 * myfont, y3_2 + 2
						local myflag=0
						local myThing=JY.Thing[thing[id]]
								
						--物品说明显示
						local function drawitem(ss,str,news)
							local color = C_GOLD
							local mys
							if str==nil then
								mys=ss
							elseif myThing[ss]~=0 then
								if news==nil then
									if myflag==0 then
										--无酒不欢：装备的数值随等级变化
										if myThing["装备类型"] > -1 then
											local attr_gain = 0;
											if myThing[ss] > 0 then
												attr_gain = myThing[ss]*10 + myThing[ss]*(myThing["装备等级"]-1)*2
											elseif myThing[ss] < 0 then
												attr_gain = myThing[ss]*10 - myThing[ss]*(myThing["装备等级"]-1)*2
											end
											if attr_gain ~= 0 then
												mys=string.format(str..':%+d',attr_gain)
											end
										else
											mys=string.format(str..':%+d',myThing[ss])
										end
									elseif myflag==1 then
										mys=string.format(str..':%d',myThing[ss])
									end
								else
									if myThing[ss]<0 then
										return
									end
									mys=string.format(str..':%s',news[myThing[ss]])
								end
								--内属颜色
								if myThing[ss]==1 and ss=="需内力性质" then
									color = RGB(236, 200, 40)
								elseif myThing[ss]==2 and ss=="需内力性质" then
									color = RGB(236, 236, 236)
								end
							elseif myThing[ss]==0 and ss=="需内力性质" then
								mys=string.format(str..':%s',news[myThing[ss]])
								color = RGB(208, 152, 208)
							else
								return
							end
							
							if mys ~= nil then
								local mylen = myfont * string.len(mys) / 2 + 12
								if CC.ScreenW - dx < mx + mylen then
									my = my + myfont + 10
									mx = dx + 4 * myfont
								end
								DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,mys,color,myfont)
								mx=mx+mylen
							end
						end
					  
						--苍天泰坦：同样是老二
						if myThing["练出武功"] > 0 then
							local kfname = "习得:" .. JY.Wugong[myThing["练出武功"]]["名称"]
							DrawString(mx+CC.MenuBorderPixel, my+CC.MenuBorderPixel, kfname, C_GOLD, myfont)
							mx = mx + myfont * string.len(kfname) / 2 + 12
						end
								
						if myThing['类型']>0 then
							drawitem('加生命','生命')
							drawitem('加生命最大值','生命最值')
							drawitem('加中毒解毒','中毒')
							drawitem('加体力','体力')
							if myThing['改变内力性质']==2 then
								drawitem('内力属性变为调和')
							end
							drawitem('加内力','内力')
							drawitem('加内力最大值','内力最值')
							drawitem('加攻击力','攻击')
							drawitem('加轻功','轻功')
							drawitem('加防御力','防御')
							drawitem('加医疗能力','医疗')
							drawitem('加用毒能力','用毒')
							drawitem('加解毒能力','解毒')
							drawitem('加抗毒能力','抗毒')
							drawitem('加拳掌功夫','拳掌')
							drawitem('加指法技巧','指法')
							drawitem('加御剑能力','御剑')
							drawitem('加耍刀技巧','耍刀')
							drawitem('加特殊兵器','特殊')
							drawitem('加暗器技巧','暗器')
							drawitem('加武学常识','武常')
							drawitem('加品德','品德')
							drawitem('加攻击次数','左右',{[0]='否','是'})
							drawitem('加攻击带毒','带毒')
							
							--武器装备威力加成
							for i,v in ipairs(CC.ExtraOffense) do
								if v[1] == thing[id] then
									DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,"威力强化:"..JY.Wugong[v[2]]["名称"].."+"..v[3],PinkRed,myfont)
								end
							end
							
							if mx~=dx or my~=y3_2+2 then
								DrawString(dx+CC.MenuBorderPixel, y3_2 + 2+CC.MenuBorderPixel, " 效果:", LimeGreen, myfont)
							end
						end
						
						--装备类和秘籍类
						if myThing['类型']==1 or myThing['类型']==2 then
							if mx~=dx then
								mx=dx+4*myfont
								my=my+myfont+3
							end
							myflag=1
							local my2=my
							if myThing['仅修炼人物']>-1 then
								drawitem('仅限:'..JY.Person[myThing['仅修炼人物']]['姓名'])
							end
							drawitem('需内力性质','内属',{[0]='阴','阳','不限'})
							drawitem('需内力','内力')
							drawitem('需攻击力','攻击')
							drawitem('需轻功','轻功')
							drawitem('需用毒能力','用毒')
							drawitem('需医疗能力','医疗')
							drawitem('需解毒能力','解毒')
							drawitem('需拳掌功夫','拳掌')
							drawitem('需指法技巧','指法')
							drawitem('需御剑能力','御剑')
							drawitem('需耍刀技巧','耍刀')
							drawitem('需特殊兵器','特殊')
							drawitem('需暗器技巧','暗器')
							--斗转的显示
							if thing[id] == 118 then
								local exstr = "五系兵器值之和>=120 "
								local mylen = myfont * string.len(exstr) / 2 + 12
								DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,exstr,C_GOLD,myfont)
								mx=mx+mylen
							end
							--阴阳的显示
							if thing[id] == 176 then
								local exstr = "御剑/耍刀/特殊任一项>=70 "
								local mylen = myfont * string.len(exstr) / 2 + 12
								DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,exstr,C_GOLD,myfont)
								mx=mx+mylen
							end
							drawitem('需资质','资质')
							drawitem('需经验','修炼经验')
							if mx~=dx or my~=my2 then
								DrawString(dx+CC.MenuBorderPixel,my2+CC.MenuBorderPixel,' 需求:',LimeGreen,myfont)
							end
						end
						
						--特效说明
						if myThing['是否特效'] == 1 and (WPTX[thing[id]][myThing['装备等级']] ~= nil or myThing['装备类型'] == -1) then
							if mx~=dx then
								mx=dx+4*myfont
								my=my+myfont+3
							end
							local my2=my
							if mx~=dx or my~=my2 then
								DrawString(dx+CC.MenuBorderPixel,my2+CC.MenuBorderPixel,' 特效:',C_RED,myfont)
							end
							if myThing['装备类型'] > -1 then
								DrawString(dx+CC.MenuBorderPixel+myfont*4,my2+CC.MenuBorderPixel, WPTX[thing[id]][myThing['装备等级']], M_DeepSkyBlue,myfont)
							else
								DrawString(dx+CC.MenuBorderPixel+myfont*4,my2+CC.MenuBorderPixel, WPTX[thing[id]], M_DeepSkyBlue,myfont)
							end
						end
					else
						cur_thing=-1;
					end
				else
					boxcolor=C_BLACK;
				end
		  
				local boxx = dx + CC.ThingGapOut + x * (CC.ThingPicWidth + CC.ThingGapIn)
				local boxy = y3_1 + CC.ThingGapOut + y * (CC.ThingPicHeight + CC.ThingGapIn)

				if thing[id] >= 0 then
					lib.PicLoadCache(2, thing[id] * 2, boxx + 1, boxy + 1, 1)
				end
				--无酒不欢：修改选择框
				if boxcolor == S_Yellow then
					DrawSingleLine(boxx+2, boxy+1, boxx + CC.ThingPicWidth/4, boxy+1, boxcolor)
					DrawSingleLine(boxx+2+ CC.ThingPicWidth*3/4, boxy+1, boxx + CC.ThingPicWidth, boxy+1, boxcolor)
					DrawSingleLine(boxx+2, boxy+1, boxx+2, boxy + CC.ThingPicHeight/4 - 1, boxcolor)
					DrawSingleLine(boxx + CC.ThingPicWidth-1, boxy+2, boxx + CC.ThingPicWidth-1, boxy + CC.ThingPicHeight/4 - 1, boxcolor)
					DrawSingleLine(boxx+2, boxy+2+CC.ThingPicHeight*3/4, boxx+2, boxy + CC.ThingPicHeight - 1, boxcolor)
					DrawSingleLine(boxx + CC.ThingPicWidth-1, boxy+2+CC.ThingPicHeight*3/4, boxx + CC.ThingPicWidth-1, boxy + CC.ThingPicHeight - 1, boxcolor)
					DrawSingleLine(boxx+1, boxy + CC.ThingPicHeight - 1, boxx + CC.ThingPicWidth/4, boxy + CC.ThingPicHeight - 1, boxcolor)
					DrawSingleLine(boxx+2+ CC.ThingPicWidth*3/4, boxy + CC.ThingPicHeight - 1, boxx + CC.ThingPicWidth-1, boxy + CC.ThingPicHeight - 1, boxcolor)
				end
			end
		end
		
		DrawString(CC.ScreenW-220,CC.ScreenH-40, "按F1查看详细说明", C_ORANGE,CC.Fontsmall)

		ShowScreen();
  	
		local keypress, ktype, mx, my = WaitKey(1)
		lib.Delay(CC.Frame);
		if keypress==VK_ESCAPE or ktype == 4 then
			cur_thing=-1;
			break;
		elseif keypress==VK_RETURN or keypress==VK_SPACE then
			break;
		--增加物品的内置说明
		elseif keypress==VK_F1 and cur_thing ~= -1 then
			detailed_info(cur_thing)
		elseif keypress==VK_UP or ktype == 6 then
			if  cur_y == 0 then
				if  cur_line > 0 then
					cur_line = cur_line - 1;
				end
			else
				cur_y = cur_y - 1;
			end
		elseif keypress==VK_DOWN or ktype == 7 then
			if  cur_y ==ynum-1 then
				if  cur_line < (math.modf(CC.MyThingNum/xnum)-ynum) then
					cur_line = cur_line + 1;
				end
			else
				cur_y = cur_y + 1;
			end
		elseif keypress==VK_LEFT then
			if  cur_x > 0 then
				cur_x=cur_x-1;
			else
				cur_x=xnum-1;
			end
		elseif keypress==VK_RIGHT then
			if  cur_x ==xnum-1 then
				cur_x=0;
			else
				cur_x=cur_x+1;
			end
		elseif ktype == 2 or ktype == 3 then
			if mx>dx and my>dy and mx<CC.ScreenW-dx and my<CC.ScreenH-dy then
				cur_x=math.modf((mx-dx-CC.ThingGapOut/2)/(CC.ThingPicWidth+CC.ThingGapIn))
				cur_y=math.modf((my-y3_1-CC.ThingGapOut/2)/(CC.ThingPicHeight+CC.ThingGapIn))
				if ktype==3 then
					break
				end
			end
		end
	end

	Cls();
	return cur_thing;
end


--场景处理主函数
function Game_SMap()         --场景处理主函数
	if JY.Restart == 1 then
		return
	end
	
    DrawSMap();	
	--无酒不欢：下方显示
	if CC.ShowXY==1 then
        DrawString(10,CC.ScreenH-60,string.format("%s %d %d",JY.Scene[JY.SubScene]["名称"],JY.Base["人X1"],JY.Base["人Y1"]) ,C_GOLD,CC.Fontsmall);
	end
		
	DrawTimer();
	
	JYZTB();
	
    ShowScreen();
    lib.SetClip(0, 0, 0, 0)
  
	local d_pass=GetS(JY.SubScene,JY.Base["人X1"],JY.Base["人Y1"],3);   --当前路过事件
	if d_pass>=0 then
		if d_pass ~=JY.OldDPass then     --避免重复触发
			EventExecute(d_pass,3);       --路过触发事件
			JY.OldDPass=d_pass;
			JY.oldSMapX=-1;
			JY.oldSMapY=-1;
			JY.D_Valid=nil;
		end
		if JY.Status~=GAME_SMAP then
			return ;
		else
		   JY.OldDPass=-1;
		end
	end
	local isout=0;                --是否碰到出口
	if (JY.Scene[JY.SubScene]["出口X1"] ==JY.Base["人X1"] and JY.Scene[JY.SubScene]["出口Y1"] ==JY.Base["人Y1"]) or
		(JY.Scene[JY.SubScene]["出口X2"] ==JY.Base["人X1"] and JY.Scene[JY.SubScene]["出口Y2"] ==JY.Base["人Y1"]) or
		(JY.Scene[JY.SubScene]["出口X3"] ==JY.Base["人X1"] and JY.Scene[JY.SubScene]["出口Y3"] ==JY.Base["人Y1"]) then
		isout=1;
	end
	--出到大地图
	if isout == 1 then
		--无酒不欢：修复马车直接飞进场景后出来会遮挡建筑物的问题
		if JY.Base["人X"] == JY.Scene[JY.SubScene]["外景入口X1"] and JY.Base["人Y"] == JY.Scene[JY.SubScene]["外景入口Y1"] then
			--雪山要单独处理
			if JY.SubScene == 2 then
				JY.Base["人Y"] = JY.Base["人Y"] + 1
			--朱府要单独处理
			elseif JY.SubScene == 92 then
				JY.Base["人X"] = JY.Base["人X"] + 1
			else
				if JY.Base["人方向"] == 0 then
					JY.Base["人Y"] = JY.Base["人Y"] - 1
				elseif JY.Base["人方向"] == 1 then
					JY.Base["人X"] = JY.Base["人X"] + 1
				elseif JY.Base["人方向"] == 2 then
					JY.Base["人X"] = JY.Base["人X"] - 1
				elseif JY.Base["人方向"] == 3 then
					JY.Base["人Y"] = JY.Base["人Y"] + 1
				end
			end
		end
		--明教地道要单独处理
		if JY.SubScene == 13 then
			JY.Base["人X"] = 68
			JY.Base["人Y"] = 397
		end
		--蒙古包要单独处理
		if JY.SubScene == 6 then
			JY.Base["人X"] = 49
			JY.Base["人Y"] = 111
		end
		JY.Status = GAME_MMAP
		lib.PicInit()
		CleanMemory()
		JY.MmapMusic = JY.Scene[JY.SubScene]["出门音乐"]
		--如果没有设置出门音乐的话
		if JY.MmapMusic < 0 then
			JY.MmapMusic = 25
		end
		Init_MMap()
		JY.SubScene = -1
		JY.oldSMapX = -1
		JY.oldSMapY = -1
		lib.DrawMMap(JY.Base["人X"], JY.Base["人Y"], GetMyPic())
		lib.GetKey()
		lib.ShowSlow(20,0)
		return
	end
    --是否跳转到其他场景
    if JY.Scene[JY.SubScene]["跳转场景"] >= 0 and JY.Base["人X1"] == JY.Scene[JY.SubScene]["跳转口X1"] and JY.Base["人Y1"] == JY.Scene[JY.SubScene]["跳转口Y1"] then
		local OldScene = JY.SubScene
		JY.SubScene = JY.Scene[JY.SubScene]["跳转场景"]
		lib.ShowSlow(20, 1)
		if JY.Scene[OldScene]["外景入口X1"] ~= 0 then
			JY.Base["人X1"] = JY.Scene[JY.SubScene]["入口X"]
			JY.Base["人Y1"] = JY.Scene[JY.SubScene]["入口Y"]
		else
			JY.Base["人X1"] = JY.Scene[JY.SubScene]["跳转口X2"]
			JY.Base["人Y1"] = JY.Scene[JY.SubScene]["跳转口Y2"]
		end
		Init_SMap(1)
		return 
	end

    local x,y;
    local direct = -1;
    local keypress, ktype, mx, my = lib.GetKey();
	--先检测跟上次不同的方向是否被按下
    for i = VK_RIGHT,VK_UP do
        if i ~= CC.PrevKeypress and lib.GetKeyState(i) ~=0 then
			keypress = i
		end
	end 
    --如果与上次不同的方向未被按下，则检测与上次相同的方向是否被按下
	if keypress==-1 and	lib.GetKeyState(CC.PrevKeypress) ~=0 then
		keypress = CC.PrevKeypress
	end
    CC.PrevKeypress = keypress
    if keypress==VK_UP then
		direct=0;
		JY.WalkCount = JY.WalkCount + 1
	elseif keypress==VK_DOWN then
		direct=3;
		JY.WalkCount = JY.WalkCount + 1
	elseif keypress==VK_LEFT then
		direct=2;
		JY.WalkCount = JY.WalkCount + 1
	elseif keypress==VK_RIGHT then
		direct=1;
		JY.WalkCount = JY.WalkCount + 1
	else
		JY.WalkCount = 0
	end
	
	if ktype == 1 then
		JY.Mytick=0;
		if keypress==VK_ESCAPE then
			Cls()
			MMenu();
	--CMenu()
		elseif keypress==VK_SPACE or keypress==VK_RETURN then       --空格触发事件
			if JY.Base["人方向"]>=0 then
				local d_num=GetS(JY.SubScene,JY.Base["人X1"]+CC.DirectX[JY.Base["人方向"]+1],JY.Base["人Y1"]+CC.DirectY[JY.Base["人方向"]+1],3);
				if d_num>=0 then
					EventExecute(d_num,1);
					EventExecute(d_num,2);		--飝
				end
			end
		--无酒不欢：全套快捷键 7-30
	    elseif keypress == VK_S then	--存档
			Menu_SaveRecord()
	    elseif keypress == VK_L then	--读档
			Menu_ReadRecord()
		elseif keypress == VK_Z then	--状态
			Cls()
			Menu_Status()
			--Duiwumb()
		elseif keypress == VK_E then	--物品
			Cls()
			Menu_Thing()
		elseif keypress == VK_F3 then	--队友排位
			Cls()
			Menu_TZDY()
		elseif keypress == VK_F4 then	--整理
			Cls()		
			Menu_WPZL()
		end
	elseif ktype == 3 then
	    AutoMoveTab = {[0]=0}
	    local x0 = JY.Base["人X1"]
		local y0 = JY.Base["人Y1"]
		
		local px=x0
		local py=y0
		if CONFIG.Zoom == 100 then
			--无酒不欢：修正在地图边界自动寻路错误的问题
			px=limitX(x0,13,46)
			py=limitX(y0,13,46)
		else
			px=x0
			py=y0
		end
	
		mx = mx + (px-py)*CC.XScale - CC.ScreenW/2
		my = my + (px+py)*CC.YScale - CC.ScreenH/2
			
		local xx = (mx/CC.XScale + my/CC.YScale)/2;
		local yy = (my/CC.YScale - mx/CC.XScale)/2;
			
		if xx - math.modf(xx) > 0 then
			xx = math.modf(xx);
		end
			
		if yy - math.modf(yy) > 0 then
			yy = math.modf(yy);
		end	
		
		if CONFIG.Zoom ~= 100 then		--无酒不欢：不知道什么毛病，反正不加就是有毛病
			xx = xx + 1
			yy = yy + 1
		end

	    if xx > 0 and xx < CC.SWidth and yy > 0 and yy < CC.SHeight then
			walkto(xx - x0,yy - y0)
		end
	elseif ktype == 4 then
		JY.Mytick=0;
		Cls()
		MMenu();
		--CMenu()
    end

    if JY.Status~=GAME_SMAP then
        return ;
    end
	
	--无酒不欢：有标记事件坐标，且自动走到前面一格才会触发事件
	if CC.AutoMoveEvent[1] ~= 0 and 
	(JY.Base["人X1"] - 1 == CC.AutoMoveEvent[1] or JY.Base["人X1"] + 1 == CC.AutoMoveEvent[1] or JY.Base["人Y1"] - 1 == CC.AutoMoveEvent[2] or JY.Base["人Y1"] + 1 == CC.AutoMoveEvent[2]) then
		CC.AutoMoveEvent[0] = 1;		--鼠标操作触发事件
	end
    
    if AutoMoveTab[0] ~= 0 then			--鼠标自动走动
		if direct == -1 then
			direct = AutoMoveTab[AutoMoveTab[0]]
			AutoMoveTab[AutoMoveTab[0]] = nil
			AutoMoveTab[0] = AutoMoveTab[0] - 1
	    end
	else
	    AutoMoveTab = {[0] = 0}
		if CC.AutoMoveEvent[0] == 1 then
			EventExecute(GetS(JY.SubScene,CC.AutoMoveEvent[1],CC.AutoMoveEvent[2],3),1);
			CC.AutoMoveEvent[0] = 0;
			CC.AutoMoveEvent[1] = 0;
			CC.AutoMoveEvent[2] = 0;
		end
	end
	
    if direct ~= -1 then
        AddMyCurrentPic();
        x=JY.Base["人X1"]+CC.DirectX[direct+1];
        y=JY.Base["人Y1"]+CC.DirectY[direct+1];
        JY.Base["人方向"]=direct;
		if JY.WalkCount == 1 then
			lib.Delay(90)
		end
    else
        x=JY.Base["人X1"];
        y=JY.Base["人Y1"];
    end

    JY.MyPic=GetMyPic();
    DtoSMap();
    if SceneCanPass(x,y)==true then          --新的坐标可以走过去
        JY.Base["人X1"]=x;
        JY.Base["人Y1"]=y;
    end

    JY.Base["人X1"]=limitX(JY.Base["人X1"],1,CC.SWidth-2);
    JY.Base["人Y1"]=limitX(JY.Base["人Y1"],1,CC.SHeight-2);
    
	--一些新的事件
	NEvent(keypress)
end

--场景坐标(x,y)是否可以通过
--返回true,可以，false不能
function SceneCanPass(x,y)  --场景坐标(x,y)是否可以通过
    local ispass=true;        --是否可以通过

    if GetS(JY.SubScene,x,y,1)>0 then     --场景层1有物品，不可通过
        ispass=false;
    end

    local d_data=GetS(JY.SubScene,x,y,3);     --事件层4
    if d_data>=0 then
        if GetD(JY.SubScene,d_data,0)~=0 then  --d*数据为不能通过
            ispass=false;
        end
    end

    if CC.SceneWater[GetS(JY.SubScene,x,y,0)] ~= nil then   --水面，不可进入
        ispass=false;
    end
    return ispass;
end

function DtoSMap()          ---D*中的事件数据复制到S*中，同时处理动画效果。
    for i=0,CC.DNum-1 do
        local x=GetD(JY.SubScene,i,9);
        local y=GetD(JY.SubScene,i,10);
        if x>0 and y>0 then
            SetS(JY.SubScene,x,y,3,i);

			local p1=GetD(JY.SubScene,i,5);
			if p1>=0 then
				local p2=GetD(JY.SubScene,i,6);
				local p3=GetD(JY.SubScene,i,7);
				local delay=GetD(JY.SubScene,i,8);
				if p3<=p1 then     --动画已停止
					if JY.Mytick %100 > delay then
						p3=p3+1;
					end
				else
					if JY.Mytick % 4 ==0 then      --4个节拍动画增加一次
						p3=p3+1;
					end
				end
				if p3>p2 then
					 p3=p1;
				end
				SetD(JY.SubScene,i,7,p3);
			end
        end
    end
end


function DrawSMap()         --绘场景地图
	local x0=JY.SubSceneX+JY.Base["人X1"]-1;    --绘图中心点
    local y0=JY.SubSceneY+JY.Base["人Y1"]-1;

    local x=limitX(x0,12,45)-JY.Base["人X1"];
    local y=limitX(y0,12,45)-JY.Base["人Y1"];
	
	if CONFIG.Zoom == 100 then
		lib.DrawSMap(JY.SubScene,JY.Base["人X1"],JY.Base["人Y1"],x,y,JY.MyPic)
	else
		lib.DrawSMap(JY.SubScene,JY.Base["人X1"],JY.Base["人Y1"],JY.SubSceneX,JY.SubSceneY,JY.MyPic)
	end
end


-- 读取游戏进度
-- id=0 新进度，=1/2/3 进度
--这里是先把数据读入Byte数组中。然后定义访问相应表的方法，在访问表时直接从数组访问。
--与以前的实现相比，从文件中读取和保存到文件的时间显著加快。而且内存占用少了
function LoadRecord(id)       -- 读取游戏进度
    local zipfile=string.format('data/save/Save_%d',id)
    
    if id ~= 0 and ( existFile(zipfile) == false) then
		QZXS("此存档数据不全，不能读取。请选择其它存档或重新开始");
		return -1;
	end
    
    Byte.unzip(zipfile, 'r.grp','d.grp','s.grp')

    local t1=lib.GetTime();

    --读取R*.idx文件
    local data=Byte.create(6*4);
    Byte.loadfile(data,CC.R_IDXFilename[0],0,6*4);

	local idx={};
	idx[0]=0;
	for i =1,6 do
	    idx[i]=Byte.get32(data,4*(i-1));
	end
	
	local grpFile = 'r.grp';
	local sFile = 's.grp';
	local dFile = 'd.grp';
	if id == 0 then
		grpFile = CC.R_GRPFilename[id];
		sFile = CC.S_Filename[id];
		dFile = CC.D_Filename[id];
	end
	
    --读取R*.grp文件
    JY.Data_Base=Byte.create(idx[1]-idx[0]);              --基本数据
    Byte.loadfile(JY.Data_Base,grpFile,idx[0],idx[1]-idx[0]);

    --设置访问基本数据的方法，这样就可以用访问表的方式访问了。而不用把二进制数据转化为表。节约加载时间和空间
	local meta_t={
	    __index=function(t,k)
	        return GetDataFromStruct(JY.Data_Base,0,CC.Base_S,k);
		end,

		__newindex=function(t,k,v)
	        SetDataFromStruct(JY.Data_Base,0,CC.Base_S,k,v);
	 	end
	}
    setmetatable(JY.Base,meta_t);


    JY.PersonNum=math.floor((idx[2]-idx[1])/CC.PersonSize);   --人物

	JY.Data_Person=Byte.create(CC.PersonSize*JY.PersonNum);
	Byte.loadfile(JY.Data_Person,grpFile,idx[1],CC.PersonSize*JY.PersonNum);

	for i=0,JY.PersonNum-1 do
		JY.Person[i]={};
		local meta_t={
			__index=function(t,k)
				return GetDataFromStruct(JY.Data_Person,i*CC.PersonSize,CC.Person_S,k);
			end,

			__newindex=function(t,k,v)
				SetDataFromStruct(JY.Data_Person,i*CC.PersonSize,CC.Person_S,k,v);
			end
		}
        setmetatable(JY.Person[i],meta_t);
	end

    JY.ThingNum=math.floor((idx[3]-idx[2])/CC.ThingSize);     --物品
	JY.Data_Thing=Byte.create(CC.ThingSize*JY.ThingNum);
	Byte.loadfile(JY.Data_Thing,grpFile,idx[2],CC.ThingSize*JY.ThingNum);
	for i=0,JY.ThingNum-1 do
		JY.Thing[i]={};
		local meta_t={
			__index=function(t,k)
				return GetDataFromStruct(JY.Data_Thing,i*CC.ThingSize,CC.Thing_S,k);
			end,

			__newindex=function(t,k,v)
				SetDataFromStruct(JY.Data_Thing,i*CC.ThingSize,CC.Thing_S,k,v);
			end
		}
        setmetatable(JY.Thing[i],meta_t);
	end

    JY.SceneNum=math.floor((idx[4]-idx[3])/CC.SceneSize);     --场景
	JY.Data_Scene=Byte.create(CC.SceneSize*JY.SceneNum);
	Byte.loadfile(JY.Data_Scene,grpFile,idx[3],CC.SceneSize*JY.SceneNum);
	for i=0,JY.SceneNum-1 do
		JY.Scene[i]={};
		local meta_t={
			__index=function(t,k)
				return GetDataFromStruct(JY.Data_Scene,i*CC.SceneSize,CC.Scene_S,k);
			end,

			__newindex=function(t,k,v)
				SetDataFromStruct(JY.Data_Scene,i*CC.SceneSize,CC.Scene_S,k,v);
			end
		}
        setmetatable(JY.Scene[i],meta_t);
	end

    JY.WugongNum=math.floor((idx[5]-idx[4])/CC.WugongSize);     --武功
	JY.Data_Wugong=Byte.create(CC.WugongSize*JY.WugongNum);
	Byte.loadfile(JY.Data_Wugong,grpFile,idx[4],CC.WugongSize*JY.WugongNum);
	for i=0,JY.WugongNum-1 do
		JY.Wugong[i]={};
		local meta_t={
			__index=function(t,k)
				return GetDataFromStruct(JY.Data_Wugong,i*CC.WugongSize,CC.Wugong_S,k);
			end,

			__newindex=function(t,k,v)
				SetDataFromStruct(JY.Data_Wugong,i*CC.WugongSize,CC.Wugong_S,k,v);
			end
		}
        setmetatable(JY.Wugong[i],meta_t);
	end

    JY.ShopNum=math.floor((idx[6]-idx[5])/CC.ShopSize);     --城镇商店
	JY.Data_Shop=Byte.create(CC.ShopSize*JY.ShopNum);
	Byte.loadfile(JY.Data_Shop,grpFile,idx[5],CC.ShopSize*JY.ShopNum);
	for i=0,JY.ShopNum-1 do
		JY.Shop[i]={};
		local meta_t={
			__index=function(t,k)
				return GetDataFromStruct(JY.Data_Shop,i*CC.ShopSize,CC.Shop_S,k);
			end,

			__newindex=function(t,k,v)
				SetDataFromStruct(JY.Data_Shop,i*CC.ShopSize,CC.Shop_S,k,v);
			end
		}
        setmetatable(JY.Shop[i],meta_t);

    end

    lib.LoadSMap(sFile,CC.TempS_Filename,JY.SceneNum,CC.SWidth,CC.SHeight,dFile,CC.DNum,11);
	collectgarbage();

	lib.Debug(string.format("Loadrecord time=%d",lib.GetTime()-t1));
	
	JY.LOADTIME = lib.GetTime()
	
	for i = 1, CC.MyThingNum do
		if JY.Base["物品" .. i] < 0 then
			break;
		end
		if JY.Base["物品" .. i] == 174 then
			JY.GOLD = JY.Base["物品数量" .. i]
			break;
		end
	end
	
	--读取周目信息
	if existFile(CC.CircleFile) then
		local file = io.open(CC.CircleFile, "rb");
		local str = "";
		--Alungky 读取前须初始化周目信息
		CC.CircleNum = 1;
		while true do
		    local bytes = file:read(2)
		    if not bytes then break end
		    if bytes ~= "0A" then
		    	str = str .. bytes;
		    else
		    	--print (string.char(string.sub(str, -2)))
		    	if #str > 0 then
		    		CC.CircleNum = CC.CircleNum + 1
		    	end
		    	str = "";
		    end
		end
		file:close()
	end
	
	--预存周目信息
	if id == 0 then
		SetS(53, 0, 1, 5, CC.CircleNum);
	end
   
	os.remove('r.grp')
	os.remove('d.grp')
	os.remove('s.grp')
end

-- 写游戏进度
-- id=0 新进度，=1/2/3 进度
function SaveRecord(id)         -- 写游戏进度

	--判断是否在子场景保存
	if JY.Status == GAME_SMAP then
      JY.Base["无用"] = JY.SubScene
    else
      JY.Base["无用"] = -1
    end
	
    --读取R*.idx文件
    local t1 = lib.GetTime()
	JY.SAVETIME = lib.GetTime()
	JY.GTIME = math.modf((JY.SAVETIME - JY.LOADTIME) / 60000)
	SetS(14, 2, 1, 4, GetS(14, 2, 1, 4) + JY.GTIME)
	JY.LOADTIME = lib.GetTime()

    local data=Byte.create(6*4);
    Byte.loadfile(data,CC.R_IDXFilename[0],0,6*4);

	local idx={};
	idx[0]=0;
	for i =1,6 do
	    idx[i]=Byte.get32(data,4*(i-1));
	end

	--os.remove('r.grp');
    --写R*.grp文件
	Byte.savefile(JY.Data_Base,'r.grp',idx[0],idx[1]-idx[0]);

	Byte.savefile(JY.Data_Person,'r.grp',idx[1],CC.PersonSize*JY.PersonNum);

	Byte.savefile(JY.Data_Thing,'r.grp',idx[2],CC.ThingSize*JY.ThingNum);

	Byte.savefile(JY.Data_Scene,'r.grp',idx[3],CC.SceneSize*JY.SceneNum);

	Byte.savefile(JY.Data_Wugong,'r.grp',idx[4],CC.WugongSize*JY.WugongNum);

	Byte.savefile(JY.Data_Shop,'r.grp',idx[5],CC.ShopSize*JY.ShopNum);

    lib.SaveSMap('s.grp','d.grp');
    
    local zipfile=string.format('data/save/Save_%d',id)
    Byte.zip(zipfile, 'r.grp','d.grp','s.grp')
    os.remove('r.grp')
    os.remove('d.grp')
    os.remove('s.grp')
    lib.Debug(string.format("SaveRecord time=%d",lib.GetTime()-t1));
end

-------------------------------------------------------------------------------------
-----------------------------------通用函数-------------------------------------------

function filelength(filename)         --得到文件长度
    local inp=io.open(filename,"rb");
    local l= inp:seek("end");
	inp:close();
    return l;
end

--读S×数据, (x,y) 坐标，level 层 0-5
function GetS(id,x,y,level)       --读S×数据
	return lib.GetS(id,x,y,level);
end

--写S×
function SetS(id,x,y,level,v)       --写S×
	lib.SetS(id,x,y,level,v);
end

--读D*
--sceneid 场景编号，
--id D*编号
--要读第几个数据, 0-10
function GetD(Sceneid,id,i)          --读D*
    return lib.GetD(Sceneid,id,i);
end

--写D×
function SetD(Sceneid,id,i,v)         --写D×
	lib.SetD(Sceneid,id,i,v);
end

--从数据的结构中翻译数据
--data 二进制数组
--offset data中的偏移
--t_struct 数据的结构，在jyconst中有很多定义
--key  访问的key
function GetDataFromStruct(data,offset,t_struct,key)  --从数据的结构中翻译数据，用来取数据
    local t=t_struct[key];
	local r;
	if t[2]==0 then
		r=Byte.get16(data,t[1]+offset);
	elseif t[2]==1 then
		r=Byte.getu16(data,t[1]+offset);
	elseif t[2]==2 then
		if CC.SrcCharSet==0 then
			r=lib.CharSet(Byte.getstr(data,t[1]+offset,t[3]),0);
		else
			r=Byte.getstr(data,t[1]+offset,t[3]);
		end
	end
	return r;
end

function SetDataFromStruct(data,offset,t_struct,key,v)  --从数据的结构中翻译数据，保存数据
    local t=t_struct[key];
	if t[2]==0 then
		Byte.set16(data,t[1]+offset,v);
	elseif t[2]==1 then
		Byte.setu16(data,t[1]+offset,v);
	elseif t[2]==2 then
		local s;
		if CC.SrcCharSet==0 then
			s=lib.CharSet(v,1);
		else
			s=v;
		end
		Byte.setstr(data,t[1]+offset,t[3],s);
	end
end

--按照t_struct 定义的结构把数据从data二进制串中读到表t中
function LoadData(t,t_struct,data)        --data二进制串中读到表t中
    for k,v in pairs(t_struct) do
        if v[2]==0 then
            t[k]=Byte.get16(data,v[1]);
        elseif v[2]==1 then
            t[k]=Byte.getu16(data,v[1]);
		elseif v[2]==2 then
            if CC.SrcCharSet==0 then
                t[k]=lib.CharSet(Byte.getstr(data,v[1],v[3]),0);
		    else
		        t[k]=Byte.getstr(data,v[1],v[3]);
		    end
		end
	end
end

--按照t_struct 定义的结构把数据写入data Byte数组中。
function SaveData(t,t_struct,data)      --数据写入data Byte数组中。
    for k,v in pairs(t_struct) do
        if v[2]==0 then
            Byte.set16(data,v[1],t[k]);
		elseif v[2]==1 then
            Byte.setu16(data,v[1],t[k]);
		elseif v[2]==2 then
		    local s;
			if CC.SrcCharSet==0 then
			    s=lib.CharSet(t[k],1);
            else
			    s=t[k];
		    end
            Byte.setstr(data,v[1],v[3],s);
		end
	end
end

--限制x的范围
function limitX(x,minv,maxv)
	if x<minv then
	    x=minv;
	end
	if maxv ~= nil and x>maxv then
	    x=maxv;
	end
	return x
end

function RGB(r,g,b)          --设置颜色RGB
	return r*65536+g*256+b;
end

function GetRGB(color)      --分离颜色的RGB分量
    color=color%(65536*256);
    local r=math.floor(color/65536);
    color=color%65536;
    local g=math.floor(color/256);
    local b=color%256;
    return r,g,b
end

--等待键盘输入
function WaitKey(flag)
	--ktype  1：键盘，2：鼠标移动，3:鼠标左键，4：鼠标右键，5：鼠标中键，6：滚动上，7：滚动下
	local key, ktype, mx, my=-1,-1,-1,-1;
	while true do
		if JY.Restart == 1 then
			break
		end
		key, ktype, mx, my=lib.GetKey();
		if ktype == nil then
			ktype, mx, my=-1,-1,-1;
		end
		if ktype ~=-1 or key ~= -1 then
			if (flag == nil or flag == 0) and ktype ~= 2 then
				break;
			elseif flag ~= nil and flag ~= 0 then
				break;
			end
		end
		lib.Delay(CC.Frame/2);
	end
	return key, ktype, mx, my;
end

--绘制一个带背景的白色方框，四角凹进
function DrawBox(x1, y1, x2, y2, color)
	local s = 4
	lib.Background(x1 + 4, y1, x2 - 4, y1 + s, 88)
	lib.Background(x1 + 1, y1 + 1, x1 + s, y1 + s, 88)
	lib.Background(x2 - s, y1 + 1, x2 - 1, y1 + s, 88)
	lib.Background(x1, y1 + 4, x2, y2 - 4, 88)
	lib.Background(x1 + 1, y2 - s, x1 + s, y2 - 1, 88)
	lib.Background(x2 - s, y2 - s, x2 - 1, y2 - 1, 88)
	lib.Background(x1 + 4, y2 - s, x2 - 4, y2, 88)
	local r, g, b = GetRGB(color)
	DrawBox_1(x1 + 1, y1 + 1, x2, y2, RGB(math.modf(r / 2), math.modf(g / 2), math.modf(b / 2)))
	DrawBox_1(x1, y1, x2 - 1, y2 - 1, color)
end

--绘制一个带背景的白色方框，四角凹进
function DrawBox_1(x1, y1, x2, y2, color)
	local s = 4
	lib.DrawRect(x1 + s, y1, x2 - s, y1, color)
	lib.DrawRect(x1 + s, y2, x2 - s, y2, color)
	lib.DrawRect(x1, y1 + s, x1, y2 - s, color)
	lib.DrawRect(x2, y1 + s, x2, y2 - s, color)
	lib.DrawRect(x1 + 2, y1 + 1, x1 + s - 1, y1 + 1, color)
	lib.DrawRect(x1 + 1, y1 + 2, x1 + 1, y1 + s - 1, color)
	lib.DrawRect(x2 - s + 1, y1 + 1, x2 - 2, y1 + 1, color)
	lib.DrawRect(x2 - 1, y1 + 2, x2 - 1, y1 + s - 1, color)
	lib.DrawRect(x1 + 2, y2 - 1, x1 + s - 1, y2 - 1, color)
	lib.DrawRect(x1 + 1, y2 - s + 1, x1 + 1, y2 - 2, color)
	lib.DrawRect(x2 - s + 1, y2 - 1, x2 - 2, y2 - 1, color)
	lib.DrawRect(x2 - 1, y2 - s + 1, x2 - 1, y2 - 2, color)
end

--显示阴影字符串
function DrawString(x,y,str,color,size)         --显示阴影字符串
	if x==-1 then
		local ll=#str;
		local w=size*ll/2+2*CC.MenuBorderPixel;
		x=(CC.ScreenW-size/2*ll-2*CC.MenuBorderPixel)/2;
	end
	if y == -1 then
		y = (CC.ScreenH - size - 2 * CC.MenuBorderPixel) / 2
	end
    lib.DrawStr(x,y,str,color,size,CC.FontName,CC.SrcCharSet,CC.OSCharSet);
end

--显示带框的字符串
--(x,y) 坐标，如果都为-1,则在屏幕中间显示
function DrawStrBox(x,y,str,color,size,boxcolor)         --显示带框的字符串
    local ll=#str;
    local w=size*ll/2+2*CC.MenuBorderPixel;
	local h=size+2*CC.MenuBorderPixel;
	if boxcolor == nil then
		boxcolor = C_WHITE
	end
	if x==-1 then
        x=(CC.ScreenW-size/2*ll-2*CC.MenuBorderPixel)/2;
	end
	if y==-1 then
        y=(CC.ScreenH-size-2*CC.MenuBorderPixel)/2;
	end

    DrawBox(x,y,x+w-1,y+h-1,boxcolor);
    DrawString(x+CC.MenuBorderPixel,y+CC.MenuBorderPixel,str,color,size);
end

--无酒不欢：增加对颜色转换的支持
function DrawStrBox3(x, y, s, color, size, flag)         --显示带框的字符串
    local ll=#s -flag*2;
    local w=size*ll/2+2*CC.MenuBorderPixel;
	local h=size+2*CC.MenuBorderPixel;
	local function strcolor_switch(s)
		local Color_Switch={{"Ｒ",C_RED},{"Ｇ",C_GOLD},{"Ｂ",C_BLACK},{"Ｗ",C_WHITE},{"Ｏ",C_ORANGE}}
		local Numbers = {{"1",10},{"2",15},{"3",15},{"4",15},{"5",15},{"6",15},{"7",15},{"8",15},{"9",15},{"0",15}}
		for i = 1, 5 do
			if Color_Switch[i][1] == s then
				return 1, Color_Switch[i][2]
			end
		end
		for i = 1, 10 do
			if Numbers[i][1] == s then
				return 2, Numbers[i][2]
			end
		end
		return 0
	end
	
	if x==-1 then
        x=(CC.ScreenW-size/2*ll-2*CC.MenuBorderPixel)/2;
	end
	if y==-1 then
        y=(CC.ScreenH-size-2*CC.MenuBorderPixel)/2;
	end
	
	--无酒不欢：方框颜色 7-31
    DrawBox(x,y,x+w-1,y+h-1,LimeGreen);
	local space = 0;
	while string.len(s) >= 1 do
		local str
		str=string.sub(s,1,1)
		if string.byte(s,1,1) > 127 then		--判断单双字符
			str=string.sub(s,1,2)
			s=string.sub(s,3,-1)
		else
			str=string.sub(s,1,1)
			s=string.sub(s,2,-1)
		end
		local cs,cs2 = strcolor_switch(str)
		if cs == 1 then
			color = cs2
		elseif cs == 2 then
			DrawString(x+CC.MenuBorderPixel+space,y+CC.MenuBorderPixel,str,color,size);
			space = space + cs2;
		else
			DrawString(x+CC.MenuBorderPixel+space,y+CC.MenuBorderPixel,str,color,size);
			space = space + size;
		end
	end
end

--显示并询问Y/N，如果点击Y，则返回true, N则返回false
--(x,y) 坐标，如果都为-1,则在屏幕中间显示
--改为用菜单询问是否
function DrawStrBoxYesNo(x, y, str, color, size, boxcolor)
	if JY.Restart == 1 then
		return
	end
	lib.GetKey()
	local ll = #str
	local w = size * ll / 2 + 2 * CC.MenuBorderPixel
	local h = size + 2 * CC.MenuBorderPixel
	if x == -1 then
		x = (CC.ScreenW - size / 2 * ll - 2 * CC.MenuBorderPixel) / 2
	end
	if y == -1 then
		y = (CC.ScreenH - size - 2 * CC.MenuBorderPixel) / 2
	end
	Cls();
	DrawStrBox(x, y, str, color, size, boxcolor)
	local menu = {
	{"确定/是", nil, 1}, 
	{"取消/否", nil, 2}}
	local r = ShowMenu(menu, 2, 0, x + w - 4 * size - 2 * CC.MenuBorderPixel, y + h + CC.MenuBorderPixel, 0, 0, 1, 0, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r == 1 then
		return true
	else
		return false
	end
end

--显示字符串并等待击键，字符串带框，显示在屏幕中间
function DrawStrBoxWaitKey(s,color,size,flag,boxcolor)
	if JY.Restart == 1 then
		return
	end
    lib.GetKey();
    Cls();
	--无酒不欢：分开多种
	if flag == nil then
		if boxcolor == nil then
			DrawStrBox(-1,-1,s,color,size);
		else
			DrawStrBox(-1,-1,s,color,size,boxcolor);
		end
	else
		DrawStrBox3(-1,-1,s,color,size,flag);
	end
    ShowScreen();
	local ttt=lib.GetTime()
	repeat
	until lib.GetTime()-ttt>300		--飝
    --WaitKey();
end

--返回 [0 , i-1] 的整形随机数
function Rnd(i)           --随机数
    local r=math.random(i);
    return r-1;
end

--增加人物属性，如果有最大值限制，则应用最大值限制。最小值则限制为0
--id 人物id
--str属性字符串
--value 要增加的值，负数表示减少
--返回1,实际增加的值
--返回2，字符串：xxx 增加/减少 xxxx，用于显示药品效果
function AddPersonAttrib(id, str, value)
	local oldvalue = JY.Person[id][str]
	local attribmax = math.huge
	if str == "生命" then
		attribmax = JY.Person[id]["生命最大值"]
	elseif str == "内力" then
		attribmax = JY.Person[id]["内力最大值"]
	elseif CC.PersonAttribMax[str] ~= nil then
		attribmax = CC.PersonAttribMax[str]
	end
	
	--瑜伽密乘减少受伤最大值
	if str == "受伤程度" then
		if Curr_NG(id, 169) then
			attribmax = 60
		elseif PersonKF(id, 169) then
			attribmax = 80
		end
	end

	if str == "内力最大值" then
		local p_zz = JY.Person[id]["资质"];
		if p_zz <= 15 then
			attribmax = 5499
		elseif p_zz >= 16 and p_zz <= 30 then
			attribmax = 5000
		elseif p_zz >= 31 and p_zz <= 45 then
			attribmax = 4500
		elseif p_zz >= 46 and p_zz <= 50 then
			attribmax = 4000
		elseif p_zz >= 51 and p_zz <= 60 then
			attribmax = 3300
		elseif p_zz >= 61 and p_zz <= 75 then
			attribmax = 2700
		elseif p_zz >= 76 and p_zz <= 90 then
			attribmax = 2100
		elseif p_zz >= 91 then
			attribmax = 1500
		end
		--段誉，扫地，石破天，无崖子，上限9999
		if match_ID(id, 53) or match_ID(id, 114) or match_ID(id, 38) or match_ID(id, 116) then
			attribmax = 9999
		end
		--学一个内功开发1500内力上限
		if Num_of_Neigong(id) == 1 then
			attribmax = attribmax + 1500
		--学两个内功开发3000内力上限
		elseif Num_of_Neigong(id) == 2 then
			attribmax = attribmax + 3000
		--学两个以上内功开发4500内力上限
		elseif Num_of_Neigong(id) > 2 then
			attribmax = attribmax + 4500
		end
		if match_ID(id,75) then --东方未明每学一个内功内力上限+200
		local tg = Num_of_Neigong(id)
		attribmax = attribmax + math.modf(tg * 200)
	    end
		--学有北冥或吸星，+300
		for i = 1, CC.Kungfunum do
			if JY.Person[id]["武功" .. i] == 85 or JY.Person[id]["武功" .. i] == 88 then
				attribmax = attribmax + 300
				break
			end
		end
		--杨过吼过的内力
		if match_ID(id, 58) then
			attribmax = attribmax - JY.Person[300]["声望"] * 1000
		end
		--内力下限2999，上限9999
		if attribmax < 2999 then
			attribmax = 2999
		end
		if attribmax > 9999 then
			attribmax = 9999
		end
		attribmax = math.modf(attribmax * MPAttrib(id, 9))
	end
 
	if str == "生命最大值" then
	   if isteam(id) and id ~= 0 then
	   attribmax = math.modf((attribmax + JY.Base["天书数量"]*150)* MPAttrib(id, 8))
	   end
	   attribmax = math.modf(attribmax * MPAttrib(id, 8))
	end
 
	--程灵素，何铁手，王难姑，用毒500
	if str == "用毒能力" and (match_ID(id, 2) or match_ID(id, 83) or match_ID(id, 17)) then
		attribmax = 500
		if match_ID_awakened(id,2,1) and JY.Person[2]["论剑奖励"] == 2 then
		attribmax = 750
		end
		if match_ID_awakened(id,17,1) then
		attribmax = 750
		end
	end
	--蓝凤凰，用毒400
	if str == "用毒能力" and match_ID(id, 25) then
		attribmax = 400
	end

	if str == "品德"  then
		attribmax = 100
	end	


	
	--胡青牛，平一指，薛慕华医疗500
	if str == "医疗能力" and (match_ID(id, 16) or match_ID(id, 28) or match_ID(id, 45)) then
		attribmax = 500
		if match_ID_awakened(id,16,1) or match_ID_awakened(id,28,1) or match_ID_awakened(id,45,1) then
		attribmax = 900
		end
	end
	--贝海石，程灵素医疗400
	if str == "医疗能力" and (match_ID(id, 85) or match_ID(id, 2)) then
		attribmax = 400
		if match_ID_awakened(id,2,1) and JY.Person[2]["论剑奖励"] == 1 then
		attribmax = 750
		end
	end
	--标主医生，医疗用毒解毒都是400
	if (str == "医疗能力" or str == "用毒能力" or str == "解毒能力") and id == 0 and JY.Base["标准"] == 8 then
		attribmax = 400
	end
	--标主毒王，用毒解毒都是500
	if (str == "用毒能力" or str == "解毒能力") and id == 0 and JY.Base["标准"] == 9 then
		attribmax = 500
	end
	--阎基，医疗用毒都是300
	if (str == "医疗能力" or str == "用毒能力") and match_ID(id, 4) then
		attribmax = 300
		if match_ID_awakened(id,4,1) and JY.Person[4]["论剑奖励"] == 1 and str == "医疗能力" then
		attribmax = 750
		end
		if match_ID_awakened(id,4,1) and JY.Person[4]["论剑奖励"] == 2 and str == "用毒能力" then
		attribmax = 750
		end
	end
	if str == "用毒能力" and wglw(id, 9)>=1 then
		attribmax = attribmax + 200*wglw(id, 9)
	end
	
	if str == "实战"  then
		attribmax = 500
		if wglw(id,52)>1 then
		attribmax = 1000
		end
	end	

	if str == "生命" and JY.Status == GAME_WMAP and value<0  then
	    for i = 0, WAR.PersonNum - 1 do
		    if id == WAR.Person[i]["人物编号"] and WAR.Person[i]["护盾"]>0  then
			   if WAR.Person[i]["护盾"]+value>0   then
			      WAR.Person[i]["护盾"] = WAR.Person[i]["护盾"]+value
			      value = 0
			   else
			      value = WAR.Person[i]["护盾"]+value
				  WAR.Person[i]["护盾"] = 0
			   end
			end
	   end
	   if nglw(id,160)>=1 and Curr_NG(id,160) then
	      str = "内力"
		  value = -value
	   end
	end		
	local newvalue = limitX(oldvalue + value, 0, attribmax)
	JY.Person[id][str] = newvalue
	local add = newvalue - oldvalue
	local showstr = ""
	if add > 0 then
		showstr = string.format("%s 增加 %d", str, add)
	elseif add < 0 then
		showstr = string.format("%s 减少 %d", str, -add)
	end
	return add, showstr
end

--播放midi
function PlayMIDI(id)             --播放midi
    JY.CurrentMIDI=id;
    if JY.EnableMusic==0 then
        return ;
    end
    if id>=0 then
        lib.PlayMIDI(string.format(CC.MIDIFile,id+1));
    end
end

--播放音效atk***
function PlayWavAtk(id)             --播放音效atk***
    if JY.EnableSound==0 then
        return ;
    end
    if id>=0 then
        lib.PlayWAV(string.format(CC.ATKFile,id));
    end
end

--播放音效e**
function PlayWavE(id)              --播放音效e**
    if JY.EnableSound==0 then
        return ;
    end
    if id>=0 then
        lib.PlayWAV(string.format(CC.EFile,id));
    end
end

function PlayWavOgg(id)             --播放音效atk***
    if JY.EnableSound==0 then
        return ;
    end
    if id>=0 then
        lib.PlayWAV(string.format(CC.OGGFile,id));
    end
end

--flag =0 or nil 全部刷新屏幕
--1 考虑脏矩形的快速刷新
function ShowScreen(flag)
	if JY.Darkness == 0 then
		if flag == nil then
			flag = 0
		end
		lib.ShowSurface(flag)
	end
end

--通用菜单函数
-- menuItem 表，每项保存一个子表，内容为一个菜单项的定义
--          菜单项定义为  {   ItemName,     菜单项名称字符串
--                          ItemFunction, 菜单调用函数，如果没有则为nil
--                          Visible       是否可见  0 不可见 1 可见, 2 可见，作为当前选择项。只能有一个为2，
--                                        多了则只取第一个为2的，没有则第一个菜单项为当前选择项。
--                                        在只显示部分菜单的情况下此值无效。
--                                        此值目前只用于是否菜单缺省显示否的情况
--                       }
--          菜单调用函数说明：         itemfunction(newmenu,id)
--
--       返回值
--              0 正常返回，继续菜单循环 1 调用函数要求退出菜单，不进行菜单循环
--
-- numItem      总菜单项个数
-- numShow      显示菜单项目，如果总菜单项很多，一屏显示不下，则可以定义此值
--                =0表示显示全部菜单项

-- (x1,y1),(x2,y2)  菜单区域的左上角和右下角坐标，如果x2,y2=0,则根据字符串长度和显示菜单项自动计算x2,y2
-- isBox        是否绘制边框，0 不绘制，1 绘制。若绘制，则按照(x1,y1,x2,y2)的矩形绘制白色方框，并使方框内背景变暗
-- isEsc        Esc键是否起作用 0 不起作用，1起作用
-- Size         菜单项字体大小
-- color        正常菜单项颜色，均为RGB
-- selectColor  选中菜单项颜色,
--;
-- 返回值  0 Esc返回
--         >0 选中的菜单项(1表示第一项)
--         <0 选中的菜单项，调用函数要求退出父菜单，这个用于退出多层菜单

function ShowMenu(menuItem, numItem, numShow, x1, y1, x2, y2, isBox, isEsc, size, color, selectColor)
	local w = 0
	local h = 0
	local i = 0
	local num = 0
	local newNumItem = 0
	lib.GetKey()
	local newMenu = {}
	for i = 1, numItem do
		if menuItem[i][3] > 0 then
			newNumItem = newNumItem + 1
			newMenu[newNumItem] = {menuItem[i][1], menuItem[i][2], menuItem[i][3], i}
		end
	end
	if newNumItem == 0 then
		return 0
	end
	if numShow == 0 or newNumItem < numShow then
		num = newNumItem
	else
		num = numShow
	end
	local maxlength = 0
	if x2 == 0 and y2 == 0 then
		for i = 1, newNumItem do
		  if maxlength < string.len(newMenu[i][1]) then
			maxlength = string.len(newMenu[i][1])
		  end
		end
		w = size * maxlength / 2 + 2 * CC.MenuBorderPixel
		h = (size + CC.RowPixel) * num + CC.MenuBorderPixel
	else
		w = x2 - x1
		h = y2 - y1
	end
	local start = 1
	local current = 1
	for i = 1, newNumItem do
		if newMenu[i][3] == 2 then
		  current = i
		end
	end
	if numShow ~= 0 then
		current = 1
	end
	--无酒不欢：战斗快捷键时机判定
	local In_Battle = false;
	if JY.Status == GAME_WMAP and numItem >= 13 and menuItem[13][1] == "自动" then
		In_Battle = true
	end
	--无酒不欢：战术菜单判定
	local In_Tactics = false;
	if JY.Status == GAME_WMAP and numItem >= 3 and menuItem[3][1] == "等待" then
		In_Tactics = true
	end
	--修改战斗菜单宽度以便显示快捷键
	if In_Battle == true or In_Tactics == true then
		w = w + 15
	end
	local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)
	local returnValue = 0
	if isBox == 1 then
		DrawBox(x1, y1, x1 + (w), y1 + (h), C_WHITE)
	end
  
  
  while true do
	if JY.Restart == 1 then
		break
	end
    if num ~= 0 then
		ClsN();
		lib.LoadSur(surid, 0, 0)
	    if isBox == 1 then
	      DrawBox(x1, y1, x1 + (w), y1 + (h), C_WHITE)
	    end
  	end
	  for i = start, start + num - 1 do
	    local drawColor = color
	    if i == current then
			drawColor = selectColor
			lib.Background(x1 + CC.MenuBorderPixel, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel), x1 - CC.MenuBorderPixel + (w), y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) + size, 128, color)
	    end
	    DrawString(x1 + CC.MenuBorderPixel, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel), newMenu[i][1], drawColor, size)
		--快捷键提示显示
		if In_Battle == true then
			if newMenu[i][1] == "攻击" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "A", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "运功" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "G", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "战术" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "S", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "用毒" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "V", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "解毒" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "Q", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "医疗" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "F", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "物品" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "E", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "状态" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "Z", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "休息" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "R", LimeGreen, CC.FontSmall)
			elseif newMenu[i][2] == War_TgrtsMenu then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "T", LimeGreen, CC.FontSmall)
			end
		end
		if In_Tactics == true then
			if newMenu[i][1] == "蓄力" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "P", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "防御" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "D", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "等待" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "W", LimeGreen, CC.FontSmall)
			end
		end
	  end

		ShowScreen()

		local keyPress, ktype, mx, my = WaitKey(1)
		lib.Delay(CC.Frame)
	  
		if keyPress==VK_ESCAPE or ktype == 4 then
			--Esc 或 退出
			if isEsc==1 then
				break
				--return 0
			end
		elseif keyPress==VK_DOWN or ktype == 7 then                --Down
			current = current +1;
			if current > (start + num-1) then
				start=start+1;
			end
			if current > newNumItem then
				start=1;
				current =1;
			end
		elseif keyPress==VK_UP or ktype == 6 then                  --Up
			current = current -1;
			if current < start then
				start=start-1;
			end
			if current < 1 then
				current = newNumItem;
				start =current-num+1;
			end
		elseif keyPress == VK_RIGHT then
			current = current + 10
			if start + num - 1 < current then
				start = start + 10
			end
			if newNumItem < current +start then                --Alungky 修复看攻略时会跳出的BUG
				current = newNumItem
				start = current - num + 1
			end
		elseif keyPress == VK_LEFT then
			current = current - 10
			if current < start then
				start = start - 10
			end
			if current < 1 then
				start = 1
				current = 1
			elseif current < num then                --Alungky 修复看攻略时会跳出的BUG
				start = 1
			end
		--无酒不欢：战斗快捷键
		--攻击
		elseif In_Battle == true and keyPress == VK_A and menuItem[2][3] == 1 then
			local r=War_FightMenu();
			if r==1 then
			returnValue= -2;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--1-9直接攻击
		elseif In_Battle == true and (keyPress >= 49 and keyPress <= 57) and menuItem[2][3] == 1 then
			local r=War_FightMenu(nil, nil, keyPress-48);
			if r==1 then
			returnValue= -2;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--运功
		elseif In_Battle == true and keyPress == VK_G then
			local r=War_YunGongMenu();
			if r==20 then
				returnValue= 20;
				break;
			elseif r==10 then
				returnValue= 10;
				break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--战术
		elseif In_Battle == true and keyPress == VK_S then
			local r=War_TacticsMenu();
			if r==1 then
			returnValue= -4;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--用毒
		elseif In_Battle == true and keyPress == VK_V and menuItem[5][3] == 1 then
			local r=War_PoisonMenu();
			if r==1 then
			returnValue= -5;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--解毒
		elseif In_Battle == true and keyPress == VK_Q and menuItem[6][3] == 1 then
			local r=War_DecPoisonMenu();
			if r==1 then
			returnValue= -6;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--医疗
		elseif In_Battle == true and keyPress == VK_F and menuItem[7][3] == 1 then
			local r=War_DoctorMenu();
			if r==1 then
			returnValue= -7;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--物品
		elseif In_Battle == true and keyPress == VK_E and menuItem[8][3] == 1 then
			local r=War_ThingMenu();
			if r==1 then
			returnValue= -8;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--状态
		elseif In_Battle == true and keyPress == VK_Z then
			local r=War_StatusMenu();
			if r==1 then
			returnValue= -9;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--休息
		elseif In_Battle == true and keyPress == VK_R then
			local r=War_RestMenu();
			if r==1 then
			returnValue= -10;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--特色指令
		elseif In_Battle == true and keyPress == VK_T and menuItem[11][3] == 1 then
			local r=War_TgrtsMenu();
			if r==1 then
			returnValue= -11;
			break;
			end
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--C查看
		elseif In_Battle == true and keyPress == VK_C then
			local r=MapWatch();
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--蓄力
		elseif (In_Battle == true or In_Tactics == true) and keyPress == VK_P then
			local r=War_ActupMenu();
			if In_Battle == true then
				returnValue = -4;
			else	
				returnValue = 4;
			end
			break;
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--防御
		elseif (In_Battle == true or In_Tactics == true) and keyPress == VK_D then
			local r=War_DefupMenu();
			if In_Battle == true then
				returnValue = -4;
			else
				returnValue = 4;
			end
			break;
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--等待
		elseif (In_Battle == true or In_Tactics == true) and keyPress == VK_W then
			local r=War_Wait();
			if In_Battle == true then
				returnValue = -4;
			else
				returnValue = 4;
			end
			break;
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		else
			local mk = false;
			if ktype == 2 or ktype == 3 then			--选中
				if mx >= x1 and mx <= x1 + w and my >= y1 and my <= y1 + h then
					current = start + math.modf((my - y1 - CC.MenuBorderPixel) / (size + CC.RowPixel))
					mk = true;
				end
			end
			--选中确认
			if  keyPress==VK_SPACE or keyPress==VK_RETURN or ktype == 5 or (ktype == 3 and mk) then
				if newMenu[current][2]==nil then
					returnValue=newMenu[current][4];
					break;
				elseif newMenu[current][2] == SelectNeiGongMenu then
					local id = WAR.Person[WAR.CurID]["人物编号"]
					--运功内力不足
					if JY.Person[id]["内力"] < 2000 then
						DrawStrBoxWaitKey("内力不足，无法运功",C_RED,CC.DefaultFont,nil,LimeGreen)
					--运功体力不足
					elseif JY.Person[id]["体力"] < 20 then
						DrawStrBoxWaitKey("体力不足，无法运功",C_RED,CC.DefaultFont,nil,LimeGreen)
					else
						local r=newMenu[current][2](newMenu,current); 
						--连续两级菜单全部返回20作为判定参数
						if r == 20 then
							returnValue= 20; 
							break;
						end
						ClsN();
						lib.LoadSur(surid,0,0);
						if isBox==1 then
							DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
						end
					end
				elseif newMenu[current][2] == SelectQingGongMenu then
					local id = WAR.Person[WAR.CurID]["人物编号"]
					--运功体力不足
					if JY.Person[id]["体力"] < 20 then
						DrawStrBoxWaitKey("体力不足，无法运功",M_DeepSkyBlue,CC.DefaultFont,nil,LimeGreen)
					else
						local r=newMenu[current][2](newMenu,current); 
						if r == 10 then
							returnValue= 10; 
							break;
						end
						ClsN();
						lib.LoadSur(surid,0,0);
						if isBox==1 then
							DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
						end
					end
				else
					local r=newMenu[current][2](newMenu,current);               --调用菜单函数
			
					--无酒不欢：重写一下这里的返回逻辑以适应运功
					if r==1 then
						returnValue= -newMenu[current][4];
						break;
					--连续两级菜单全部返回20作为判定参数
					elseif In_Battle == true and r == 20 then	
						returnValue= 20;
						break;
					elseif In_Battle == true and r == 10 then	
						returnValue= 10;
						break;
					end			
					ClsN();
					lib.LoadSur(surid,0,0);
					if isBox==1 then
						DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
					end
				end
			end		
		end
	end
	lib.FreeSur(surid)
	return returnValue
end

--基本参数和ShowMenu一样，有一些特别的进行着重说明
--menu 每个数据三个值，1名称，2执行函数，3显示方式(0灰色可选择，1正常显示，2不显示, 3灰色不可选择)
--itemNum 菜单的个数，通常在调用的时候 #menu就可以了
--numShow 每行显示的菜单个数
--showRow 一个版面显示的最大行数，如果可显示菜单个数达不到一个版面的数，函数会自动适应这个值
--str 是标题的文字，传nil不显示
--选中项
function ShowMenu2(menu,itemNum,numShow,showRow,x1,y1,x2,y2,isBox,isEsc,size,color,selectColor, str, selIndex)     --通用菜单函数
    local w=0;
    local h=0;   --边框的宽高
    local i,j=0,0;
    local col=0;     --实际的显示菜单项
    local row=0;
    
    lib.GetKey();
    Cls();
    
    --建一个新的table
    local menuItem = {};
    local numItem = 0;                --显示的总数
    
    --把可显示的部分放到新table
    for i,v in pairs(menu) do
		if v[3] ~= 2 then
			numItem = numItem + 1;
			menuItem[numItem] = {v[1],v[2],v[3],i};                --注意第4个位置，保存i的值
		end
    end
    
    --计算实际显示的菜单项数
    if numShow==0 or numShow > numItem then
        col=numItem;
        row = 1;
    else
        col=numShow;
        row = math.modf((numItem-1)/col);
    end
    
    if showRow > row + 1 then
		showRow = row + 1;
    end

    --计算边框实际宽高
    local maxlength=0;
    if x2==0 and y2==0 then
        for i=1,numItem do
            if string.len(menuItem[i][1])>maxlength then
                maxlength=string.len(menuItem[i][1]);
            end
        end
		w=(size*maxlength/2+CC.RowPixel)*col+2*CC.MenuBorderPixel;
		h=showRow*(size+CC.RowPixel) + 2*CC.MenuBorderPixel;
    else
        w=x2-x1;
        h=y2-y1;
    end
    
    if x1 == -1 then
    	x1 = (CC.ScreenW-w)/2;
    end
    if y1 == -1 then
    	y1 = (CC.ScreenH-h+size)/2;
    end

    local start=0;             --显示的第一项

    local curx = 1;          --当前选择项
    local cury = 0;
    local current = curx + cury*numShow;
    
    --默认有选中
    if selIndex ~= nil and selIndex > 0 then
    	current = selIndex;
    	curx = math.fmod((selIndex-1),numShow) + 1;
    	cury = (selIndex - curx)/numShow;
    	if cury >= showRow/2 then
			start = limitX(cury-showRow/2,0,row-showRow+1);
		end
    end
    
    local returnValue =0;
    if str ~= nil then
		DrawStrBox(-1, y1 - size - 2*CC.MenuBorderPixel, str, color, size)
    end
    local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)
	if isBox==1 then
		DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
	end
	while true do
		if JY.Restart == 1 then
			break
		end
		if col ~= 0 then
			lib.LoadSur(surid, 0, 0)
			if isBox == 1 then
				DrawBox(x1, y1, x1 + (w), y1 + (h), C_WHITE)
			end
		end
        for i=start,showRow+start-1 do
			for j=1, col do
				local n = i*col+j;
				if n > numItem then
					break;
				end
				local drawColor=color;           --设置不同的绘制颜色
				if menuItem[n][3] == 0 or menuItem[n][3] == 3 then
					drawColor = M_DimGray
				end
				local xx = x1+(j-1)*(size*maxlength/2+CC.RowPixel) + CC.MenuBorderPixel
				local yy = y1+(i-start)*(size+CC.RowPixel) + CC.MenuBorderPixel
				if n==current then
					drawColor=selectColor;
					lib.Background(xx, yy, xx + size*maxlength/2, yy + size, 128, color)
				end
				DrawString(xx,yy,menuItem[n][1],drawColor,size);
			end
		end
		ShowScreen();
		local keyPress, ktype, mx, my = WaitKey(1)
		lib.Delay(CC.Frame);

		if keyPress==VK_ESCAPE or ktype == 4 then                  --Esc 退出
			if isEsc==1 then
				break;
			end
		elseif keyPress==VK_DOWN or ktype == 7 then                --Down
			if curx + (cury+1)*col <= numItem then
				cury = cury + 1;
				if cury > row then
					cury = row;
				elseif cury >= showRow/2 and cury <= row - showRow/2 + 1 and start <= row-showRow  then
					start = start + 1;
				end
			end
		elseif keyPress==VK_UP or ktype == 6 then                  --Up
			cury = cury -1;
			if cury < 0 then
				cury = 0;
			elseif cury >= showRow/2-1 and cury < row - showRow/2 and start > 0 then
				start = start - 1;
			end
		elseif keyPress==VK_RIGHT then                --RIGHT
			curx = curx +1;
			if curx > col then
				curx = 1;
			elseif curx + cury*col > numItem then
				curx = 1;
			end
		elseif keyPress==VK_LEFT then                  --LEFT
			curx = curx -1;
			if curx < 1 then
				curx = col;
				if curx + cury*col > numItem then
					curx = numItem - cury*col;
				end
			end
		else
			local mk = false;
			if ktype == 2 or ktype == 3 then			--选中
				--无酒不欢：加个逻辑判定防止跳出
				local re1, re2 = curx, cury;
				if mx >= x1 and mx <= x1 + w and my >= y1 and my <= y1 + h then
					curx = math.modf((mx-x1-CC.MenuBorderPixel)/(size*maxlength/2+CC.RowPixel)) + 1
					cury = start + math.modf((my - y1 - CC.MenuBorderPixel) / (size + CC.RowPixel))
					mk = true;
				end
				if (curx + cury*col) > #menuItem then
					curx = re1
					cury = re2
					mk = false;
				end
			end
		
			if keyPress==VK_SPACE or keyPress==VK_RETURN or ktype == 5 or (ktype == 3 and mk) then
				current = curx + cury*col;
				if menuItem[current][3]==3 then
                              
				elseif menuItem[current][2]==nil then
					returnValue=current;
					break;
				else
					local r=menuItem[current][2](menuItem,current);               --调用菜单函数
					if r==1 then
						returnValue= -current;
						break;
					else
						lib.LoadSur(surid, 0, 0)
						if isBox==1 then
							DrawBox(x1, y1, x1 + (w), y1 + (h), C_WHITE)
						end
					end
				end
			end
		end 
		current = curx + cury*col;
    end
	lib.FreeSur(surid)
        
	--返回值，这个是取第4个位置的值
	if returnValue > 0 then
		return menuItem[returnValue][4]
	else
		return returnValue
	end
end

------------------------------------------------------------------------------------
--------------------------------------物品使用---------------------------------------
--物品使用模块
--当前物品id
--返回1 使用了物品， 0 没有使用物品。可能是某些原因不能使用
function UseThing(id)
	return DefaultUseThing(id);
end

--缺省物品使用函数，实现原始游戏效果
--id 物品id
function DefaultUseThing(id)                --缺省物品使用函数
    if JY.Thing[id]["类型"]==0 then
        return UseThing_Type0(id);
    elseif JY.Thing[id]["类型"]==1 then
        return UseThing_Type1(id);
    elseif JY.Thing[id]["类型"]==2 then
        return UseThing_Type2(id);
    elseif JY.Thing[id]["类型"]==3 then
        return UseThing_Type3(id);
    elseif JY.Thing[id]["类型"]==4 then
        return UseThing_Type4(id);
    end
end

--剧情物品，触发事件
function UseThing_Type0(id)
	--合并九阴
	if id == 286 then
		local jyzj = 0
		for j=1, CC.MyThingNum do
			if JY.Base["物品" .. j] == 287 then
				jyzj = 1;
				break;
			end
		end
		if jyzj == 1 then
			instruct_2(286,-1)
			instruct_2(287,-1)
			instruct_2(84,1)
		end
		return 0;
	end
	if id == 287 then
		local jyzj = 0
		for j=1, CC.MyThingNum do
			if JY.Base["物品" .. j] == 286 then
				jyzj = 1;
				break;
			end
		end
		if jyzj == 1 then
			instruct_2(286,-1)
			instruct_2(287,-1)
			instruct_2(84,1)
		end
		return 0;
	end
    if JY.SubScene>=0 then
		local x=JY.Base["人X1"]+CC.DirectX[JY.Base["人方向"]+1];
		local y=JY.Base["人Y1"]+CC.DirectY[JY.Base["人方向"]+1];
        local d_num=GetS(JY.SubScene,x,y,3)
        if d_num>=0 then
            JY.CurrentThing=id;
            EventExecute(d_num,2);       --物品触发事件
            JY.CurrentThing=-1;
			return 1;
		else
		    return 0;
        end
    end
end


--判断一个人是否可以装备或修炼一个物品
--返回 true可以修炼，false不可
function CanUseThing(id, personid)
	local str = ""
	--王语嫣，随便修炼秘籍
	if match_ID(personid, 76) and JY.Thing[id]["类型"] == 2 then
		return true
	--畅想可用专属物品
	elseif JY.Thing[id]["仅修炼人物"] >= 0 and personid == 0 and JY.Thing[id]["仅修炼人物"] == JY.Base["畅想"] then
		return true
	--主角学圣火
	elseif id == 70 and (personid == 0 or MPPD(personid)== 5) then
		return true
	elseif id == 114 and (personid == 0 or JY.Base["标准"] == 3) then --剑主可学独孤九剑
		return true
	--阿朱穿装备
	elseif match_ID(personid, 104) and JY.Thing[id]["装备类型"] >= 0 then
		return true
	--陈近南无视御剑属性
	elseif match_ID(personid, 655) and JY.Thing[id]["装备类型"] >= 0 and JY.Thing[id]["需御剑能力"]>0 then
		return true
	--方证学金刚不坏体
	elseif match_ID(personid, 149) and id == 265 then
		return true
	elseif MPPD(personid, 2) and id == 295 then
		return true
	else
		if JY.Thing[id]["仅修炼人物"] >= 0 and JY.Thing[id]["仅修炼人物"] ~= personid then
			return false
		end
		if JY.Thing[id]["需内力性质"] ~= 2 and JY.Person[personid]["内力性质"] ~= 2 and JY.Thing[id]["需内力性质"] ~= JY.Person[personid]["内力性质"] then
			local cond = 1
			--天内可以无视阴阳学习
			if JY.Thing[id]["练出武功"] == JY.Person[personid]["天赋内功"] then
				cond = 2
			--主角学降龙无视内力
			elseif id == 86 and personid == 0 then
				cond = 2
			elseif (id == 141 and wglw(personid,35)>2 and PersonKF(personid, 35)) or (id == 126 and wglw(personid,61)>2 and PersonKF(personid, 61)) then	
				cond = 2
			end
			--天外也可以无视阴阳学习
			for i = 1, 4 do
				if JY.Thing[id]["练出武功"] == JY.Person[personid]["天赋外功"..i] then
					cond = 2
					break
				end
			end
			if cond == 1 then
				return false
			end
		end
		if JY.Person[personid]["内力最大值"] < JY.Thing[id]["需内力"] then
			return false
		end
		if JY.Person[personid]["攻击力"] < JY.Thing[id]["需攻击力"] then
			return false
		end
		if JY.Person[personid]["轻功"] < JY.Thing[id]["需轻功"] then
			return false
		end
		if JY.Person[personid]["用毒能力"] < JY.Thing[id]["需用毒能力"] then
			return false
		end
		if JY.Person[personid]["医疗能力"] < JY.Thing[id]["需医疗能力"] then
			return false
		end
		if JY.Person[personid]["解毒能力"] < JY.Thing[id]["需解毒能力"] then
			return false
		end

		--学有小无相功，兵器值视作+10点
		local lv = 0;
		if PersonKF(personid, 98) then
			lv = 10
		end
		
		--主角和飞飞学苗剑，需求-40（即为60）
		if id == 117 and (personid == 0 or personid == 92) and PersonKF(personid, 67) then
			lv = lv + 40
		end
		
		if id == 141 and wglw(personid,35)>2 and PersonKF(personid, 35) then
			lv = lv + 70
		end
	
		if id == 126 and wglw(personid,61)>2 and PersonKF(personid, 61) then
			lv = lv + 50
		end
	
		--主角和飞飞学胡刀，需求-80（即为60）
		if id == 136 and (personid == 0 or personid == 92) and PersonKF(personid, 44) then
			lv = lv + 80
		end
		
		if JY.Thing[id]["需拳掌功夫"]>0 and PersonKF(personid,184) then
		   lv = lv + 20
		end
		
		--桃花绝技，学习其中之一后，剩下两个的需求减少-10，可叠加
		if id == 95 or id == 101 or id == 123 then
			for i = 1, CC.Kungfunum do
				if JY.Person[personid]["武功" .. i] == 12 or JY.Person[personid]["武功" .. i] == 18 or JY.Person[personid]["武功" .. i] == 38 then
					lv = lv + 10
				end
			end
		end
		
		if JY.Person[personid]["拳掌功夫"] + lv < JY.Thing[id]["需拳掌功夫"] then
			return false
		end
		if JY.Person[personid]["指法技巧"] + lv < JY.Thing[id]["需指法技巧"] then
			return false
		end
		if JY.Person[personid]["御剑能力"] + lv  < JY.Thing[id]["需御剑能力"] then
			return false
		end
		if JY.Person[personid]["耍刀技巧"] + lv  < JY.Thing[id]["需耍刀技巧"] then
			return false
		end
		if JY.Person[personid]["特殊兵器"] + lv < JY.Thing[id]["需特殊兵器"] then
			return false
		end
		
		if JY.Person[personid]["暗器技巧"] < JY.Thing[id]["需暗器技巧"] then
			return false
		end

		if JY.Thing[id]["需资质"] >= 0 then
			if JY.Thing[id]["需资质"] > JY.Person[personid]["资质"] then
				return false;
			end
		else
			if -JY.Thing[id]["需资质"] < JY.Person[personid]["资质"] then
				return false;
			end 
		end
	end
	  
	--斗转限制
	if id == 118 then
		local R = JY.Person[personid]
		local wp = R["拳掌功夫"] + R["指法技巧"] + R["御剑能力"] + R["耍刀技巧"] + R["特殊兵器"]
		if wp < 120 then
			return false
		end
	end
	--阴阳限制
	if id == 176 then
		local R = JY.Person[personid]
		if R["御剑能力"] >= 70 then
			return true
		elseif R["耍刀技巧"] >= 70 then
			return true
		elseif R["特殊兵器"] >= 70 then
			return true
		else
			return false
		end
	end
	return true
end

--药品使用实际效果
--id 物品id，
--personid 使用人id
--返回值：0 使用没有效果，物品数量应该不变。1 使用有效果，则使用后物品数量应该-1
function UseThingEffect(id, personid, amount)
	--无使用数量则默认为使用1个
	if amount == nil then
		amount = 1
	end
	local str = {}
	str[0] = string.format("使用 %s × %d", JY.Thing[id]["名称"], amount)
	local strnum = 1
	local addvalue = nil
	if JY.Thing[id]["加生命"] > 0 then
		local add = JY.Thing[id]["加生命"] - math.modf(JY.Thing[id]["加生命"] * JY.Person[personid]["受伤程度"] / 200) + Rnd(5)
		--胡青牛在队，吃药效果为1.3倍
		if JY.Status == GAME_WMAP and inteam(personid) and (inteam(16) or JY.Base["畅想"] == 16) then
			for w = 0, WAR.PersonNum - 1 do
				if match_ID(WAR.Person[w]["人物编号"], 16) and WAR.Person[w]["死亡"] == false and WAR.Person[w]["我方"] then
					add = math.modf(add * 1.3)
					break;
				end
			end
		end
		if add <= 0 then
			add = 5 + Rnd(5)
		end

		add = math.modf(add)
		
		--洪安通，敌人吃药不加血反而减血
		if JY.Status == GAME_WMAP then
			for w = 0, WAR.PersonNum - 1 do
				if match_ID(WAR.Person[w]["人物编号"], 71) and WAR.Person[w]["死亡"] == false and WAR.Person[w]["我方"] ~= WAR.Person[WAR.CurID]["我方"] then
					add = -add
					break;
				end
			end
		end
		
		if JY.Status == GAME_WMAP then	
		if WAR.YZSG[id] ~= nil then
		   add = -add
		end
		end
		
		--敌人吃药效果加倍
		if not inteam(personid) then
			add = add * 2;
		end
		
		if JY.Status == GAME_WMAP then
			WAR.Person[WAR.CurID]["内伤点数"] = AddPersonAttrib(personid, "受伤程度", -math.modf(add / 8))
		end

		addvalue, str[strnum] = AddPersonAttrib(personid, "生命", add*amount)
		
		--蓝烟清：显示生命点数
		if JY.Status == GAME_WMAP then
			WAR.Person[WAR.CurID]["生命点数"] = addvalue;
		end
		if addvalue ~= 0 then
			strnum = strnum + 1
		end
	end
  
	local function ThingAddAttrib(s)
		if JY.Thing[id]["加" .. s] ~= 0 then
		    local add2 = JY.Thing[id]["加" .. s]
			if JY.Status == GAME_WMAP then
		    if WAR.YZSG[id]~=nil then
		      add2 = -add2
		    end
			end
			addvalue, str[strnum] = AddPersonAttrib(personid, s, add2*amount)
			if addvalue ~= 0 then
			strnum = strnum + 1
			end
			--蓝烟清：显示体力，内力点数
			if JY.Status == GAME_WMAP then
				if s == "体力" then
					WAR.Person[WAR.CurID]["体力点数"] = addvalue;
				elseif s == "内力" then
					WAR.Person[WAR.CurID]["内力点数"] = addvalue;
				end
			end
		end
	end
  
	ThingAddAttrib("生命最大值")
  
	if JY.Thing[id]["加中毒解毒"] < 0 then
	    local aa = math.modf(JY.Thing[id]["加中毒解毒"] / 2)
		if JY.Status == GAME_WMAP then
		   if WAR.YZSG[personid]~=nil then
		      aa = -aa
		   end
		   if WAR.POISON2[personid]~=nil then
			  AddPersonAttrib(personid, "生命", -aa*amount*50)
			  aa = 0
		   end
		end
		addvalue, str[strnum] = AddPersonAttrib(personid, "中毒程度", aa*amount)
		if addvalue ~= 0 then
			strnum = strnum + 1
		end
		--蓝烟清：显示中解毒点数
		if JY.Status == GAME_WMAP then
			if addvalue < 0 then
				WAR.Person[WAR.CurID]["解毒点数"] = -addvalue;
			elseif addvalue > 0 then
				WAR.Person[WAR.CurID]["中毒点数"] = addvalue;
			end
		end
	end
	  
	ThingAddAttrib("体力")
  
	if JY.Thing[id]["改变内力性质"] == 2 then
		str[strnum] = "内力门路改为阴阳合一"
		strnum = strnum + 1
	end

	ThingAddAttrib("内力")
	ThingAddAttrib("内力最大值")
	ThingAddAttrib("攻击力")
	ThingAddAttrib("防御力")
	ThingAddAttrib("轻功")
	ThingAddAttrib("医疗能力")
	ThingAddAttrib("用毒能力")
	ThingAddAttrib("解毒能力")
	ThingAddAttrib("抗毒能力")
	ThingAddAttrib("拳掌功夫")
	ThingAddAttrib("御剑能力")
	ThingAddAttrib("耍刀技巧")
	ThingAddAttrib("特殊兵器")
	ThingAddAttrib("暗器技巧")
	ThingAddAttrib("武学常识")
	ThingAddAttrib("攻击带毒")
  
	Cls()
	
	if strnum > 1 then
		local maxlength = 0
		for i = 0, strnum-1 do
			if maxlength < #str[i] then
				maxlength = #str[i]
			end
		end
		
		if JY.Status ~= GAME_WMAP then
			local ww = maxlength * CC.DefaultFont / 2 + CC.MenuBorderPixel * 2
			local hh = (strnum) * CC.DefaultFont + (strnum - 1) * CC.RowPixel + 2 * CC.MenuBorderPixel
			local x = (CC.ScreenW - ww) / 2
			local y = (CC.ScreenH - hh) / 2
			DrawBox(x, y, x + ww, y + hh, C_WHITE)
			DrawString(x + CC.MenuBorderPixel, y + CC.MenuBorderPixel, str[0], C_WHITE, CC.DefaultFont)
			for i = 1, strnum - 1 do
			  DrawString(x + CC.MenuBorderPixel, y + CC.MenuBorderPixel + (CC.DefaultFont + CC.RowPixel) * i, str[i], C_ORANGE, CC.DefaultFont)
			end
			ShowScreen()
		else
			--显示使用物品文字
			DrawString(CC.MainMenuX, CC.ScreenH-(strnum+2)*CC.Fontsmall, JY.Person[WAR.Person[WAR.CurID]["人物编号"]]["姓名"].." "..str[0], C_WHITE, CC.Fontsmall);
			for i=1, strnum-1 do 
				DrawString(CC.MainMenuX, CC.ScreenH + (i-strnum-2)*CC.Fontsmall, str[i], C_WHITE, CC.Fontsmall);
			end
			
			ShowScreen()
			--显示点数
			War_Show_Count(WAR.CurID);
			return 1;
		end
		return 1
	else
		DrawStrBox(-1, -1, str[0], C_WHITE, CC.DefaultFont)
		ShowScreen()
		return 1
	end
end

--装备物品
function UseThing_Type1(id)
	DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, string.format("谁要配备%s?", JY.Thing[id]["名称"]), C_WHITE, CC.DefaultFont)
	local nexty = CC.MainSubMenuY + CC.SingleLineHeight
	local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
	local pp1, pp2 = 0, 0
	if r > 0 then
		local personid = JY.Base["队伍" .. r]
		--田归农装闯王军刀
		if id == 202 and match_ID(personid, 72) then
			say("嘿嘿，这口宝刀本来就是田掌门的兵器，谁说耍刀不够就装不了？",72,0)
			if JY.Thing[id]["使用人"] >= 0 then
								
				JY.Person[JY.Thing[id]["使用人"]]["武器"] = -1
			end
			if JY.Person[personid]["武器"] >= 0 then
				JY.Thing[JY.Person[personid]["武器"]]["使用人"] = -1
			end
			JY.Person[personid]["武器"] = id
			JY.Thing[id]["使用人"] = personid
			return 1
		end
		
		if CanUseThing(id, personid) then
			if JY.Thing[id]["装备类型"] == 0 then
				if JY.Thing[id]["使用人"] >= 0 then
					
					JY.Person[JY.Thing[id]["使用人"]]["武器"] = -1
				end
				if JY.Person[personid]["武器"] >= 0 then
					JY.Thing[JY.Person[personid]["武器"]]["使用人"] = -1
				end
				JY.Person[personid]["武器"] = id
			
			elseif JY.Thing[id]["装备类型"] == 1 then
				if JY.Thing[id]["使用人"] >= 0 then
					
					JY.Person[JY.Thing[id]["使用人"]]["防具"] = -1
				end
				if JY.Person[personid]["防具"] >= 0 then
					JY.Thing[JY.Person[personid]["防具"]]["使用人"] = -1
				end
				JY.Person[personid]["防具"] = id
			elseif JY.Thing[id]["装备类型"] == 2 then
				if JY.Thing[id]["使用人"] >= 0 then
					
					JY.Person[JY.Thing[id]["使用人"]]["坐骑"] = -1
				end
				if JY.Person[personid]["坐骑"] >= 0 then
					JY.Thing[JY.Person[personid]["坐骑"]]["使用人"] = -1
				end
				JY.Person[personid]["坐骑"] = id
			elseif JY.Thing[id]["装备类型"] == 3 then
				if JY.Thing[id]["使用人"] >= 0 then
					
					JY.Person[JY.Thing[id]["使用人"]]["饰品"] = -1
				end
				if JY.Person[personid]["饰品"] >= 0 then
					JY.Thing[JY.Person[personid]["饰品"]]["使用人"] = -1
				end
				JY.Person[personid]["饰品"] = id				
			end
			JY.Thing[id]["使用人"] = personid
		else
			DrawStrBoxWaitKey("此人不适合配备此物品", C_WHITE, CC.DefaultFont)
			return 0
		end
	end
	return 1
end
--秘籍物品使用
function UseThing_Type2(id)
	if JY.Thing[id]["使用人"] >= 0 and DrawStrBoxYesNo(-1, -1, "此物品已经有人修炼，是否换人修炼?", C_WHITE, CC.DefaultFont) == false then
		Cls(CC.MainSubMenuX, CC.MainSubMenuY, CC.ScreenW, CC.ScreenH)
		ShowScreen()
		return 0
	end
	Cls()
	DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, string.format("谁要修炼%s?", JY.Thing[id]["名称"]), C_WHITE, CC.DefaultFont)
	local nexty = CC.MainSubMenuY + CC.SingleLineHeight
	local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
	if r > 0 then
		local personid = JY.Base["队伍" .. r]
		local yes, full = nil, nil
		if JY.Thing[id]["练出武功"] >= 0 then
			yes = 0
			full = 1
			for i = 1, CC.Kungfunum do
				if JY.Person[personid]["武功" .. i] == JY.Thing[id]["练出武功"] then
					yes = 1
				else
					if JY.Person[personid]["武功" .. i] == 0 then
						full = 0
					end
				end
			end
		end
		
		--纯阳一脉相承九阳，面板有纯阳的可以无条件学九阳
		if id == 83 then
			if PersonKF(personid, 99) and PersonKF(personid, 106) == false then
				if DrawStrBoxYesNo(-1, -1, "纯阳九阳，一脉相承，是否将武功洗为九阳神功?", C_WHITE, CC.DefaultFont) then
					for i = 1, CC.Kungfunum do
						if JY.Person[personid]["武功" .. i] == 99 then
							JY.Person[personid]["武功" .. i] = 106
							JY.Person[personid]["武功等级" .. i] = 50
							if JY.Person[personid]["天赋内功"] == 99 then
								JY.Person[personid]["天赋内功"] = 106
							end
							yes = 2
							break
						end
					end
				end
			end
		end
    
		--如果已经满武功并且选择的武功没有学会，则不可装备修炼
		if yes == 0 and full == 1 then
			DrawStrBoxWaitKey("一个人只能修炼12种武功", C_WHITE, CC.DefaultFont)
			return 0
		end
    
		--葵花宝典
		if CC.Shemale[id] == 1 then
			--剑神可以直接学
			if personid == 0 and JY.Base["标准"] == 3 then
				say("嗯……我看看，这套武功的精妙之处其实不在于是否自宫。看我如何以剑入道克服这个问题！",0,1)
				yes = 2
			elseif match_ID_awakened(personid,38,2) then
				say("嗯……我看看，这套武功的精妙之处其实不在于是否自宫。看我如何以剑入道克服这个问题！",0,1)
				yes = 2
			--主角打赢葵花尊者，可以直接学
			elseif personid == 0 and JY.Person[27]["品德"] == 10 then
				yes = 2
			elseif personid == 0 and JY.Person[27]["品德"] == 15  and PersonKF(personid,108) then
				yes = 2
			elseif personid == 0 and JY.Person[27]["品德"] == 20  and PersonKF(personid,108) and nglw(personid,105)>0 then
				yes = 2
			elseif JY.Person[personid]["性别"] == 0 and CanUseThing(id, personid) then
				Cls(CC.MainSubMenuX, CC.MainSubMenuY, CC.ScreenW, CC.ScreenH)
				if DrawStrBoxYesNo(-1, -1, "修炼此书必须先挥刀自宫，是否仍要修炼?", C_WHITE, CC.DefaultFont) == false then
					return 0
				else
					lib.FillColor(0, 0, CC.ScreenW, CC.ScreenH, C_RED, 128)
					ShowScreen()
					lib.Delay(80)
					lib.ShowSlow(15, 1)
					Cls()
					lib.ShowSlow(50, 0)
					JY.Person[personid]["性别"] = 2
					local add, str = AddPersonAttrib(personid, "攻击力", -15)
					DrawStrBoxWaitKey(JY.Person[personid]["姓名"] .. str, C_ORANGE, CC.DefaultFont)
					add, str = AddPersonAttrib(personid, "防御力", -25)
					DrawStrBoxWaitKey(JY.Person[personid]["姓名"] .. str, C_ORANGE, CC.DefaultFont)
				  end
			elseif JY.Person[personid]["性别"] == 1 then
				DrawStrBoxWaitKey("此人不适合修炼此物品", C_WHITE, CC.DefaultFont)
				return 0
			end
		end
		
		if yes == 1 or CanUseThing(id, personid) or yes == 2 then
			if JY.Thing[id]["使用人"] == personid then
				return 0
			end
			if JY.Person[personid]["修炼物品"] >= 0 then
				JY.Thing[JY.Person[personid]["修炼物品"]]["使用人"] = -1
			end
			if JY.Thing[id]["使用人"] >= 0 then
				JY.Person[JY.Thing[id]["使用人"]]["修炼物品"] = -1
				JY.Person[JY.Thing[id]["使用人"]]["物品修炼点数"] = 0
			end
			JY.Thing[id]["使用人"] = personid
			JY.Person[personid]["修炼物品"] = id
			JY.Person[personid]["物品修炼点数"] = 0
		else
			DrawStrBoxWaitKey("此人不适合修炼此物品", C_WHITE, CC.DefaultFont)
			return 0
		end
		JY.Person[personid]["修炼点数"] = 30000
		War_PersonTrainBook(personid)
		for i = 1, CC.Kungfunum do
			if JY.Person[personid]["武功等级"..i] <999 then
				JY.Person[personid]["武功等级"..i] = 999
			end
		end
		AddPersonAttrib(personid, "生命最大值", 999)
		AddPersonAttrib(personid, "内力最大值", 9999)
		JY.Person[personid]["生命"] = JY.Person[personid]["生命最大值"]
		JY.Person[personid]["内力"] = JY.Person[personid]["内力最大值"]		--飝
	end
	return 1
end

--无酒不欢；使用药品和食品
function UseThing_Type3(id)
	local usepersonid = -1
	local amount_use = 0
	if JY.Status == GAME_MMAP or JY.Status == GAME_SMAP then
		Cls(CC.MainSubMenuX, CC.MainSubMenuY, CC.ScreenW, CC.ScreenH)
		DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, string.format("谁要使用%s?", JY.Thing[id]["名称"]), C_WHITE, CC.DefaultFont)
		local nexty = CC.MainSubMenuY + CC.SingleLineHeight
		local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
		if r > 0 then
			usepersonid = JY.Base["队伍" .. r]
			--非战斗中可以批量使用
			local max_amount = 0
			for i = 1, CC.MyThingNum do
				if JY.Base["物品" .. i] == id then
					max_amount = JY.Base["物品数量" .. i]
					break;
				end
			end
			amount_use = InputNum("使用数量", 1, max_amount)
		end
	--战斗中
	elseif JY.Status == GAME_WMAP then
		--胡青牛可以向队友用药
		if match_ID(WAR.Person[WAR.CurID]["人物编号"], 16) or Curr_JL(WAR.Person[WAR.CurID]["人物编号"],1) then
			War_CalMoveStep(WAR.CurID, 8, 1)
			local x, y = War_SelectMove()
			if x ~= nil then
				local emeny = GetWarMap(x, y, 2)
				if emeny >= 0 and WAR.Person[WAR.CurID]["我方"] == WAR.Person[emeny]["我方"] then
					usepersonid = WAR.Person[emeny]["人物编号"]
				end
			end
		else
			usepersonid = WAR.Person[WAR.CurID]["人物编号"]
		end
	end

	--战斗中不可使用加血内上限的物品
	if JY.Status == GAME_WMAP and id >=14 and id <= 25 then
		return 0
	end
	
	if usepersonid >= 0 then
		--非战斗下使用物品
		if JY.Status == GAME_MMAP or JY.Status == GAME_SMAP then
			if UseThingEffect(id, usepersonid, amount_use) == 1 then
				instruct_32(id, -amount_use)
				WaitKey()
			end
		--战斗中使用物品
		elseif JY.Status == GAME_WMAP then
			if UseThingEffect(id, usepersonid) == 1 then
				instruct_32(id, -1)
			end
		end
	else
		return 0
	end
	return 1
end

--暗器物品
function UseThing_Type4(id)
	if JY.Status == GAME_WMAP then
		return War_UseAnqi(id)
	end
	return 0
end

--------------------------------------------------------------------------------
--------------------------------------事件调用-----------------------------------

--事件调用主入口
--id，d*中的编号
--flag 1 空格触发，2，物品触发，3，路过触发
function EventExecute(id,flag)
    JY.CurrentD=id;

    oldEventExecute(flag)

    JY.CurrentD=-1;
end

--调用原有的指定位置的函数
--旧的函数名字格式为  oldevent_xxx();  xxx为事件编号
function oldEventExecute(flag)
	local eventnum = nil
	if flag == 1 then
		eventnum = GetD(JY.SubScene, JY.CurrentD, 2)
	elseif flag == 2 then
		eventnum = GetD(JY.SubScene, JY.CurrentD, 3)
	elseif flag == 3 then
		eventnum = GetD(JY.SubScene, JY.CurrentD, 4)
	end
	if eventnum > 0 then
			lib.Debug(eventnum.."");
		end
	if eventnum > 0 then
		CallCEvent(eventnum)  
	end
end

function existFile(filename)
    local f = io.open(filename)
    if f == nil then
        return false
    end
    io.close(f)
    return true
end

function CallCEvent(eventnum)
	local eventfilename = string.format("%s%d.lua", CONFIG.CEventPath,eventnum)
	if existFile(eventfilename) then
		dofile(eventfilename)
		return true
	else
		return false
	end
end


--改变大地图坐标，从场景出去后移动到相应坐标
function ChangeMMap(x,y,direct)          --改变大地图坐标
	JY.Base["人X"]=x;
	JY.Base["人Y"]=y;
	JY.Base["人方向"]=direct;
end

--改变当前场景
function ChangeSMap(sceneid,x,y,direct)       --改变当前场景
    JY.SubScene=sceneid;
	JY.Base["人X1"]=x;
	JY.Base["人Y1"]=y;
	JY.Base["人方向"]=direct;
end


--清除(x1,y1)-(x2,y2)矩形内的文字等。
--如果没有参数，则清除整个屏幕表面
--注意该函数并不直接刷新显示屏幕
function Cls(x1,y1,x2,y2)                    --清除屏幕
    if x1==nil then        --第一个参数为nil,表示没有参数，用缺省
	    x1=0;
		y1=0;
		x2=CC.ScreenW;
		y2=CC.ScreenH;
	end

	lib.SetClip(x1,y1,x2,y2);

	if JY.Status==GAME_START then
	    lib.FillColor(0,0,0,0,0);
        lib.LoadPicture(CC.FirstFile,-1,-1);
	elseif JY.Status==GAME_MMAP then
        lib.DrawMMap(JY.Base["人X"],JY.Base["人Y"],GetMyPic());             --显示主地图
	elseif JY.Status==GAME_SMAP then
        DrawSMap();
	elseif JY.Status==GAME_WMAP then
        WarDrawMap(0);
	elseif JY.Status==GAME_DEAD then
	    lib.FillColor(0,0,0,0,0);
        lib.LoadPicture(CC.DeadFile,-1,-1);
	end
	lib.SetClip(0,0,CC.ScreenW,CC.ScreenH);
end


--产生对话显示需要的字符串，即每隔n个中文字符加一个星号
function GenTalkString(str,n)             					 --产生对话显示需要的字符串
    local tmpstr="";
    for s in string.gmatch(str .. "*","(.-)%*") do           --去掉对话中的所有*. 字符串尾部加一个星号，避免无法匹配
        tmpstr=tmpstr .. s;
    end

    local newstr="";
    while #tmpstr>0 do
		local w=0;
		while w<#tmpstr do
		    local v=string.byte(tmpstr,w+1);	--当前字符的值
			if v>=128 then
			    w=w+2;
			else
			    w=w+1;
			end
			if w >= 2*n-1 then					--为了避免跨段中文字符
			    break;
			end
		end

        if w<#tmpstr then
		    if w==2*n-1 and string.byte(tmpstr,w+1)<128 then
				newstr=newstr .. string.sub(tmpstr,1,w+1) .. "*";
				tmpstr=string.sub(tmpstr,w+2,-1);
			else
				newstr=newstr .. string.sub(tmpstr,1,w)  .. "*";
				tmpstr=string.sub(tmpstr,w+1,-1);
			end
		else
		    newstr=newstr .. tmpstr;
			break;
		end
	end
    return newstr;
end

--个人新对话
function TalkEx(s,pid,flag,name)
	say(s,pid,flag,name)
end

function Talk(s,personid)            --最简单版本对话
    local flag;
    if personid==0 then
        flag=1;
	else
	    flag=0;
	end
	TalkEx(s,personid,flag);
end

--测试指令，占位置用
function instruct_test(s)
    DrawStrBoxWaitKey(s,C_ORANGE,24);
end

--清屏
function instruct_0()         --清屏
    Cls();
end

function ReadTalk(id, flag)
	local tidx = Byte.create(id * 4 + 4)
	Byte.loadfile(tidx, CC.TDX, 0, id * 4 + 4)
	local idx1, idx2 = nil, nil
	if id < 1 then
		idx1 = 0
	else
		idx1 = Byte.get32(tidx, (id - 1) * 4)
	end
	idx2 = Byte.get32(tidx, id * 4)
	local len = idx2 - idx1
	local talk = Byte.create(len)
	Byte.loadfile(talk, CC.TRP, idx1, len)
	local str = ""
	for i = 0, len - 2 do
		local byte = Byte.getu16(talk, i)
		byte = 255 - math.fmod(byte, 256)
		str = str .. string.char(byte)
	end
	if flag == nil then
		str = lib.CharSet(str, 0)
		str = GenTalkString(str, 12)
	end
	return str
end

--对话
--talkid: 为数字，则为对话编号；为字符串，则为对话本身。
--headid: 头像id
--flag :对话框位置：0 屏幕上方显示, 左边头像，右边对话
--            1 屏幕下方显示, 左边对话，右边头像
--            2 屏幕上方显示, 左边空，右边对话
--            3 屏幕下方显示, 左边对话，右边空
--            4 屏幕上方显示, 左边对话，右边头像
--            5 屏幕下方显示, 左边头像，右边对话
function instruct_1(talkid, headid, flag)
	local s = ReadTalk(talkid)
	if s == nil then
		return 
	end
	TalkEx(s, headid, flag)
end

--得到物品
function instruct_2(thingid, num)
	if JY.Thing[thingid] == nil then
		return 
	end
	instruct_32(thingid, num)
	if JY.Thing[thingid]["类型"] == 1 then
		JY.Thing[thingid]["装备等级"] = 6				
	end
	if num > 0 then
		DrawStrBoxWaitKey(string.format("得到物品%sX%d", "【Ｇ"..JY.Thing[thingid]["名称"].."Ｏ】", num), C_ORANGE, CC.DefaultFont, 1)
	else
		DrawStrBoxWaitKey(string.format("失去物品%sX%d", "【Ｇ"..JY.Thing[thingid]["名称"].."Ｏ】", -num), C_ORANGE, CC.DefaultFont, 1)
	end
	if JY.Thing[thingid]["类型"] == 1 then
		JY.Thing[thingid]["装备等级"] = 6	--飝
	end
end

--修改指定场景坐标的事件
function instruct_3(sceneid, id, v0, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10)
	if JY.Restart == 1 then
		return
	end
  if sceneid == -2 then
    sceneid = JY.SubScene
  end
  if id == -2 then
    id = JY.CurrentD
  end
  if v0 ~= -2 then
    SetD(sceneid, id, 0, v0)
  end
  if v1 ~= -2 then
    SetD(sceneid, id, 1, v1)
  end
  if v2 ~= -2 then
    SetD(sceneid, id, 2, v2)
  end
  if v3 ~= -2 then
    SetD(sceneid, id, 3, v3)
  end
  if v4 ~= -2 then
    SetD(sceneid, id, 4, v4)
  end
  if v5 ~= -2 then
    SetD(sceneid, id, 5, v5)
  end
  if v6 ~= -2 then
    SetD(sceneid, id, 6, v6)
  end
  if v7 ~= -2 then
    SetD(sceneid, id, 7, v7)
  end
  if v8 ~= -2 then
    SetD(sceneid, id, 8, v8)
  end
  if v9 ~= -2 and v10 ~= -2 and v9 > 0 and v10 > 0 then
    SetS(sceneid, GetD(sceneid, id, 9), GetD(sceneid, id, 10), 3, -1)
    SetD(sceneid, id, 9, v9)
    SetD(sceneid, id, 10, v10)
    SetS(sceneid, GetD(sceneid, id, 9), GetD(sceneid, id, 10), 3, id)
  end
end


function instruct_18(thingid)
	if JY.CurrentThing == thingid then
		return true
	else
		return false
	end
end

function instruct_5()
	return DrawStrBoxYesNo(-1, -1, "是否与之过招(Y/N)?", C_ORANGE, CC.DefaultFont)
end

function instruct_6(warid, tmp, tmp, flag)
	return WarMain(warid, flag)
end

function instruct_7()
	instruct_test("指令7测试")
end

function instruct_8(musicid)
	JY.MmapMusic = musicid
end

function instruct_9()
	return DrawStrBoxYesNo(-1, -1, "是否要求加入(Y/N)?", C_ORANGE, CC.DefaultFont)
end

--入队函数
function instruct_10(personid)
	if JY.Person[personid] == nil then
		lib.Debug("instruct_10 error: person id not exist")
		return 
	end
	local add = 0
	--无酒不欢：畅想不能收自己
	if personid ~= JY.Base["畅想"] then
		for i = 2, CC.TeamNum do
			if JY.Base["队伍" .. i] < 0 then
			  JY.Base["队伍" .. i] = personid
			  add = 1
			  if JY.Person[personid]["论剑奖励"] > 0 and JY.Base["特殊"]>0 then
		      awakening(personid,1)
			  DrawStrBoxWaitKey("斗将队友发生觉醒",C_GOLD, CC.DefaultFont)
	          end
			  break;
			end
		end
	end
	for i = 1, 4 do
		local id = JY.Person[personid]["携带物品" .. i]
		local n = JY.Person[personid]["携带物品数量" .. i]
		if n < 0 then
			n = 0
		end
		if id >= 0 and n > 0 then
			instruct_2(id, n)
			JY.Person[personid]["携带物品" .. i] = -1
			JY.Person[personid]["携带物品数量" .. i] = 0
		end
	end
	if add == 0 then
		lib.Debug("instruct_10 error: 加入队伍已满")
		return
	end
end

function instruct_11()
	return DrawStrBoxYesNo(-1, -1, "是否(Y/N)?", C_ORANGE, CC.DefaultFont)
end

--休息
function instruct_12(flag)
	for i = 1, CC.TeamNum do
		local id = JY.Base["队伍" .. i]
		if id >= 0 then
			JY.Person[id]["受伤程度"] = 0
			JY.Person[id]["中毒程度"] = 0
			AddPersonAttrib(id, "体力", math.huge)
			AddPersonAttrib(id, "生命", math.huge)
			AddPersonAttrib(id, "内力", math.huge)
		end
	end
end

--dark
function instruct_13()
	if JY.Restart == 1 then
		return
	end
	Cls()
	JY.Darkness = 0
	lib.ShowSlow(20, 0)
	lib.GetKey()
end

--light
function instruct_14()
	if JY.Restart == 1 then
		return
	end
	lib.ShowSlow(20, 1)
	JY.Darkness = 1
end

function instruct_15()
	JY.Status = GAME_DEAD
	Cls()
	DrawString(CC.GameOverX, CC.GameOverY, JY.Person[0]["姓名"], RGB(0, 0, 0), CC.DefaultFont)
	local x = CC.ScreenW - 9 * CC.DefaultFont
	DrawString(x, 10, os.date("%Y-%m-%d %H:%M"), RGB(216, 20, 24), CC.DefaultFont)
	DrawString(x, 10 + CC.DefaultFont + CC.RowPixel, "在地球的某处", RGB(216, 20, 24), CC.DefaultFont)
	DrawString(x, 10 + (CC.DefaultFont + CC.RowPixel) * 2, "当地人口的失踪数", RGB(216, 20, 24), CC.DefaultFont)
	DrawString(x, 10 + (CC.DefaultFont + CC.RowPixel) * 3, "又多了一笔。。。", RGB(216, 20, 24), CC.DefaultFont)
	local loadMenu = {
	{"选择读档", nil, 1},  
	{"回家睡觉去", nil, 1}}
	local y = CC.ScreenH - 4 * (CC.DefaultFont + CC.RowPixel) - 10
	local sl = ShowMenu(loadMenu, #loadMenu, 0, x, y, 0, 0, 0, 0, CC.DefaultFont, C_ORANGE, C_WHITE)
	if sl ==1 then
		local r = SaveList();
			if r < 1 then
				JY.Status = GAME_END
				return 0;
			end
			
			Cls();
			DrawStrBox(-1,CC.StartMenuY,"请稍候...",C_GOLD,CC.DefaultFont);
			ShowScreen();
			local result = LoadRecord(r);
			if result ~= nil then
				instruct_15();
				return 0;
			end
		if JY.Base["无用"] ~= -1 then
			JY.Status = GAME_SMAP
			JY.SubScene = JY.Base["无用"]
			JY.MmapMusic = -1
			JY.MyPic = GetMyPic()
			Init_SMap(1)
		else
			JY.SubScene = -1
			JY.Status = GAME_FIRSTMMAP
		end
		ShowScreen()
		lib.LoadPicture("", 0, 0)
		lib.GetKey()
		Game_Cycle()
	else
		JY.Status = GAME_END
	end
end

function inteam(pid)
	return instruct_16(pid)
end

function instruct_16(personid)
	local r = false
	local xwperson;	--判定人物
	--非战斗中才生效，用于触发剧情等判定
	if personid == JY.Base["畅想"] and JY.Status ~= GAME_WMAP then
		xwperson = 0
	else
		xwperson = personid
	end
	for i = 1, CC.TeamNum do
		if xwperson == JY.Base["队伍" .. i] then
			r = true
			break;
		end
	end
	return r
end

function instruct_17(sceneid, level, x, y, v)
	if sceneid == -2 then
		sceneid = JY.SubScene
	end
	SetS(sceneid, x, y, level, v)
end

function instruct_18(thingid)
	for i = 1, CC.MyThingNum do
		if JY.Base["物品" .. i] == thingid then
			return true
		end
	end
	return false
end

function instruct_19(x, y)
	JY.Base["人X1"] = x
	JY.Base["人Y1"] = y
	JY.SubSceneX = 0
	JY.SubSceneY = 0
end

function instruct_20()
	if JY.Base["队伍" .. CC.TeamNum] >= 0 then
		return true
	end
	return false
end

--离队函数
function instruct_21(personid)
	if JY.Person[personid] == nil then
		lib.Debug("instruct_21 error: personid not exist")
		return 
	end
	local j = 0
	for i = 1, CC.TeamNum do
		if personid == JY.Base["队伍" .. i] then
		  j = i
		end
	end
	if j == 0 then
		return 
	end
	for i = j + 1, CC.TeamNum do
		JY.Base["队伍" .. i - 1] = JY.Base["队伍" .. i]
	end
	JY.Base["队伍" .. CC.TeamNum] = -1
	if JY.Person[personid]["武器"] >= 0 then
		JY.Thing[JY.Person[personid]["武器"]]["使用人"] = -1
		JY.Person[personid]["武器"] = -1
	end
	if JY.Person[personid]["防具"] >= 0 then
		JY.Thing[JY.Person[personid]["防具"]]["使用人"] = -1
		JY.Person[personid]["防具"] = -1
	end
	if JY.Person[personid]["饰品"] >= 0 then
		JY.Thing[JY.Person[personid]["饰品"]]["使用人"] = -1
		JY.Person[personid]["饰品"] = -1
	end
	if JY.Person[personid]["修炼物品"] >= 0 then
		JY.Thing[JY.Person[personid]["修炼物品"]]["使用人"] = -1
		JY.Person[personid]["修炼物品"] = -1
	end
	JY.Person[personid]["物品修炼点数"] = 0
end

function instruct_22()
	for i = 1, CC.TeamNum do
		if JY.Base["队伍" .. i] >= 0 then
			JY.Person[JY.Base["队伍" .. i]]["内力"] = 0
		end
	end
end

function instruct_23(personid, value)
	JY.Person[personid]["用毒能力"] = value
	AddPersonAttrib(personid, "用毒能力", 0)
end

function instruct_24()
	instruct_test("指令24测试")
end

--镜头移动
function instruct_25(x1, y1, x2, y2)
	if JY.Restart == 1 then
		return
	end
	local sign = nil
	if y1 ~= y2 then
		if y2 < y1 then
			sign = -1
		else
			sign = 1
		end
		for i = y1 + sign, y2, sign do
			lib.GetKey()
			local t1 = lib.GetTime()
			JY.SubSceneY = JY.SubSceneY + sign
			DrawSMap()
			ShowScreen()
			local t2 = lib.GetTime()
			if t2 - t1 < CC.SceneMoveFrame then
				lib.Delay(CC.SceneMoveFrame - (t2 - t1))
			end
		end
	end
	if x1 ~= x2 then
		if x2 < x1 then
			sign = -1
		else
			sign = 1
		end
		for i = x1 + sign, x2, sign do
			lib.GetKey()
			local t1 = lib.GetTime()
			JY.SubSceneX = JY.SubSceneX + sign
			DrawSMap()
			ShowScreen()
			local t2 = lib.GetTime()
			if t2 - t1 < CC.SceneMoveFrame then
				lib.Delay(CC.SceneMoveFrame - (t2 - t1))
			end
		end
	end
end

function instruct_26(sceneid, id, v1, v2, v3)
	if sceneid == -2 then
		sceneid = JY.SubScene
	end
	local v = GetD(sceneid, id, 2)
	SetD(sceneid, id, 2, v + v1)
	v = GetD(sceneid, id, 3)
	SetD(sceneid, id, 3, v + v2)
	v = GetD(sceneid, id, 4)
	SetD(sceneid, id, 4, v + v3)
end

function instruct_27(id, startpic, endpic)
	local old1, old2, old3 = nil
	if id ~= -1 then
		old1 = GetD(JY.SubScene, id, 5)
		old2 = GetD(JY.SubScene, id, 6)
		old3 = GetD(JY.SubScene, id, 7)
	end
	for i = startpic, endpic, 2 do
		lib.GetKey()
		local t1 = lib.GetTime()
		if id == -1 then
			JY.MyPic = i / 2
		else
			SetD(JY.SubScene, id, 5, i)
			SetD(JY.SubScene, id, 6, i)
			SetD(JY.SubScene, id, 7, i)
		end
		DtoSMap()
		DrawSMap()
		ShowScreen()
		local t2 = lib.GetTime()
		if t2 - t1 < CC.AnimationFrame then
			lib.Delay(CC.AnimationFrame - (t2 - t1))
		end
	end
	if id ~= -1 then
		SetD(JY.SubScene, id, 5, old1)
		SetD(JY.SubScene, id, 6, old2)
		SetD(JY.SubScene, id, 7, old3)
	end
end

function instruct_28(personid, vmin, vmax)
	local v = JY.Person[personid]["品德"]
	if vmin <= v and v <= vmax then
		return true
	else
		return false
	end
end

function instruct_29(personid, vmin, vmax)
	local v = JY.Person[personid]["攻击力"]
	if vmin <= v and v <= vmax then
		return true
	else
		return false
	end
end

--人物自动移动
function instruct_30(x1, y1, x2, y2)
	if JY.Restart == 1 then
		return
	end
  if x1 < x2 then
    for i = x1 + 1, x2 do
      local t1 = lib.GetTime()
      instruct_30_sub1(1)
      local t2 = lib.GetTime()
      if t2 - t1 < CC.PersonMoveFrame then
        lib.Delay(CC.PersonMoveFrame - (t2 - t1))
      end
    end
  elseif x2 < x1 then
    for i = x2 + 1, x1 do
      local t1 = lib.GetTime()
      instruct_30_sub1(2)
      local t2 = lib.GetTime()
      if t2 - t1 < CC.PersonMoveFrame then
        lib.Delay(CC.PersonMoveFrame - (t2 - t1))
      end
    end
  end
  if y1 < y2 then
    for i = y1 + 1, y2 do
      local t1 = lib.GetTime()
      instruct_30_sub1(3)
      local t2 = lib.GetTime()
      if t2 - t1 < CC.PersonMoveFrame then
        lib.Delay(CC.PersonMoveFrame - (t2 - t1))
      end
    end
  elseif y2 < y1 then
    for i = y2 + 1, y1 do
      local t1 = lib.GetTime()
      instruct_30_sub1(0)
      local t2 = lib.GetTime()
      if t2 - t1 < CC.PersonMoveFrame then
        lib.Delay(CC.PersonMoveFrame - (t2 - t1))
      end
    end
  end
end

function instruct_30_sub1(direct)
  local x, y = nil, nil
  AddMyCurrentPic()
  x = JY.Base["人X1"] + CC.DirectX[direct + 1]
  y = JY.Base["人Y1"] + CC.DirectY[direct + 1]
  JY.Base["人方向"] = direct
  JY.MyPic = GetMyPic()
  DtoSMap()
  if SceneCanPass(x, y) == true then
    JY.Base["人X1"] = x
    JY.Base["人Y1"] = y
  end
  JY.Base["人X1"] = limitX(JY.Base["人X1"], 1, CC.SWidth - 2)
  JY.Base["人Y1"] = limitX(JY.Base["人Y1"], 1, CC.SHeight - 2)
  DrawSMap()
  ShowScreen()
  return 1
end

function instruct_30_sub(direct)
  local x, y = nil, nil
  local d_pass = GetS(JY.SubScene, JY.Base["人X1"], JY.Base["人Y1"], 3)

  if d_pass >= 0 and d_pass ~= JY.OldDPass then
    EventExecute(d_pass, 3)
    JY.OldDPass = d_pass
    JY.oldSMapX = -1
    JY.oldSMapY = -1
    JY.D_Valid = nil
  end

  JY.OldDPass = -1
  local isout = 0
  if (((JY.Scene[JY.SubScene]["出口X1"] == JY.Base["人X1"] and JY.Scene[JY.SubScene]["出口Y1"] == JY.Base["人Y1"]) or JY.Scene[JY.SubScene]["出口X2"] ~= JY.Base["人X1"] or JY.Scene[JY.SubScene]["出口Y2"] == JY.Base["人Y1"] or JY.Scene[JY.SubScene]["出口X3"] == JY.Base["人X1"] and JY.Scene[JY.SubScene]["出口Y3"] == JY.Base["人Y1"])) then
    isout = 1
  end
  if isout == 1 then
    JY.Status = GAME_MMAP
    lib.PicInit()
    CleanMemory()
    lib.ShowSlow(20, 1)
    if JY.MmapMusic < 0 then
      JY.MmapMusic = JY.Scene[JY.SubScene]["出门音乐"]
    end
    Init_MMap()
    JY.SubScene = -1
    JY.oldSMapX = -1
    JY.oldSMapY = -1
    lib.DrawMMap(JY.Base["人X"], JY.Base["人Y"], GetMyPic())
    lib.ShowSlow(20, 0)
    lib.GetKey()
    return 
  end
  if JY.Scene[JY.SubScene]["跳转场景"] >= 0 and JY.Base["人X1"] == JY.Scene[JY.SubScene]["跳转口X1"] and JY.Base["人Y1"] == JY.Scene[JY.SubScene]["跳转口Y1"] then
    JY.SubScene = JY.Scene[JY.SubScene]["跳转场景"]
    lib.ShowSlow(20, 1)
    if JY.Scene[JY.SubScene]["外景入口X1"] == 0 and JY.Scene[JY.SubScene]["外景入口Y1"] == 0 then
      JY.Base["人X1"] = JY.Scene[JY.SubScene]["入口X"]
      JY.Base["人Y1"] = JY.Scene[JY.SubScene]["入口Y"]
    else
      JY.Base["人X1"] = JY.Scene[JY.SubScene]["跳转口X2"]
      JY.Base["人Y1"] = JY.Scene[JY.SubScene]["跳转口Y2"]
    end
    Init_SMap(1)
    return 
  end
  AddMyCurrentPic()
  x = JY.Base["人X1"] + CC.DirectX[direct + 1]
  y = JY.Base["人Y1"] + CC.DirectY[direct + 1]
  JY.Base["人方向"] = direct
  JY.MyPic = GetMyPic()
  DtoSMap()
  if SceneCanPass(x, y) == true then
    JY.Base["人X1"] = x
    JY.Base["人Y1"] = y
  end
  JY.Base["人X1"] = limitX(JY.Base["人X1"], 1, CC.SWidth - 2)
  JY.Base["人Y1"] = limitX(JY.Base["人Y1"], 1, CC.SHeight - 2)
  DrawSMap()
  ShowScreen()
  return 1
end

--计算钱是否足够
function instruct_31(num)
	local r = false
	for i = 1, CC.MyThingNum do
		if JY.Base["物品" .. i] == CC.MoneyID and num <= JY.Base["物品数量" .. i] then
			r = true
		end
	end
	return r
end

--增加，减少物品的函数
function instruct_32(thingid, num)
	local p = 1
	--首先控制获取数量，超过30000自动算30000
	if num > 30000 then
		num = 30000
	end
	for i = 1, CC.MyThingNum do
		if JY.Base["物品" .. i] == thingid then
			--已经有一定数量的物品，如果相加之后超过30000，按30000算
			if (JY.Base["物品数量" .. i] + num) > 30000 then
				JY.Base["物品数量" .. i] = 30000
			else
				JY.Base["物品数量" .. i] = JY.Base["物品数量" .. i] + num
			end
			p = i
			break;
		elseif JY.Base["物品" .. i] == -1 then
			JY.Base["物品" .. i] = thingid
			JY.Base["物品数量" .. i] = num
			p = i
			break;
		end
	end
	
	--获取银两的时候刷新银两显示
	if thingid == CC.MoneyID then
		JY.GOLD = JY.Base["物品数量" .. p]
	end
  
  
	--获得天书，增加15点声望
	--获得的时候才增加
	if num > 0 and thingid >= CC.BookStart and thingid < CC.BookStart + CC.BookNum then
		JY.Person[0]["声望"] = JY.Person[0]["声望"] + 15;
		JY.Base["天书数量"] = JY.Base["天书数量"] + 1
		--无酒不欢：用520号人物的品德判定可以摘取的蟠桃数量
		--替换蟠桃树贴图
		JY.Person[520]["品德"] = JY.Person[520]["品德"] + 1
		--在已经种过树的情况下，树会结果，用521号人物的品德判定是否已触发种树事件
		if JY.Person[521]["品德"] == 1 then
			addevent(70, 65, 1, 4119, 1, 2366*2)
		end
		--12书后触发新华山论剑事件
		if JY.Base["天书数量"] == 12 then
			addevent(80, 19, 1, 4141, 1, 4335*2)	--羊
		end
	end
	
	if JY.Base["物品数量" .. p] <= 0 then
		for i = p + 1, CC.MyThingNum do
			JY.Base["物品" .. i - 1] = JY.Base["物品" .. i]
			JY.Base["物品数量" .. i - 1] = JY.Base["物品数量" .. i]
		end
		JY.Base["物品" .. CC.MyThingNum] = -1
		JY.Base["物品数量" .. CC.MyThingNum] = 0
	end
	if JY.Thing[thingid]["类型"] == 1 then
		JY.Thing[thingid]["装备等级"] = 6	--飝
	end
end

--人物学会武功
function instruct_33(personid, wugongid, flag)
	local xwperson;	--判定要洗武功的人
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end
	local add = 0
	for i = 1, CC.Kungfunum do
    if JY.Person[xwperson]["武功" .. i] == 0 then
		JY.Person[xwperson]["武功" .. i] = wugongid
		JY.Person[xwperson]["武功等级" .. i] = 0
		add = 1
		break;
    end
	end
	if add == 0 then
		JY.Person[xwperson]["武功12"] = wugongid
		JY.Person[xwperson]["武功等级12"] = 0
	end
	if flag == 0 then
		DrawStrBoxWaitKey(string.format("%s 学会武功 %s", JY.Person[xwperson]["姓名"], JY.Wugong[wugongid]["名称"]), C_ORANGE, CC.DefaultFont)
	end
end

--改变资质
function instruct_34(id, value)
	local xwperson;	--判定人物
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "资质", value)
	DrawStrBoxWaitKey(JY.Person[xwperson]["姓名"] .. str, C_ORANGE, CC.DefaultFont)
end

--洗武功函数
function instruct_35(personid, id, wugongid, wugonglevel)
	local xwperson;	--判定要洗武功的人
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end
	if id >= 0 then
		JY.Person[xwperson]["武功" .. id + 1] = wugongid
		JY.Person[xwperson]["武功等级" .. id + 1] = wugonglevel
	else
		local flag = 0
		for i = 1, CC.Kungfunum do
			if JY.Person[xwperson]["武功" .. i] == 0 then
				flag = 1
				JY.Person[xwperson]["武功" .. i] = wugongid
				JY.Person[xwperson]["武功等级" .. i] = wugonglevel
				return 
			end
		end
		if flag == 0 then
			JY.Person[xwperson]["武功" .. 1] = wugongid
			JY.Person[xwperson]["武功等级" .. 1] = wugonglevel
		end
	end
end

function instruct_36(sex)
	if JY.Person[0]["性别"] == sex then
		return true
	else
		return false
	end
end

--无酒不欢：加减道德显示
function instruct_37(v)
	AddPersonAttrib(0, "品德", v)
	if v < 0 then
		for i = 1, 15 do
			if JY.Restart == 1 then
				break
			end
			local y_off = i * 2 + CC.DefaultFont + CC.RowPixel
			DrawString(CC.ScreenW/2-CC.DefaultFont*5, CC.ScreenH/4 - CC.DefaultFont - CC.RowPixel + y_off, "你的道德指数下降了"..-v.."点", M_DeepSkyBlue, CC.DefaultFont)
			ShowScreen()		  
			lib.Delay(50)
			Cls()
		end
	else
		for i = 1, 15 do
			if JY.Restart == 1 then
				break
			end
			local y_off = i * 2 + CC.DefaultFont + CC.RowPixel
			DrawString(CC.ScreenW/2-CC.DefaultFont*5, CC.ScreenH/4 + 30 + CC.DefaultFont + CC.RowPixel - y_off, "你的道德指数提升了"..v.."点", PinkRed, CC.DefaultFont)
			ShowScreen()		  
			lib.Delay(50)
			Cls()
		end
	end
end

function instruct_38(sceneid, level, oldpic, newpic)
	if sceneid == -2 then
		sceneid = JY.SubScene
	end
	for i = 0, CC.SWidth - 1 do
		for j = 1, CC.SHeight - 1 do
			if GetS(sceneid, i, j, level) == oldpic then
				SetS(sceneid, i, j, level, newpic)
			end
		end
	end
end

function instruct_39(sceneid)
	JY.Scene[sceneid]["进入条件"] = 0
end

function instruct_40(v)
	JY.Base["人方向"] = v
	JY.MyPic = GetMyPic()
end

function instruct_41(personid, thingid, num)
	local k = 0
	for i = 1, 4 do
		if JY.Person[personid]["携带物品" .. i] == thingid then
			JY.Person[personid]["携带物品数量" .. i] = JY.Person[personid]["携带物品数量" .. i] + num
			k = i
			break;
		end
	end
	if k > 0 and JY.Person[personid]["携带物品数量" .. k] <= 0 then
		JY.Person[personid]["携带物品" .. k] = -1
	end
	if k == 0 then
		for i = 1, 4 do
			if JY.Person[personid]["携带物品" .. i] == -1 then
				JY.Person[personid]["携带物品" .. i] = thingid
				JY.Person[personid]["携带物品数量" .. i] = num
				break;
			end
		end
	end
end

function instruct_42()
	local r = false
	for i = 1, CC.TeamNum do
		if JY.Base["队伍" .. i] >= 0 and JY.Person[JY.Base["队伍" .. i]]["性别"] == 1 then
			r = true
		end
	end
	return r
end

function instruct_43(thingid)
	return instruct_18(thingid)
end

function instruct_44(id1, startpic1, endpic1, id2, startpic2, endpic2)
  local old1 = GetD(JY.SubScene, id1, 5)
  local old2 = GetD(JY.SubScene, id1, 6)
  local old3 = GetD(JY.SubScene, id1, 7)
  local old4 = GetD(JY.SubScene, id2, 5)
  local old5 = GetD(JY.SubScene, id2, 6)
  local old6 = GetD(JY.SubScene, id2, 7)
  for i = startpic1, endpic1, 2 do
	lib.GetKey()
    local t1 = lib.GetTime()
    if id1 == -1 then
      JY.MyPic = i / 2
    else
      SetD(JY.SubScene, id1, 5, i)
      SetD(JY.SubScene, id1, 6, i)
      SetD(JY.SubScene, id1, 7, i)
    end
    if id2 == -1 then
      JY.MyPic = i / 2
    else
      SetD(JY.SubScene, id2, 5, i - startpic1 + startpic2)
      SetD(JY.SubScene, id2, 6, i - startpic1 + startpic2)
      SetD(JY.SubScene, id2, 7, i - startpic1 + startpic2)
    end
    DtoSMap()
    DrawSMap()
    ShowScreen()
    local t2 = lib.GetTime()
    if t2 - t1 < CC.AnimationFrame then
      lib.Delay(CC.AnimationFrame - (t2 - t1))
    end
  end
  SetD(JY.SubScene, id1, 5, old1)
  SetD(JY.SubScene, id1, 6, old2)
  SetD(JY.SubScene, id1, 7, old3)
  SetD(JY.SubScene, id2, 5, old4)
  SetD(JY.SubScene, id2, 6, old5)
  SetD(JY.SubScene, id2, 7, old6)
end

--加轻
function instruct_45(id, value)
	local xwperson;	--判定要洗武功的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "轻功", value)
end

--加内
function instruct_46(id, value)
	local xwperson;	--判定要洗武功的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "内力最大值", value)
	AddPersonAttrib(xwperson, "内力", 0)
end

--加攻
function instruct_47(id, value)
	local xwperson;	--判定要洗武功的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "攻击力", value)
end

--加防
function add_deffense(id, value)
	local xwperson;	--判定要洗武功的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "防御力", value)
end

--加血
function instruct_48(id, value)
	local xwperson;	--判定要洗武功的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "生命最大值", value)
	AddPersonAttrib(xwperson, "生命", value)
end

--洗内属
function instruct_49(personid, value)
	local xwperson;	--判定要洗内属的人
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end
	JY.Person[xwperson]["内力性质"] = value
end

function instruct_50(id1, id2, id3, id4, id5)
  local num = 0
  if instruct_18(id1) == true then
    num = num + 1
  end
  if instruct_18(id2) == true then
    num = num + 1
  end
  if instruct_18(id3) == true then
    num = num + 1
  end
  if instruct_18(id4) == true then
    num = num + 1
  end
  if instruct_18(id5) == true then
    num = num + 1
  end
  if num == 5 then
    return true
  else
    return false
  end
end

function instruct_51()
	instruct_1(2547 + Rnd(18), 114, 0)
end

function instruct_52()
	DrawStrBoxWaitKey(string.format("你现在的品德指数为: %d", JY.Person[0]["品德"]), C_ORANGE, CC.DefaultFont)
end

function instruct_53()
	DrawStrBoxWaitKey(string.format("你现在的声望指数为: %d", JY.Person[0]["声望"]), C_ORANGE, CC.DefaultFont)
end

function instruct_54()
	for i = 0, JY.SceneNum - 1 do
		JY.Scene[i]["进入条件"] = 0
	end
	JY.Scene[2]["进入条件"] = 2
	JY.Scene[38]["进入条件"] = 2
	JY.Scene[75]["进入条件"] = 1
	JY.Scene[80]["进入条件"] = 1
end

function instruct_55(id, num)
	if GetD(JY.SubScene, id, 2) == num then
		return true
	else
		return false
	end
end

function instruct_56(v)
	--JY.Person[0]["声望"] = JY.Person[0]["声望"] + v
	--instruct_2_sub()
end

function instruct_57()
  instruct_27(-1, 7664, 7674)
  for i = 0, 56, 2 do
    local t1 = lib.GetTime()
    if JY.MyPic < 3844 then
      JY.MyPic = (7676 + i) / 2
    end
    SetD(JY.SubScene, 2, 5, i + 7690)
    SetD(JY.SubScene, 2, 6, i + 7690)
    SetD(JY.SubScene, 2, 7, i + 7690)
    SetD(JY.SubScene, 3, 5, i + 7748)
    SetD(JY.SubScene, 3, 6, i + 7748)
    SetD(JY.SubScene, 3, 7, i + 7748)
    SetD(JY.SubScene, 4, 5, i + 7806)
    SetD(JY.SubScene, 4, 6, i + 7806)
    SetD(JY.SubScene, 4, 7, i + 7806)
    DtoSMap()
    DrawSMap()
    ShowScreen()
    local t2 = lib.GetTime()
    if t2 - t1 < CC.AnimationFrame then
      lib.Delay(CC.AnimationFrame - (t2 - t1))
    end
  end
end

function instruct_58()
  local group = 5
  local num1 = 6
  local num2 = 3
  local startwar = 102
  local flag = {}
  for i = 0, group - 1 do
    for j = 0, num1 - 1 do
      flag[j] = 0
    end
    for j = 1, num2 do
      local r = nil
      while 1 do
        r = Rnd(num1)
        if flag[r] == 0 then
          flag[r] = 1
          do break end
        end
      end
      local warnum = r + i * num1
      WarLoad(warnum + startwar)
      instruct_1(2854 + warnum, JY.Person[WAR.Data["敌人1"]]["头像代号"], 0)
      instruct_0()
      if WarMain(warnum + startwar, 0) == true then
        instruct_0()
        instruct_13()
        TalkEx("还有那位前辈肯赐教？", 0, 1)
        instruct_0()
      else
        instruct_15()
        return 
      end
    end
    if i < group - 1 then
      TalkEx(JY.Person[0]["外号"].."已连战三场，*可先休息再战．", 70, 0)
      instruct_0()
      instruct_14()
      lib.Delay(300)
      if JY.Person[0]["受伤程度"] < 50 and JY.Person[0]["中毒程度"] <= 0 then
        JY.Person[0]["受伤程度"] = 0
        AddPersonAttrib(0, "体力", math.huge)
        AddPersonAttrib(0, "内力", math.huge)
        AddPersonAttrib(0, "生命", math.huge)
      end
      instruct_13()
      TalkEx("我已经休息够了，*有谁要再上？", 0, 1)
      instruct_0()
    end
  end
  TalkEx("接下来换谁？**．．．．*．．．．***没有人了吗？", 0, 1)
  instruct_0()
  TalkEx("如果还没有人要出来向这位*"..JY.Person[0]["外号"].."挑战，那麽这武功天下*第一之名，武林盟主之位，*就由这位"..JY.Person[0]["外号"].."夺得．***．．．．．．*．．．．．．*．．．．．．*好，恭喜"..JY.Person[0]["外号"].."，这武林盟主*之位就由"..JY.Person[0]["外号"].."获得，而这把*”武林神杖”也由你保管．", 70, 0)
  instruct_0()
  TalkEx("恭喜"..JY.Person[0]["外号"].."！", 12, 0)
  instruct_0()
  TalkEx("小兄弟，恭喜你！", 64, 4)
  instruct_0()
  TalkEx("好，今年的武林大会到此已*圆满结束，希望明年各位武*林同道能再到我华山一游．", 19, 0)
  instruct_0()
  instruct_14()
  for i = 24, 72 do
    instruct_3(-2, i, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2)
  end
  instruct_0()
  instruct_13()
  TalkEx("历经千辛万苦，我终於打败*群雄，得到这武林盟主之位*及神杖．*但是”圣堂”在那呢？*为什麽没人告诉我，难道大*家都不知道．*这会儿又有的找了．", 0, 1)
  instruct_0()
  instruct_2(143, 1)
end

--全部队友离队
function instruct_59()
	for i = CC.TeamNum, 2, -1 do
		if JY.Base["队伍" .. i] >= 0 then
			instruct_21(JY.Base["队伍" .. i])
		end
	end
	for i,v in ipairs(CC.AllPersonExit) do
		instruct_3(v[1], v[2], 0, 0, -1, -1, -1, -1, -1, -1, 0, -2, -2)
	end
end

function instruct_60(sceneid, id, num)
  if sceneid == -2 then
    sceneid = JY.SubScene
  end
  if id == -2 then
    id = JY.CurrentD
  end
  if GetD(sceneid, id, 5) == num then
    return true
  else
    return false
  end
end

function instruct_61()
  for i = 11, 24 do
    if GetD(JY.SubScene, i, 5) ~= 4664 then
      return false
    end
  end
  return true
end

--通关函数
function instruct_62(id1, startnum1, endnum1, id2, startnum2, endnum2)
	--JY.MyPic = -1
	--instruct_44(id1, startnum1, endnum1, id2, startnum2, endnum2)
	--ShowScreen()
	lib.Delay(200)
	say("本次游戏就到这里了，选择重新开始可进行下一周目的游戏！", 260, 5, "无酒不欢")
  
	--保存周目
	if GetS(53, 0, 1, 5) >= CC.CircleNum-1 then
		local data = string.format("%s&&%d&&%d&&%d\n",JY.Person[0]["姓名"],GetS(4, 5, 5, 5),GetS(4, 5, 5, 4),JY.Base["难度"]);
		local file = io.open(CC.CircleFile, "ab");
		if(file) then
			for i=1, #data do
				file:write(string.format("%02X", string.byte(string.sub(data,i,i))));
			end
			file:close();
		end
	end
	
	--lib.PlayMPEG("ending.mp4",VK_ESCAPE)
	
	---[[
	Cls()
	lib.FillColor(0, 0, CC.ScreenW, CC.ScreenH, C_BLACK)
	DrawString(350, 200, "片尾曲《四大山》", C_WHITE, CC.DefaultFont)
	DrawString(375, 300, "演唱：老凡总", C_WHITE, CC.DefaultFont)
	ShowScreen()
  
	PlayMIDI(116)
	local stime = 0
	local a = 1
	local lyrics = {
	{530,"吓 近万个小时 精心打磨"},
	{560,"做游戏为了什么冷笑着"},
	{590,"前辈元老功高又如何"},
	{610,"开源码我随手可得"},
	{640,"我的 加密了得 却奈何 赞助还不够多"},
	{680,"江湖难测 人傻钱多 谁争六级会员的资格"},
	{730,"论坛里 发帖要统一 否则请离去"},
	{810,"充过钱的** 我记得你 你再来充一笔"},
	{920,"抄抄 抄抄 抄抄抄抄"},
	{940,"抄袭来的代码真的不错"},
	{970,"我我 我我 我我我我"},
	{1000,"只要加密它们就是我的"},
	{1030,"作作 作作 作作作作"},
	{1050,"国产绿色益智单机大作"},
	{1070,"你你 你你 你你你你"},
	{1100,"你的钱包终究要属于我"},
	{1220,"吓 阴谋破坏者 在论坛等着"},
	{1250,"讲道理 赢了什么 删封沉"},
	{1280,"天下谁的 原创又如何"},
	{1300,"开源码 我辈善抄袭"},
	{1320,"我的游戏热门 却奈何"},
	{1350,"徒增虚名一个"},
	{1370,"没有赞助 都是辣鸡"},
	{1390,"谁争热心玩家的资格"},
	{1410,"小城里 岁月流过去 清澈钱包里"},
	{1510,"充过钱的** 我记得你 骄傲的活下去"},
	{1610,"抄抄 抄抄 抄抄抄抄"},
	{1630,"抄过来的代码真的实用"},
	{1660,"发发 发发 发发发发"},
	{1680,"不发帖说就没赞助收入"},
	{1710,"过过 过过 过过过过"},
	{1730,"过错软弱从来不属于我"},
	{1760,"你你 你你 你你你你"},
	{1780,"你的钱包终究要属于我"},
	{2100,"抄抄 抄抄 抄抄抄抄"},
	{2120,"抄袭来的代码真的不错"},
	{2140,"我我 我我 我我我我"},
	{2170,"只要加密它们就是我的"},
	{2190,"作作 作作 作作作作"},
	{2210,"国产绿色益智单机大作"},
	{2240,"你你 你你 你你你你"},
	{2260,"你的钱包终究要属于我"},
	{2310,"论坛里 发帖要统一 否则请离去"},
	{2390,"充过钱的** 我记得你 你再来充一笔"},
	{2700,"全剧终 感谢支持"},
	{2750," "}
	}
	while true do
		if JY.Restart == 1 then
			break
		end
		local key = lib.GetKey()
		lib.Delay(100)
		stime = stime + 1
		if stime == lyrics[a][1] then
			local size = CC.DefaultFont
			Cls()
			lib.FillColor(0, 0, CC.ScreenW, CC.ScreenH, C_BLACK)
			DrawString(350, 200, "片尾曲《四大山》", C_WHITE, size)
			DrawString(375, 300, "演唱：老凡总", C_WHITE, size)
			local align = CC.ScreenW/2 - (string.len(lyrics[a][2])/2*size)/2
			DrawString(align, 500, lyrics[a][2], C_WHITE, size)
			ShowScreen()
			a = a + 1
		end
		if a > #lyrics then
			break
		end
		if key == VK_ESCAPE then
			break
		end
	end--]]
  
	JY.Status=GAME_END;
end

function instruct_63(personid, sex)
	JY.Person[personid]["性别"] = sex
end

--无酒不欢：商店数据
function instruct_64()
	local headid = 223
	local id = -1
	for i = 0, JY.ShopNum - 1 do
		if CC.ShopScene[i].sceneid == JY.SubScene then
		  id = i
		end
	end
	if id < 0 then
		return 
	end
	TalkEx("这位小哥，看看有什么需要的，小店卖的东西价钱绝对公道。", headid, 0,"商家")
	local menu = {}
	for i = 1, 6 do
		local thingid = JY.Shop[id]["物品" .. i]
		if thingid ~= -1 then
			menu[i] = {}
			menu[i][1] = string.format("%-12s %5d", JY.Thing[thingid]["名称"], JY.Shop[id]["物品价格" .. i])
			menu[i][2] = nil
			if JY.Shop[id]["物品数量" .. i] > 0 then
			  menu[i][3] = 1
			else
			  menu[i][3] = 0
			end
		end
	end

	--3书以前没有混元
	if JY.Base["天书数量"] < 3 and id == 0 then
		menu[5][3] = 0
	end

	local x1 = (CC.ScreenW - 9 * CC.DefaultFont - 2 * CC.MenuBorderPixel) / 2
	local y1 = (CC.ScreenH - 5 * CC.DefaultFont - 4 * CC.RowPixel - 2 * CC.MenuBorderPixel) / 2
	local r = ShowMenu(menu, #menu, 0, x1, y1, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
	--[[
	local itemJC = {}
	itemJC[0] = {38, 12, 28, 14, 68, -1, 400, 100, 80, 500, 6000, -1}
	itemJC[1] = {48, 0, 29, 15, 90, -1, 400, 100, 100, 500, 1000, -1}
	itemJC[2] = {54, 3, 32, 16, 159, -1, 400, 100, 100, 600, 600, -1}
	itemJC[3] = {63, 7, 33, 17, 175, -1, 400, 200, 120, 600, 800, -1}
	itemJC[4] = {27, 9, 34, 22, 69, -1, 2000, 50, 130, 400, 8000, -1}]]
	if r > 0 then
		if instruct_31(JY.Shop[id]["物品价格" .. r]) == false then
			TalkEx("非常抱歉，你身上的钱似乎不够。", headid, 0,"商家")
		else
			JY.Shop[id]["物品数量" .. r] = JY.Shop[id]["物品数量" .. r] - 1
			instruct_32(CC.MoneyID, -JY.Shop[id]["物品价格" .. r])
			instruct_32(JY.Shop[id]["物品" .. r], 1)
			TalkEx(JY.Person[0]["外号"].."买了小店的东西，保证绝不后悔。", headid, 0,"商家")
		end
	end
	for i,v in ipairs(CC.ShopScene[id].d_leave) do
		instruct_3(-2, v, 0, -2, -1, -1, 939, -1, -1, -1, -2, -2, -2)
	end
end

function instruct_65()
  local id = -1
  for i = 0, JY.ShopNum - 1 do
    if CC.ShopScene[i].sceneid == JY.SubScene then
      id = i
    end
  end
  if id < 0 then
    return 
  end
  instruct_3(-2, CC.ShopScene[id].d_shop, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2)
  for i,v in ipairs(CC.ShopScene[id].d_leave) do
    instruct_3(-2, v, 0, -2, -1, -1, -1, -1, -1, -1, -2, -2, -2)
  end
  local newid = id + 1
  if newid >= 5 then
    newid = 0
  end
  instruct_3(CC.ShopScene[newid].sceneid, CC.ShopScene[newid].d_shop, 1, -2, 938, -1, -1, 8256, 8256, 8256, -2, -2, -2)
end

function instruct_66(id)
  PlayMIDI(id)
end

function instruct_67(id)
  PlayWavAtk(id)
end


--选择框，每个选项都带边框
--title 标题
--str 内容 *换行
--button 选项
--num 选项的个数，一定要和选项对应起来
--headid 显示在内容左边的贴图，如果不传值则不显示贴图
function JYMsgBox(title, str, button, num, headid, isEsc)
	if JY.Restart == 1 then
		return 1
	end
  local strArray = {}
  local xnum, ynum, width, height = nil, nil, nil, nil
  local picw, pich = 0, 0
  local x1, x2, y1, y2 = nil, nil, nil, nil
  local size = CC.DefaultFont;
  local xarr = {};

  local function between(x, select)
  	for i=1, num do
  		if xarr[i] < x and x < xarr[i] + string.len(button[i])*size/2 then
  			return i;
  		end
  	end
  	return select;
  end
 

 
  if headid ~= nil then
  headid = headid*2;
    --picw, pich = lib.PicGetXY(1, headid)
	picw, pich = lib.GetPNGXY(1, headid)
    picw = picw + CC.MenuBorderPixel * 2
    pich = pich + CC.MenuBorderPixel * 2
  end
  ynum, strArray = Split(str, "*")
  xnum = 0
  for i = 1, ynum do
    local len = string.len(strArray[i])
    if xnum < len then
      xnum = len
    end
  end
  if xnum < 12 then
    xnum = 12
  end
  width = CC.MenuBorderPixel * 2 + math.modf(size * xnum / 2) + (picw)
  height = CC.MenuBorderPixel * 2 + (size + CC.MenuBorderPixel) * ynum
  if height < pich then
    height = pich
  end
  y2 = height
  height = height + CC.MenuBorderPixel * 2 + size * 2
  x1 = (CC.ScreenW - (width)) / 2 + CC.MenuBorderPixel
  x2 = x1 + (picw)
  y1 = (CC.ScreenH - (height)) / 2 + CC.MenuBorderPixel + 2 + size * 0.7
  y2 = y2 + (y1) - 5
  local select = 1
  
  
  Cls();
  
  DrawBoxTitle(width, height, title, C_GOLD)
  if headid ~= nil then
    --lib.PicLoadCache(1, headid, x1, y1, 1, 0)
	lib.LoadPNG(1, headid, x1, y1,1)
  end
  for i = 1, ynum do
    DrawString(x2, y1 + (CC.MenuBorderPixel + size) * (i - 1), strArray[i], C_WHITE, size)
  end
  
  local surid = lib.SaveSur((CC.ScreenW - (width)) / 2 - 4, (CC.ScreenH - (height)) / 2 - size, (CC.ScreenW + (width)) / 2 + 4, (CC.ScreenH + (height)) / 2 + 4)
  
  while true do
	if JY.Restart == 1 then
		break
	end
  	Cls();
  	lib.LoadSur(surid, (CC.ScreenW - (width)) / 2 - 4, (CC.ScreenH - (height)) / 2 - size)
  	
	  for i = 1, num do
	    local color, bjcolor = nil, nil
	    if i == select then
	      color = M_Yellow
	      bjcolor = M_DarkOliveGreen
	    else
	      color = M_DarkOliveGreen
	    end
	    xarr[i] = (CC.ScreenW - (width)) / 2 + (width) * i / (num + 1) - string.len(button[i]) * size / 4;
	    DrawStrBox2(xarr[i], y2, button[i], color, size, bjcolor)
	  end
	  ShowScreen()
	  
	  local key, ktype, mx, my = WaitKey(1)
	  lib.Delay(CC.Frame)
	  if key == VK_ESCAPE or ktype == 4 then
	  	if isEsc ~= nil and isEsc == 1 then
	  		select = -2;
	  		break;
	  	end
	  elseif key == VK_LEFT or ktype == 6 then
	    select = select - 1
	    if select < 1 then
	      select = num
	    end
	  elseif key == VK_RIGHT or ktype == 7 then
	    select = select + 1
	    if num < select then
	      select = 1
	    end
	  elseif key == VK_RETURN or key == VK_SPACE or ktype == 5 then
	    break;
	  elseif ktype == 2 or ktype == 3 then
	  	if mx >= x1 and mx <= x1 + width and my >= y2 and my <= y2 + 2*CC.MenuBorderPixel + size then
				--无酒不欢：这里pass in select，避免在选择不到的情况下返回不存在的选项
				select = between(mx, select);
				if select > 0 and select <= num and ktype==3 then
					break;
				end
	  	end
	  end
	end
	select = limitX(select, -2, num)
	lib.FreeSur(surid)
	
	Cls();
	return select
end


--显示带边框的文字
function DrawBoxTitle(width, height, str, color)
  local s = 4
  local x1, y1, x2, y2, tx1, tx2 = nil, nil, nil, nil, nil, nil
  local fontsize = s + CC.DefaultFont
  local len = string.len(str) * fontsize / 2
  x1 = (CC.ScreenW - width) / 2
  x2 = (CC.ScreenW + width) / 2
  y1 = (CC.ScreenH - height) / 2
  y2 = (CC.ScreenH + height) / 2
  tx1 = (CC.ScreenW - len) / 2
  tx2 = (CC.ScreenW + len) / 2
  lib.Background(x1, y1 + s, x1 + s, y2 - s, 128)
  lib.Background(x1 + s, y1, x2 - s, y2, 128)
  lib.Background(x2 - s, y1 + s, x2, y2 - s, 128)
  lib.Background(tx1, y1 - fontsize / 2 + s, tx2, y1, 128)
  lib.Background(tx1 + s, y1 - fontsize / 2, tx2 - s, y1 - fontsize / 2 + s, 128)
  local r, g, b = GetRGB(color)
  DrawBoxTitle_sub(x1 + 1, y1 + 1, x2, y2, tx1 + 1, y1 - fontsize / 2 + 1, tx2, y1 + fontsize / 2, RGB(math.modf(r / 2), math.modf(g / 2), math.modf(b / 2)))
  DrawBoxTitle_sub(x1, y1, x2 - 1, y2 - 1, tx1, y1 - fontsize / 2, tx2 - 1, y1 + fontsize / 2 - 1, color)
  DrawString(tx1 + 2 * s, y1 - (fontsize - s) / 2, str, color, CC.DefaultFont)
end

function DrawBoxTitle_sub(x1, y1, x2, y2, tx1, ty1, tx2, ty2, color)
  local s = 4
  lib.DrawRect(x1 + s, y1, tx1, y1, color)
  lib.DrawRect(tx2, y1, x2 - s, y1, color)
  lib.DrawRect(x2 - s, y1, x2 - s, y1 + s, color)
  lib.DrawRect(x2 - s, y1 + s, x2, y1 + s, color)
  lib.DrawRect(x2, y1 + s, x2, y2 - s, color)
  lib.DrawRect(x2, y2 - s, x2 - s, y2 - s, color)
  lib.DrawRect(x2 - s, y2 - s, x2 - s, y2, color)
  lib.DrawRect(x2 - s, y2, x1 + s, y2, color)
  lib.DrawRect(x1 + s, y2, x1 + s, y2 - s, color)
  lib.DrawRect(x1 + s, y2 - s, x1, y2 - s, color)
  lib.DrawRect(x1, y2 - s, x1, y1 + s, color)
  lib.DrawRect(x1, y1 + s, x1 + s, y1 + s, color)
  lib.DrawRect(x1 + s, y1 + s, x1 + s, y1, color)
  DrawBox_1(tx1, ty1, tx2, ty2, color)
end

function Init_SMap(showname)
	lib.PicInit()
	--加载场景贴图文件
	lib.PicLoadFile(CC.SMAPPicFile[1], CC.SMAPPicFile[2], 0)

	lib.LoadPNGPath(CC.HeadPath, 1, CC.HeadNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.BodyPath, 90, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	
	lib.LoadPNGPath(CC.PTPath, 95, CC.PTNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.XTPath, 91, CC.XTNum, limitX(CC.ScreenW/936*100,0,100))	--UI			
	lib.LoadPNGPath(CC.BJPath, 10, CC.BJNum, limitX(CC.ScreenW/936*100,0,100))		--奇穴
	lib.LoadPNGPath(CC.UIPath, 96, CC.UINum, limitX(CC.ScreenW/936*100,0,100))
	lib.PicLoadFile(CC.BJ[1], CC.BJ[2], 92)
	
	lib.PicLoadFile(CC.ThingPicFile[1], CC.ThingPicFile[2], 2, 100, 100)
  
	PlayMIDI(JY.Scene[JY.SubScene]["进门音乐"])
	JY.oldSMapX = -1
	JY.oldSMapY = -1
	JY.SubSceneX = 0
	JY.SubSceneY = 0
	JY.OldDPass = -1
	JY.D_Valid = nil
	DrawSMap()
	lib.GetKey()
	if showname == 1 then
		DrawStrBox(-1, 10, JY.Scene[JY.SubScene]["名称"], C_WHITE, CC.DefaultFont)
		ShowScreen()
		WaitKey()
	end
  
	AutoMoveTab = {[0] = 0}
end

--新对话方式
--加入控制字符
--暂停，任意键后继续，ｐ
--控制颜色Ｒ=redＧ=goldＢ=blackＷ=whiteＯ=orange
--控制字符显示速度０,１,２,３,４,５,６,７,８,９
--控制字体ＡＳＤＦ
--控制换行Ｈ   分页Ｐ
--Ｎ代表自己ｎ代表主角
function say(s,pid,flag,name)          --个人新对话

if flag == nil or flag < 1 then flag = 1 end	
	if pid == nil then pid = 0 end
	if JY.Restart == 1 then
		return
	end
    local picw=130;       --最大头像图片宽高
	local pich=130;
	local talkxnum=20;         --对话一行字数
	local talkynum=3;          --对话行数
	local dx=2;
	local dy=2;
    local boxpicw=picw+10;
	local boxpich=pich+10;
	local boxtalkw=talkxnum*CC.DefaultFont+10;
	local boxtalkh=boxpich-27;
	local headid = pid;
	--头像的确认
	if pid == 0 then
		if JY.Base["标准"] > 0 then
			if JY.Person[0]["性别"] == 0 then
				headid = 280 + JY.Base["标准"]
			else
				headid = 500 + JY.Base["标准"]
			end
		--特殊
		elseif JY.Base["特殊"] > 0 then
			if JY.Person[0]["性别"] == 0 then
				headid = 290
			else
				headid = 368
			end
		else
			headid = JY.Person[pid]["头像代号"]
			if headid == 217 then
			headid = 389
			end
			if headid == 93 then
			   if JY.Base["畅想"] == 507 then
			   headid = 206
			   end
			end
		end
    else
	    if headid == 217 then
		headid = 389
		end
		if headid == 93 then
		   if pid == 507 then
			   headid = 206
		   end
		end
			   if (pid == 0 and JY.Base["畅想"] == 646) or pid == 646 then
			   headid = 584
			   end
	end
name=name or JY.Person[pid]["姓名"]
    local talkBorder=(pich-talkynum*CC.DefaultFont)/(talkynum+1)-5;

	--显示头像和对话的坐标
    local xy={ [0]={headx=dx,heady=dy,
	                talkx=dx+boxpicw+2,talky=dy+27,
					namex=dx+boxpicw+2,namey=dy,
					showhead=1},--左上
                   {headx=CC.ScreenW-1-dx-boxpicw-80,heady=CC.ScreenH-dy-boxpich+40,
				    talkx=CC.ScreenW-1-dx-boxpicw-boxtalkw-2-150,talky= CC.ScreenH-dy-boxpich+27,
					namex=CC.ScreenW-1-dx-boxpicw-26,namey=CC.ScreenH-dy-boxpich+100,
					showhead=1},--右下
                   {headx=dx,heady=dy,
				   talkx=dx+boxpicw-43,talky=dy+27,
					namex=dx+boxpicw+2,namey=dy,
				   showhead=0},--上中
                   {headx=CC.ScreenW-1-dx-boxpicw,heady=CC.ScreenH-dy-boxpich,
				   talkx=CC.ScreenW-1-dx-boxpicw-boxtalkw-2,talky= CC.ScreenH-dy-boxpich+27,
					namex=CC.ScreenW-1-dx-boxpicw-96,namey=CC.ScreenH-dy-boxpich,
					showhead=1},
                   {headx=CC.ScreenW-1-dx-boxpicw,heady=dy,
				    talkx=CC.ScreenW-1-dx-boxpicw-boxtalkw-2,talky=dy+27,
					namex=CC.ScreenW-1-dx-boxpicw-96,namey=dy,
					showhead=1},--右上
                   {headx=dx+68,heady=CC.ScreenH-dy-boxpich+40,
				   talkx=dx+boxpicw+2+160,talky=CC.ScreenH-dy-boxpich+27,
					namex=dx+boxpicw-50,namey=CC.ScreenH-dy-boxpich+100,
				   showhead=1}, --左下
			}

	if pid==0 then
	   if name ~= JY.Person[pid]["姓名"] then 
	      flag=5
	   else 
	      flag=1
	   end 
	else
	   flag=5
	end



  if xy[flag].showhead == 0 then
    headid = -1
  end

    lib.GetKey();

	local function readstr(str)
		local T1={"０","１","２","３","４","５","６","７","８","９"}
		local T2={{"Ｒ",C_RED},{"Ｇ",C_GOLD},{"Ｂ",C_BLACK},{"Ｗ",C_WHITE},{"Ｏ",C_ORANGE},{"Ｌ",LimeGreen},{"Ｄ",M_DeepSkyBlue},{"Ｚ",LightPurple}}
		local T3={{"Ｈ",CC.FontNameSong},{"Ｓ",CC.FontNameHei},{"Ｆ",CC.FontName}}
		--美观起见，针对不同字体同一行显示，需要微调ｙ坐标，以及字号
		--以默认的字体为标准，启体需下移，细黑需上移
		for i=0,9 do
			if T1[i+1]==str then return 1,i*50 end
		end
		for i=1,8 do
			if T2[i][1]==str then return 2,T2[i][2] end
		end
		for i=1,3 do
			if T3[i][1]==str then return 3,T3[i][2] end
		end
		return 0
	end

	local function mydelay(t)
		if t<=0 then return end
		lib.ShowSurface(0)
		lib.Delay(t)
	end

	local page, cy, cx = 0, 0, 0
  local color, t, font = C_WHITE, 0, CC.FontName
  while string.len(s) >= 1 do
	lib.GetKey();
	if JY.Restart == 1 then
		break
	end
    if page == 0 then
      Cls()
      if headid >= 0 then

		local w, h = lib.GetPNGXY(1, headid*2)
        local x = (picw - w) / 2
        local y = (pich - h) / 2
	    lib.LoadPicture(CC.SayBoxFile,-1,-1);
		lib.LoadPNG(90, headid*2, xy[flag].headx + 5 + x-76, xy[flag].heady + 5 + y-220, 1)
       -- DrawBox(xy[flag].headx, xy[flag].heady, xy[flag].headx + boxpicw, xy[flag].heady + boxpich, C_WHITE)
        --DrawBox(xy[flag].namex, xy[flag].namey, xy[flag].namex + 96, xy[flag].namey + 24, C_WHITE)
       lib.LoadPicture(CC.SayBoxNMFile,xy[flag].namex-35,xy[flag].namey-10,1);	
	   MyDrawString(xy[flag].namex, xy[flag].namex + 96, xy[flag].namey + 1, name, C_CYGOLD, 24)
        	
		--lib.LoadPNG(1, headid*2, xy[flag].headx + 5 + x, xy[flag].heady + 5 + y, 1)
      end
      --DrawBox(xy[flag].talkx, xy[flag].talky, xy[flag].talkx + boxtalkw, xy[flag].talky + boxtalkh, C_WHITE)
      page = 1
    end
		local str
		str=string.sub(s,1,1)
		if str=='*' then
			--str='Ｈ'
			s=string.sub(s,2,-1)
		else
			if string.byte(s,1,1) > 127 then		--判断单双字符
				str=string.sub(s,1,2)
				s=string.sub(s,3,-1)
			else
				str=string.sub(s,1,1)
				s=string.sub(s,2,-1)
			end
		end
		--开始控制逻辑
		if str=='*' then
		elseif str=="Ｈ" then
			cx=0
			cy=cy+1
			if cy==3 then
				cy=0
				page=0
			end
		elseif str=="Ｐ" then
			cx=0
			cy=0
			page=0
		elseif str=="ｐ" then
			ShowScreen();
			--WaitKey();
			lib.Delay(50)
		elseif str=="ｗ" then
			ShowScreen();
			WaitKey();
			--lib.Delay(50)
		elseif str=="Ｎ" then
			s=JY.Person[pid]["姓名"]..s
		elseif str=="ｎ" then
			s=JY.Person[0]["姓名"]..s
		else
			local kz1,kz2=readstr(str)
			if kz1==1 then
				t=kz2
			elseif kz1==2 then
				color=kz2
			elseif kz1==3 then
				font=kz2
			else
				lib.DrawStr(xy[flag].talkx+CC.DefaultFont*cx+5,
							xy[flag].talky+(CC.DefaultFont+talkBorder)*cy+talkBorder-8,
							str,color,CC.DefaultFont,font,0,0, 305)
				mydelay(t)
				cx=cx+string.len(str)/2
				if cx==talkxnum then
					cx=0
					cy=cy+1
					if cy==talkynum then
						cy=0
						page=0
					end
				end
			end
		end
		--如果换页，则显示，等待按键
		if page==0 or string.len(s)<1 then
			ShowScreen();
			--WaitKey();	--飝
			lib.Delay(100)
		end

	end


	if JY.Restart == 1 then
		do return end
	end

	Cls();
end

---
function MyDrawString(x1, x2, y, str, color, size)
	local len = math.modf(string.len(str) * size / 4)
	local x = math.modf((x1 + x2) / 2) - len
	DrawString(x, y, str, color, size)
end

--分割字符串
--szFullString字符串
--szSeparator分割符
--返回总数,分割后数组
function Split(szFullString, szSeparator)
  local nFindStartIndex = 1
  local nSplitIndex = 1
  local nSplitArray = {}
  while true do
    local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex)
    if not nFindLastIndex then
      nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString))
      break;
    else
	    nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1)
	    nFindStartIndex = nFindLastIndex + string.len(szSeparator)
	    nSplitIndex = nSplitIndex + 1
	  end
  end
  return nSplitIndex, nSplitArray
end

function DrawStrBox2(x, y, str, color, size, bjcolor)
  local strarray = {}
  local num, maxlen = nil, nil
  maxlen = 0
  num, strarray = Split(str, "*")
  for i = 1, num do
    local len = string.len(strarray[i])
    if maxlen < len then
      maxlen = len
    end
  end
  local w = size * maxlen / 2 + 2 * CC.MenuBorderPixel
  local h = 2 * CC.MenuBorderPixel + size * num
  if x == -1 then
    x = (CC.ScreenW - size / 2 * maxlen - 2 * CC.MenuBorderPixel) / 2
  end
  if y == -1 then
    y = (CC.ScreenH - size * num - 2 * CC.MenuBorderPixel) / 2
  end
  DrawBox2(x, y, x + w - 1, y + h - 1, C_WHITE, bjcolor)
  for i = 1, num do
    DrawString(x + CC.MenuBorderPixel, y + CC.MenuBorderPixel + size * (i - 1), strarray[i], color, size)
  end
end

--绘制一个带背景的白色方框，四角凹进
function DrawBox2(x1, y1, x2, y2, color, bjcolor)
  local s = 4
  if not bjcolor then
    bjcolor = 0
  end
  if bjcolor >= 0 then
    lib.Background(x1, y1 + s, x1 + s, y2 - s, 128, bjcolor)
    lib.Background(x1 + s, y1, x2 - s, y2, 128, bjcolor)
    lib.Background(x2 - s, y1 + s, x2, y2 - s, 128, bjcolor)
  end
  if color >= 0 then
    local r, g, b = GetRGB(color)
    DrawBox_2(x1 + 1, y1, x2, y2, RGB(math.modf(r / 2), math.modf(g / 2), math.modf(b / 2)))
    DrawBox_2(x1, y1, x2 - 1, y2 - 1, color)
  end
end

--绘制四角凹进的方框
function DrawBox_2(x1, y1, x2, y2, color)
  local s = 4
  lib.DrawRect(x1 + s, y1, x2 - s, y1, color)
  lib.DrawRect(x2 - s, y1, x2 - s, y1 + s, color)
  lib.DrawRect(x2 - s, y1 + s, x2, y1 + s, color)
  lib.DrawRect(x2, y1 + s, x2, y2 - s, color)
  lib.DrawRect(x2, y2 - s, x2 - s, y2 - s, color)
  lib.DrawRect(x2 - s, y2 - s, x2 - s, y2, color)
  lib.DrawRect(x2 - s, y2, x1 + s, y2, color)
  lib.DrawRect(x1 + s, y2, x1 + s, y2 - s, color)
  lib.DrawRect(x1 + s, y2 - s, x1, y2 - s, color)
  lib.DrawRect(x1, y2 - s, x1, y1 + s, color)
  lib.DrawRect(x1, y1 + s, x1 + s, y1 + s, color)
  lib.DrawRect(x1 + s, y1 + s, x1 + s, y1, color)
end

--初始化主地图
function Init_MMap()
	lib.PicInit()
	lib.LoadMMap(CC.MMapFile[1], CC.MMapFile[2], CC.MMapFile[3], CC.MMapFile[4], CC.MMapFile[5], CC.MWidth, CC.MHeight, JY.Base["人X"], JY.Base["人Y"])
  
	lib.PicLoadFile(CC.MMAPPicFile[1], CC.MMAPPicFile[2], 0)
  
	lib.LoadPNGPath(CC.HeadPath, 1, CC.HeadNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.BodyPath, 90, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	
	lib.LoadPNGPath(CC.PTPath, 95, CC.PTNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.XTPath, 91, CC.XTNum, limitX(CC.ScreenW/936*100,0,100))	--UI		
	lib.LoadPNGPath(CC.UIPath, 96, CC.UINum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.BJPath, 10, CC.BJNum, limitX(CC.ScreenW/936*100,0,100))		--奇穴
  lib.PicLoadFile(CC.BJ[1], CC.BJ[2], 92)
	lib.PicLoadFile(CC.ThingPicFile[1], CC.ThingPicFile[2], 2, 100, 100)

	JY.EnterSceneXY = nil
	JY.oldMMapX = -1
	JY.oldMMapY = -1
	PlayMIDI(JY.MmapMusic)
  
	AutoMoveTab = {[0] = 0}
end

--自定义的进入子场景的函数
--需要进入的子场景编号
--x进入子场景后人物的X坐标，传入-1则默认为入口X
--y进入子场景后人物的Y坐标，传入-1则默认为入口Y
--direct人物面对的方向
function My_Enter_SubScene(sceneid,x,y,direct)
	--从大地图进入子场景前自动保存到10号档
	if JY.Status == GAME_MMAP then
		SaveRecord(10)
	end
	JY.SubScene = sceneid;
	local flag = 1;   --是否自定义的xy坐标, 0是，1否
	if x == -1 and y == -1 then
		JY.Base["人X1"]=JY.Scene[sceneid]["入口X"];
		JY.Base["人Y1"]=JY.Scene[sceneid]["入口Y"];
	else
		JY.Base["人X1"] = x;
		JY.Base["人Y1"] = y;
		flag = 0;
	end
	
	if direct > -1 then
		JY.Base["人方向"] = direct;
	end
 			
	
	if JY.Status == GAME_MMAP then
		CleanMemory();
		lib.UnloadMMap();
	end
	lib.ShowSlow(20,1)

	JY.Status=GAME_SMAP;  --改变状态
	JY.MmapMusic=-1;

	JY.Base["乘船"]=0;
	JY.MyPic=GetMyPic(); 
  
	--外景入口是个难点，有些子场景是通过跳转的方式进入的，需要判断
	--由于目前最多只能有一个子场景跳转，所以不需要进行循环判断
	local sid = JY.Scene[sceneid]["跳转场景"];
  
	if sid < 0 or (JY.Scene[sid]["外景入口X1"] <= 0 and JY.Scene[sid]["外景入口Y1"] <= 0) then
		JY.Base["人X"] = JY.Scene[sceneid]["外景入口X1"];  --改变出子场景后的XY坐标
		JY.Base["人Y"] = JY.Scene[sceneid]["外景入口Y1"];
	else
		JY.Base["人X"] = JY.Scene[sid]["外景入口X1"];  --改变出子场景后的XY坐标
		JY.Base["人Y"] = JY.Scene[sid]["外景入口Y1"];
	end


	Init_SMap(flag);  --重新初始化地图
  
	if flag == 0 then    --如果是自定义位置，先传送到那个位置，再显示场景名称
		DrawStrBox(-1,10,JY.Scene[JY.SubScene]["名称"],C_WHITE,CC.DefaultFont);
		ShowScreen();
		WaitKey();
	end
  
	Cls();	
end

--简易信息
function JYZTB()
	local tnd = math.fmod(JY.Base["难度"],#MODEXZ2);
	if tnd == 0 then
		tnd = #MODEXZ2
	end
	local zjlx;
	if JY.Base["标准"] > 0 then
		zjlx = "标准"
	elseif JY.Base["畅想"] > 0 then
		zjlx = "畅想"
	elseif JY.Base["特殊"] > 0 then
		zjlx = "特殊"
	end
	local t = math.modf((lib.GetTime() - JY.LOADTIME) / 60000 + GetS(14, 2, 1, 4))
	local t1, t2 = 0, 0
	while t >= 60 do
		t = t - 60
		t1 = t1 + 1
	end
	t2 = t
	local i = 0
	local as = 0
	if JY.Base["斗神"]> 0 and JY.Base["特殊"] > 0 then----令狐冲
    as = CC.FontSmall2 + CC.RowPixel	
	end
	DrawBox(10, 10, 10 + 10*CC.FontSmall2, 20+ 5*(CC.FontSmall2 + CC.RowPixel)+as, M_SandyBrown)
	DrawString(15, 15, "正邪", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*2+4, 14, JY.Person[0]["品德"], M_Silver, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15, "银", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*5+4, 16, "两", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*6+8, 15, JY.GOLD, Dark_Gold, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), string.format("江湖时间 %2d时%2d分", t1, t2), M_SandyBrown, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "难度", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*2+4, 15+i*(CC.FontSmall2+CC.RowPixel), MODEXZ2[tnd], Violet, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "天书数量", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15+i*(CC.FontSmall2+CC.RowPixel), JY.Base["天书数量"], PinkRed, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "主角类型", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15+i*(CC.FontSmall2+CC.RowPixel), zjlx, Violet, CC.FontSmall2)
	if JY.Base["斗神"]> 0 and JY.Base["特殊"] > 0 then----令狐冲
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "斗神类型", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15+i*(CC.FontSmall2+CC.RowPixel), JY.Person[645]["姓名"], Violet, CC.FontSmall2)	
	end
end

function QZXS(s)
	DrawStrBoxWaitKey(s, C_GOLD, CC.DefaultFont)
end

--显示武功的文字
function KungfuString(str, x, y, color, size, font, place)
  if str == nil then
    return 
  end
  local w, h = size, size + 5
  local len = string.len(str) / 2
  x = x - len * w / 2
  y = y - h * place
  lib.DrawStr(x, y, str, color, size, font, 0, 0)
end

--清除贴图文字
function ClsN(x1, y1, x2, y2)
  if x1 == nil then
    x1 = 0
    y1 = 0
    x2 = 0
    y2 = 0
  end
  lib.SetClip(x1, y1, x2, y2)
  lib.FillColor(0, 0, 0, 0, 0)
  lib.SetClip(0, 0, 0, 0)
end


---对矩形进行屏幕剪裁
--返回剪裁后的矩形，如果超出屏幕，返回空
function ClipRect(r)
  if CC.ScreenW <= r.x1 or r.x2 <= 0 or CC.ScreenH <= r.y1 or r.y2 <= 0 then
    return nil
  else
    local res = {}
    res.x1 = limitX(r.x1, 0, CC.ScreenW)
    res.x2 = limitX(r.x2, 0, CC.ScreenW)
    res.y1 = limitX(r.y1, 0, CC.ScreenH)
    res.y2 = limitX(r.y2, 0, CC.ScreenH)
    return res
  end
end

--计算贴图改变形成的Clip裁剪
--(dx1,dy1) 新贴图和绘图中心点的坐标偏移。在场景中，视角不同而主角动时用到
--pic1 旧的贴图编号
--id1 贴图文件加载编号
--(dx2,dy2) 新贴图和绘图中心点的偏移
--pic2 旧的贴图编号
--id2 贴图文件加载编号
--返回，裁剪矩形 {x1,y1,x2,y2}
function Cal_PicClip(dx1, dy1, pic1, id1, dx2, dy2, pic2, id2)
  local w1, h1, x1_off, y1_off = lib.PicGetXY(id1, pic1 * 2)
  local old_r = {}
  old_r.x1 = CC.XScale * (dx1 - dy1) + CC.ScreenW / 2 - x1_off
  old_r.y1 = CC.YScale * (dx1 + dy1) + CC.ScreenH / 2 - y1_off
  old_r.x2 = old_r.x1 + w1
  old_r.y2 = old_r.y1 + h1
  local w2, h2, x2_off, y2_off = lib.PicGetXY(id2, pic2 * 2)
  local new_r = {}
  new_r.x1 = CC.XScale * (dx2 - dy2) + CC.ScreenW / 2 - x2_off
  new_r.y1 = CC.YScale * (dx2 + dy2) + CC.ScreenH / 2 - y2_off
  new_r.x2 = new_r.x1 + w2
  new_r.y2 = new_r.y1 + h2
  return MergeRect(old_r, new_r)
end

--合并矩形
function MergeRect(r1, r2)
  local res = {}
  res.x1 = math.min(r1.x1, r2.x1)
  res.y1 = math.min(r1.y1, r2.y1)
  res.x2 = math.max(r1.x2, r2.x2)
  res.y2 = math.max(r1.y2, r2.y2)
  return res
end

--自定义事件
function NEvent(keypress)
	NEvent2(keypress)		--十四本天书之后得到5000两，洗四神技
	NEvent3(keypress)		--胡斐 苗人凤教苗家剑法
	NEvent4(keypress)		--令狐冲变身
	NEvent6(keypress)		--蜘蛛洞 金龙帮
	NEvent10(keypress)	--武道大会放书
	NEvent12(keypress)	--归还金蛇剑
end

--显示阴影字符串
--如果x,y传-1，那么显示在屏幕中间
function NewDrawString(x, y, str, color, size)
	local ll = #str
	local w = size * ll / 2 + 2 * CC.MenuBorderPixel
	local h = size + 2 * CC.MenuBorderPixel
	if x == -1 then
		x = (CC.ScreenW - size / 2 * ll - 2 * CC.MenuBorderPixel) / 2
	else
		x = (x - size / 2 * ll - 2 * CC.MenuBorderPixel) / 2
	end
	if y == -1 then
		y = (CC.ScreenH - size - 2 * CC.MenuBorderPixel) / 2
	else
		y = (y - size - 2 * CC.MenuBorderPixel) / 2
	end
	lib.DrawStr(x, y, str, color, size, CC.FontName, CC.SrcCharSet, CC.OSCharSet)
end

--无酒不欢：仿造提款机ATM画的数字输入UI
function InputNum(str, minNum, maxNum, isEsc)
	local size = CC.DefaultFont;
	local b_space = size+CC.RowPixel
	local x=(CC.ScreenW-size*9-2*CC.MenuBorderPixel)/2;
	local y=(CC.ScreenH-size*9-2*CC.MenuBorderPixel)/2;
	local w=size*9+2*CC.MenuBorderPixel;
	local h=(b_space+CC.RowPixel*2)*6;
	local functional_button = {{name="确认"},{name="最大"},{name="清空"},{name="删除"},{name=0},{name=1},{name=2},{name=3},{name=4},{name=5},{name=6},{name=7},{name=8},{name=9}};
	local starting_y = 5;
	local starting_x = 1;

	for i = 1, #functional_button do
		functional_button[i].x1 = CC.ScreenW/2+(b_space+CC.RowPixel*2)*starting_x-11
		functional_button[i].y1 = y+(b_space+CC.RowPixel*2)*starting_y
		if i <= 4 then
			functional_button[i].x2 = CC.ScreenW/2+(b_space+CC.RowPixel*2)*starting_x-11+b_space*2
			functional_button[i].y2 = y+(b_space+CC.RowPixel*2)*starting_y+b_space
		else
			functional_button[i].x2 = CC.ScreenW/2+(b_space+CC.RowPixel*2)*starting_x-11+b_space
			functional_button[i].y2 = y+(b_space+CC.RowPixel*2)*starting_y+b_space
		end
		if i < 4 then
			starting_y = starting_y - 1
		elseif i == 4 then
			starting_y = 5
			starting_x = -1
		elseif i == 5 or i == 8 or i == 11 then
			starting_x = -2
			starting_y = starting_y - 1
		elseif i > 5 then
			starting_x = starting_x + 1
		end
	end

	local num = 0;
	if minNum ~= nil then
		num = minNum;
	end
	
	local selected_content = 0
	
	DrawBox(x,y,x+w-1,y+h-1,C_WHITE);
	DrawString(x+CC.MenuBorderPixel*2,y+CC.MenuBorderPixel,str.." "..minNum.." - "..maxNum,C_WHITE,size);
  
	local sid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH);
  
	while true do
		if JY.Restart == 1 then
			break
		end
		DrawShades(CC.ScreenW/2-b_space*3,y+b_space+CC.RowPixel*2,CC.ScreenW/2+b_space*3,y+b_space+CC.RowPixel*2+b_space)
		DrawString(CC.ScreenW/2,y+b_space+CC.RowPixel*2,string.format("%d",num),C_WHITE,size);
		
		for i = 1, #functional_button do
			local x_indent = 7
			local y_indent = 2
			if i > 4 then
				x_indent = 11
				y_indent = 0
			end
			local shade_color = nil;
			if i == selected_content then
				shade_color = C_GOLD
			end
			DrawShades(functional_button[i].x1,functional_button[i].y1,functional_button[i].x2,functional_button[i].y2,shade_color)
			DrawString(functional_button[i].x1+x_indent,functional_button[i].y1+y_indent,functional_button[i].name,C_GOLD,size);
		end
		
		ShowScreen()
		local key, ktype, mx, my = lib.GetKey();
		lib.Delay(CC.Frame)
		if (key == VK_ESCAPE or ktype == 4) and isEsc ~= nil then
			num = nil;
			break;
		elseif key >= 49 and key <= 57 then
			num = num * 10
			num = num + key - 48
			if num > maxNum then
				num = maxNum
			end
		elseif key >= 1073741913 and key <= 1073741921 then
			num = num * 10
			num = num + key - 1073741912
			if num > maxNum then
				num = maxNum
			end
		elseif key == 48 or key == 1073741922 then
			num = num * 10
			if num > maxNum then
				num = maxNum
			end
		elseif key == VK_BACKSPACE then
			num = math.modf(num/10)
		elseif key == VK_SPACE or key == VK_RETURN then
			if num >= minNum and num <= maxNum then
				break;
			end
		elseif ktype == 2 or ktype == 3 then
			selected_content = 0
			if mx >= x and mx <= x + w-1 and my >= y and my <= y + h-1 then
				for k = 1, #functional_button do 
					if mx >= functional_button[k].x1 and mx <= functional_button[k].x2 and my >= functional_button[k].y1 and my <= functional_button[k].y2 then
						selected_content = k;
						break;
					end
				end
			end
			if ktype == 3 then
				if selected_content == 1 then
					if num >= minNum and num <= maxNum then
						break;
					end
				elseif selected_content == 2 then
					num = maxNum
				elseif selected_content == 3 then
					num = 0
				elseif selected_content == 4 then
					num = math.modf(num/10)
				elseif selected_content > 4 then
					num = num * 10
					num = num + functional_button[selected_content].name
					if num > maxNum then
						num = maxNum
					end
				end
			end
		end
		ClsN();
		lib.LoadSur(sid,0,0)
	end
	lib.FreeSur(sid);
	return num;
end

--分析字符串中是否有颜色标志
--被DrawTxt函数调用
function AnalyString(str)
	local tlen = 0;
	local strcolor = {}
	--检查是否有颜色标志
	local f1, f2 = string.find(str, "<[A-R]>");
	if f1 ~= nil then
		while 1 do
			if f1 > 1 then
				local s1 = string.sub(str, 1, f1-1)
				table.insert(strcolor, {s1, nil});
				tlen = tlen + #s1;
			end
			local match = string.match(str, "<([A-R])>");
			local f3, f4 = string.find(str, "</"..match..">"); 
			if f3 ~= nil then
				local s2 = string.sub(str, f2+1, f3-1);
				table.insert(strcolor, {s2, CC.Color[match]});
				tlen = tlen + #s2;
				if f4+1 >= #str then
					break;
				end
				str = string.sub(str, f4+1, #str);
				f1, f2 = string.find(str, "<[A-R]>");
				--如果已经没有其它颜色标志，直接输入退出循环
				if f1 == nil then
					table.insert(strcolor, {str, nil});
					break;
				end
			else		--如果找不到结束标志，直接输入退出循环
				str = string.sub(str, f2+1, #str);
				table.insert(strcolor, {str, CC.Color[match]});
				break;
			end
		end
	else
		table.insert(strcolor, {str, nil});
	end
	return strcolor;
end

--存档列表
function SaveList()
	--读取R*.idx文件
	local idxData = Byte.create(24)
	Byte.loadfile(idxData, CC.R_IDXFilename[0], 0, 24)
	local idx = {}
	idx[0] = 0
	for i = 1, 6 do
		idx[i] = Byte.get32(idxData, 4 * (i - 1))
	end

	local table_struct = {}
	table_struct["姓名"]={idx[1]+8,2,10}
	table_struct["资质"]={idx[1]+122,0,2}
  
	table_struct["无用"]={idx[0]+2,0,2}
	table_struct["难度"]={idx[0]+24,0,2}
	
	table_struct["标准"]={idx[0]+26,0,2}
	table_struct["畅想"]={idx[0]+28,0,2}
	table_struct["特殊"]={idx[0]+30,0,2}
	
	table_struct["天书数量"]={idx[0]+32,0,2}
	
	table_struct["场景名称"]={idx[3]+2,2,10}
  
	--主角编号
	table_struct["队伍1"]={idx[0]+34,0,2}
  
	--table_struct[WZ7]={idx[2]+88,0,2}
  
	--时间保存在场景数据里
	--table_struct["游戏时间"]={(CC.SWidth*CC.SHeight*(14*6+4) + CC.SWidth + 2)*2, 0, 2}
	--S_XMax*S_YMax*(id*6+level)+y*S_XMax+x
	--14, 2, 1, 4
	--sFile,CC.TempS_Filename,JY.SceneNum,CC.SWidth,CC.SHeight

	--读取R*.grp文件

	local len = filelength(CC.R_GRPFilename[0]);
	local data = Byte.create(len);
	
	--读取SMAP.grp
	local slen  = filelength(CC.S_Filename[0]);
	local sdata = Byte.create(slen);
	
	local menu = {};

	for i=1, CC.SaveNum do
	
		local name = "";
		--local lv = "";
		local sname = "";
		local nd = "";
		local time = "";
		--天书数量
		local tssl = "";
		--主角类型
		local zjlx = "";	
		--资质
		local zz = "";
		
		if existFile(string.format('data/save/Save_%d',i)) then
			Byte.loadfilefromzip(data, string.format('data/save/Save_%d',i),'r.grp', 0, len);
			
			local pid = GetDataFromStruct(data,0,table_struct,"队伍1");
			
			name = GetDataFromStruct(data,pid*CC.PersonSize,table_struct,"姓名");
			zz = GetDataFromStruct(data,pid*CC.PersonSize,table_struct,"资质");
			
			local wy = GetDataFromStruct(data,0,table_struct,"无用");
			if wy == -1 then
				sname = "大地图";
			else
				sname = GetDataFromStruct(data,wy*CC.SceneSize,table_struct,"场景名称").."";
			end
			
			local lxid1 = GetDataFromStruct(data,0,table_struct,"标准");
			local lxid2 = GetDataFromStruct(data,0,table_struct,"畅想");
			local lxid3 = GetDataFromStruct(data,0,table_struct,"特殊");
			
			if lxid1 > 0 then
				zjlx = "标准"
			elseif lxid2 > 0 then
				zjlx = "畅想"
			elseif lxid3 > 0 then
				zjlx = "特殊"
			end
			
			local wz = GetDataFromStruct(data,0,table_struct,"难度");
			tssl = GetDataFromStruct(data,0,table_struct,"天书数量").."本";

			nd = MODEXZ2[wz]
			
			--游戏时间
			--[[
			Byte.loadfile(sdata, string.format(CC.S_GRP,i), 0, slen);
			
			local t = GetDataFromStruct(sdata, 0, table_struct, "游戏时间")
			local t1, t2 = 0, 0
			while t >= 60 do
				t = t - 60
				t1 = t1 + 1
			end
			t2 = t
		  
			time = string.format("%2d时%2d秒", t1, t2)]]
		end
		
		if i < 10 then
			menu[i] = {string.format("存档%02d %-4s %-10s %-4s %4s %4s %-10s", i, zjlx, name, nd, zz, tssl, sname), nil, 1};
		else
			menu[i] = {string.format("自动档 %-4s %-10s %-4s %4s %4s %-10s", zjlx, name, nd, zz, tssl, sname), nil, 1};
		end
	end

	local menux=(CC.ScreenW-24*CC.DefaultFont-2*CC.MenuBorderPixel)/2
	local menuy=(CC.ScreenH - 9*(CC.DefaultFont+CC.RowPixel))/2

	local r=ShowMenu(menu,CC.SaveNum,10,menux,menuy,0,0,1,1,CC.DefaultFont,C_WHITE,C_GOLD)
	
	CleanMemory()
	return r;
end

--动态提示显示
function DrawTimer()
	if CC.OpenTimmerRemind ~= 1 then
		return;
	end
	local t2 = lib.GetTime();
	if CC.Timer.status==0 then
		if t2-CC.Timer.stime > 30000 or CC.Timer.stime == 0 then
			CC.Timer.stime=t2;
			CC.Timer.status=1;
			CC.Timer.str=CC.RUNSTR[math.random(#CC.RUNSTR)];
			CC.Timer.len=string.len(CC.Timer.str)/2+3;
		end
	else
		CC.Timer.fun(t2);
	end
end

function demostr(t)
	local tt=t-CC.Timer.stime;
	tt=math.modf(tt/25)%(CC.ScreenW+CC.Timer.len*CC.Fontsmall);
	if runword(CC.Timer.str,M_Orange,CC.Fontsmall,1,tt)==1 then
		CC.Timer.status=0;
		CC.Timer.stime=t;
	end
end

function runword(str,color,size,place,offset)
	offset=CC.ScreenW-offset;
	local y1,y2
	if place==0 then
		y1=0;
		y2=size;
	elseif place==1 then
		y1=CC.ScreenH-size;
		y2=CC.ScreenH;
	end
	lib.Background(0,y1,CC.ScreenW,y2,128);
	if -offset>(CC.Timer.len-1)*size then
		return 1;
	end
	DrawString(offset,y1,str,color,size);
	return 0;
end

function dark()
	instruct_14()
end

function light()
	instruct_13()
end

function addeffect(eft, pp, num)
	eft[pp] = num
end

function addeffect2(eft, pp, num,flag)
	if eft[pp] == nil then
		eft[pp] = num
    else
	    eft[pp] = eft[pp] +num
	end
	if flag~=nil then
	   eft[pp] = math.min(eft[pp],flag) 
	end
end

function reseteffect(eft, pp)
	if eft[pp] ~= nil then
		eft[pp] = eft[pp] - 1
		if eft[pp] <= 0 then
			eft[pp] = nil
		end
	end
end

function reseteffect2(eft, pp,num)
	if eft[pp] ~= nil then
		eft[pp] = eft[pp] - num
		if eft[pp] <= 0 then
			eft[pp] = nil
		end
	end
end

--无酒不欢：添加事件函数
function addevent(sid, pid, pass, event, etype, pic, x, y)
	if JY.Restart == 1 then
		return
	end
	if x == nil then x = -2 end
	if y == nil then y = -2 end
	if pic == nil then pic = -2 end
	if etype == nil then etype = 1 end
	if event == nil then event = -2 end
	if pass == nil then pass = -2 end
	if etype == 1 then
		instruct_3(sid, pid, pass, 0, event, 0, 0, pic, pic, pic, -2, x, y)
	elseif etype == 2 then
		instruct_3(sid, pid, pass, 0, 0, event, 0, pic, pic, pic, -2, x, y)
	else
		instruct_3(sid, pid, pass, 0, 0, 0, event, pic, pic, pic, -2, x, y)
	end	
end

--无酒不欢：删除事件函数
function null(sid, pid)
	addevent(sid, pid, 0, 0, 0, 0)
end

--无酒不欢：畅想的选择菜单
function ShowMenu3(menu,itemNum,numShow,showRow,x1,y1,size,color,selectColor)
    local w=0;
    local h=0;   --边框的宽高
    local i,j=0,0;
    local col=0;     --实际的显示菜单项
    local row=0;
    
    lib.GetKey();
    Cls();
    
    --建一个新的table
    local menuItem = {};
    local numItem = 0;                --显示的总数
    
    --把可选为畅想的人物保存到新的table
    for i,v in pairs(menu) do
        if v[3] ~= 0 then
            numItem = numItem + 1;
			menuItem[numItem] = {v[1],v[2],v[3],i};                --注意第4个位置，保存i的值
        end
    end
    
    --计算实际显示的菜单项数
    if numShow==0 or numShow > numItem then
        col=numItem;
        row = 1;
    else
		--列数
        col=numShow;
		--(项目总数-1)/列数=行数
        row = math.modf((numItem-1)/col);
    end
    
    if showRow > row + 1 then
        showRow = row + 1;
    end

    --计算边框实际宽高
    local maxlength=0;

	for i=1,numItem do
		if string.len(menuItem[i][1])>maxlength then
			maxlength=string.len(menuItem[i][1]);
		end
	end
	w=(size*maxlength/2+CC.RowPixel*2)*col+2*CC.MenuBorderPixel;
	h=showRow*(size+CC.RowPixel*2) + 2*CC.MenuBorderPixel;

    local start=0;             --显示的第一项

    local curx = 1;          --当前选择项
    local cury = 0;
    local current = curx + cury*numShow;

    local returnValue =0;

    local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)

    while true do
		if JY.Restart == 1 then
			break
		end
        if col ~= 0 then
            lib.LoadSur(surid, 0, 0)
        end
		--说明行在此
		DrawString(x1+(size+CC.RowPixel)*3,y1-(size+CC.RowPixel)*2-CC.RowPixel,"PgUp/PgDn/鼠标滚轮翻页",LimeGreen,size);
		DrawString(x1+(size+CC.RowPixel)*3,y1-(size+CC.RowPixel)*1,"名称黄色为一阶 名称蓝色为高阶",LimeGreen,size);
		for i=start,showRow+start-1 do
			for j=1, col do
				local n = i*col+j;
				if n > numItem then
					break;
				end
                
				--设置不同的绘制颜色
                local drawColor=color; 
                if menuItem[n][3] == 2 then
					drawColor = M_DeepSkyBlue
                end
                local xx = x1+10+(j-1)*(size*maxlength/2+CC.RowPixel*2) + CC.MenuBorderPixel+20
                local yy = y1+10+(i-start)*(size+CC.RowPixel*2) + CC.MenuBorderPixel
                if n==current then
                    drawColor=selectColor;
                    lib.Background(xx-5, yy-5, xx + size*maxlength/2, yy + size+5, 128, color)
                end
                DrawString(xx,yy,menuItem[n][1],drawColor,size);

            end
        end
		ShowScreen();
		local keyPress, ktype, mx, my = WaitKey(1)
		local mk = false;
		lib.Delay(CC.Frame);

		if keyPress==VK_DOWN then                --Down
			cury = cury + 1;
					if cury == showRow then
						cury = 0
					elseif curx + cury*col > numItem then
						cury = 15
					end
		elseif keyPress==VK_UP then                  --Up
					if cury ~= 15 then
						cury = cury -1;
						if cury < 0 then
							cury = showRow-1;
						end
					else
						cury = row
					end
		elseif keyPress==VK_RIGHT then                --RIGHT
                    curx = curx +1;
                    if curx > col then
                        curx = 1;
                    elseif curx + cury*col > numItem then
                        curx = 1;
                    end
		elseif keyPress==VK_LEFT then                  --LEFT
                    curx = curx -1;
                    if curx < 1 then
                        curx = col;
                        if curx + cury*col > numItem then
							curx = numItem - cury*col;
                        end
                    end
		elseif keyPress==VK_PGUP or ktype == 6 then    --PgUp 或 鼠标滚轮上
					if start == 30 then
						start = start - 15;
						curx = 1
						cury = 15
						mk = true;
					elseif start == 15 then
						start = start - 15;
						curx = 1
						cury = 0
						mk = true;
					end
				elseif keyPress==VK_PGDN or ktype == 7 then    --PgDn 或 鼠标滚轮下	
					if start == 15 then
						start = start + 15;
						curx = 1
						cury = 30
						mk = true;
					elseif start == 0 then
						start = start + 15;
						curx = 1
						cury = 15
						mk = true;
					end
		else
			if ktype == 2 or ktype == 3 then			--选中
				--无酒不欢：加个逻辑判定防止跳出
				local re1, re2 = curx, cury;
				if mx >= x1 and mx <= x1 + w and my >= y1 and my <= y1 + h then
					curx = math.modf((mx-x1-CC.MenuBorderPixel)/(size*maxlength/2+CC.RowPixel*2)) + 1
					cury = start + math.modf((my - y1 - CC.MenuBorderPixel) / (size + CC.RowPixel*2))
					mk = true;
				end
				if (curx + cury*col) > #menuItem then
					curx = re1
					cury = re2
					mk = false;
				end
			end
			--空格，回车，
			if keyPress==VK_SPACE or keyPress==VK_RETURN or ktype == 5 or (ktype == 3 and mk) then
				current = curx + cury*col;
				if menuItem[current][3]==3 then
				
				elseif menuItem[current][2]==nil then
					returnValue=current;
					break;
				else
					local r=menuItem[current][2](menuItem,current);               --调用菜单函数
					if r==1 then
						returnValue= -current;
						break;
					else
						lib.LoadSur(surid, 0, 0)
					end
				end
            end
		end 
		current = curx + cury*col;
    end
	lib.FreeSur(surid)
        
	--返回值，这个是取第4个位置的值
	if returnValue > 0 then
		return menuItem[returnValue][4]
	else
		return returnValue
	end
end

--无酒不欢：获取武功威力
function get_skill_power(personid, wugongid, wugonglvl)
	local power;
	local kfkind = JY.Wugong[wugongid]["武功类型"]
	--到极的武功按10级威力算
	if wugonglvl == 11 then
		wugonglvl = 10
	end
	power = JY.Wugong[wugongid]["攻击力"..wugonglvl]
	--提高天赋内功的威力
	if power < 1000 and Given_NG(personid, wugongid) then
		power = power + 100
		if power > 1000 then
			power = 1000
		end
	end
	--觉醒后翻倍的众人
	--王重阳+全真七子，全真剑法
	if wugongid == 39 and JY.Person[0]["六如觉醒"] > 0 then
		if match_ID(personid, 123) or match_ID(personid, 124) or match_ID(personid, 125) or match_ID(personid, 126) or
		match_ID(personid, 127) or match_ID(personid, 128) or match_ID(personid, 129) or match_ID(personid, 68) then
			power = power * 2
		end
	end
	if wugongid == 58 and JY.Person[0]["六如觉醒"] > 0 then
		if match_ID(personid, 448) then
			power = power * 2
		end
	end
	--石破天，金乌
	if wugongid == 61 and JY.Person[0]["六如觉醒"] > 0 and match_ID(personid, 38) then
		power = power * 1.5
	end
	if wugongid == 1  and match_ID(personid, 400) then
		power = power + 300
	end
	--梅超风，九阴白骨爪
	if wugongid == 11 and JY.Person[0]["六如觉醒"] > 0 and match_ID(personid, 78) then
		power = power * 1.5
	end
	--韦一笑，寒冰绵掌
	if wugongid == 5 and JY.Person[0]["六如觉醒"] > 0 and match_ID(personid, 14) then
		power = power * 2
	end
	if wugongid == 55 and wglw(personid, 55)>1 then
		power = power + JY.Person[personid]["轻功"]*wglw(personid, 55)
	end
	--殷天正，鹰爪功
	if wugongid == 4 and JY.Person[0]["六如觉醒"] > 0 and match_ID(personid, 12) then
		power = power * 2
	end
	--朱聪，分筋错骨手
	if wugongid == 117 and JY.Person[0]["六如觉醒"] > 0 and match_ID(personid, 131) then
		power = power * 2
	end
	--潇湘子，鹤蛇八打
	if wugongid == 74 and JY.Person[0]["六如觉醒"] > 0 and match_ID(personid, 157) then
		power = power * 2
	end
	--何铁手战斗中五毒威力翻倍
	if match_ID(personid, 83) and wugongid == 3 and JY.Status == GAME_WMAP and WAR.HTS > 0 then
		power = power * WAR.HTS
	end

	--提高天赋外功的威力
	if Given_WG(personid, wugongid) then
		if power < 1200 then
			power = power + 200
		elseif power >= 1200 and power < 1400 then
			power = 1400
		end
	end

	if wglw(personid, 77)>=1 and wugongid == 77 then
		power = power + sixi(personid,3)*2
	end
	
	if wglw(personid, 1)>=1 and wugongid == 1 then
		power = power + sixi(personid,1)*2
		if wglw(personid, 1)>1 then
		power = power + math.modf(JY.Person[personid]["实战"]*1.25)
		end
	end	
	
	if wglw(personid, 52)>=1 and wugongid == 52 then----鬼头刀法随实战增加威力
		power = power + math.modf(JY.Person[personid]["实战"]*1.25)
	end
	
	if wglw(personid, 35)>1 and wugongid == 35 then----冰雪神剑限定雪山剑法
		power = power + 500
	end

	if wglw(personid, 129)>1 and wugongid == 129 then----冰雪神剑限定雪山剑法
		power = power + 200*wglw(personid, 129)
	end
	
	if nglw(personid,102)>0 then
		if power < 1000 then
			power = power + math.modf(JY.Person[personid]["实战"]*0.75)
		end
	end
	
	--天山折梅手，虚竹，童姥，无崖子，李秋水，威力提高
	if wugongid == 14 then
		if match_ID(personid, 49) or match_ID(personid, 116) or match_ID(personid, 117) or match_ID(personid, 118) then
			for i = 1, CC.Kungfunum do
				if JY.Person[personid]["武功"..i] ~= 14 and JY.Person[personid]["武功等级"..i] == 999 then
					power = power + 50
				end
			end
		end
	end
	--五岳剑法威力提高
	if wugongid >= 30 and wugongid <= 34 and WuyueJF(personid) then
		power = power + 500
	end
	--琴棋书画威力提高
	if (wugongid == 73 or wugongid == 72 or wugongid == 84 or wugongid == 142) and QinqiSH(personid) then
		power = power + 300
	end
	--桃花绝技威力提高
	if (wugongid == 12 or wugongid == 18 or wugongid == 38) and TaohuaJJ(personid) then
		power = power + 200
	end
	if wugongid == 51 or wugongid == 58 then
		power = power + wglw(personid,wugongid)*(400 + JY.Person[personid]["实战"])
	end
	--九阴神功对白骨爪威力提高
	if wugongid == 11 and PersonKFJ(personid, 107) then
		power = power + 200*(nglw(personid,107)+1)
	end
	if wugongid == 53 and wglw(personid, 53)>=2 then
		power = power + JY.Person[personid]["防御力"]*(wglw(personid,53)-1)
	end
	--武器装备威力加成
	for i,v in ipairs(CC.ExtraOffense) do
		if v[1] == JY.Person[personid]["武器"] and v[2] == wugongid then
			power = power + v[3]
		end
	end
	--只有战斗中才有的加成
	if JY.Status == GAME_WMAP then
		--太极拳蓄力
		if wugongid == 16 and WAR.tmp[3000 + personid] ~= nil and WAR.tmp[3000 + personid] > 0 then
			power = power + WAR.tmp[3000 + personid]
		end
		if WAR.LUCK[personid]~=nil and nglw(personid,102)>1  then
		   power = math.modf(power*1.1)
		end
		if PersonKF(personid, 178) and kfkind == 1 then
		    if Curr_NG(personid, 178) then
			power = math.modf(power*1.2)
			else
			power = math.modf(power*1.15)
			end
		end
	end
	--周芷若，谁与争锋
	if match_ID(personid, 631) and JY.Person[personid]["武器"] == 37 and JY.Wugong[wugongid]["武功类型"] == 3 then
		power = power + 200
	end
	--林朝英，惊才绝艳
	if match_ID(personid, 605) then
		power = power * 1.1
	end

	return power
end

--无酒不欢：判定一个人物是否满足天衣无缝的条件
function TianYiWF(id)
	local tianyinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 54 or kfid == 62) and klvl == 999 then
			tianyinum = tianyinum + 1
		end
	end
	if tianyinum >= 2 then
		return true
	else
		return false
	end
end

--无酒不欢：判定一个人物是否满足神魔同体的条件
function ShenMO(id)
	local tianyinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		if (kfid == 94 or kfid == 160)  then
			tianyinum = tianyinum + 1
		end
	end
	if tianyinum >= 2 then
		return true
	else
		return false
	end
end

function CiBeiLD(id)
	local tianyinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 24 or kfid == 86) and klvl == 999 then
			tianyinum = tianyinum + 1
		end
	end
	if tianyinum >= 2 then
		return true
	else
		return false
	end
end


function FanPuGZ(id)
	local tianyinum = 0;
    if JY.Person[id]["主运内功"] == 102  then
	tianyinum = tianyinum + 1	
	end
	if JY.Person[id]["左右互搏"] == 1 then
	tianyinum = tianyinum + 1
	end
	if tianyinum >= 2  then
		return true
	else
		return false
	end
end

function QXHM(id)
	local tianyinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 38 or kfid == 73) and klvl == 999 then
			tianyinum = tianyinum + 1
		end
	end
	if tianyinum >= 2 then
		return true
	else
		return false
	end
end

--无酒不欢：判定天赋外功的函数
function Given_WG(personid, WGid)
	local tw = false;
	for i = 1, 4 do
		if JY.Person[personid]["天赋外功"..i] == WGid then
			tw = true;
			break;
		end
	end
	return tw;
end
 
--无酒不欢：判定天赋内功的函数
function Given_NG(personid, NGid)
	local tw = false;
	if JY.Person[personid]["天赋内功"] == NGid then
		tw = true;
	end
	return tw;
end

--人物恢复站定
function stands()
	JY.MyCurrentPic=0
	if JY.Person[0]["性别"] == 0 then
		JY.MyPic=CC.MyStartPicM+JY.Base["人方向"]*7+JY.MyCurrentPic;
	else
		JY.MyPic=CC.MyStartPicF+JY.Base["人方向"]*7+JY.MyCurrentPic;
	end
end

--无酒不欢：马车的选择菜单
function TeleportMenu(menu, color, selectColor)
	local x1	--菜单起始X坐标
    local y1	--菜单起始Y坐标
    local w		--菜单宽度
    local h		--菜单高度
	local maxlength		--单位最大长度
	local size = CC.Fontsmall	--字体大小
    
	x1 = CC.MainMenuX+3
    y1 = CC.MainMenuY+CC.Fontsmall*2 +9

	maxlength = 8
	
	w = (size*maxlength/2+CC.RowPixel*4+5)*7 + CC.MenuBorderPixel	--7为列数
    h = (size+CC.RowPixel*2-1)*16 + CC.MenuBorderPixel				--16为最大行数
	
    lib.GetKey();
    Cls();
	
	--lib.LoadPNG(1,19111*2,0,0,1)
    lib.LoadPNG(1, 983 * 2 , 0 , 0, 1)		--背景图
    
	--建立七个表格来存储不同类型的场景
    local PType_1 = {};
    local PNum_1 = 0;
	local PType_2 = {};
    local PNum_2 = 0;
	local PType_3 = {};
    local PNum_3 = 0;
	local PType_4 = {};
    local PNum_4 = 0;
	local PType_5 = {};
    local PNum_5 = 0;
	local PType_6 = {};
    local PNum_6 = 0;
	local PType_7 = {};
    local PNum_7 = 0;
    
	--v123分别为场景名称，可否进入，场景编号
	--v2为0代表可进入，1代表不可进入
    for i,v in pairs(menu) do
        if v[4] == 1 then
			PNum_1 = PNum_1 +1
			PType_1[PNum_1] = {v[1],v[2],v[3]}
		elseif v[4] == 2 then
			PNum_2 = PNum_2 +1
			PType_2[PNum_2] = {v[1],v[2],v[3]}	
		elseif v[4] == 3 then
			PNum_3 = PNum_3 +1
			PType_3[PNum_3] = {v[1],v[2],v[3]}
		elseif v[4] == 4 then
			PNum_4 = PNum_4 +1
			PType_4[PNum_4] = {v[1],v[2],v[3]}	
		elseif v[4] == 5 then
			PNum_5 = PNum_5 +1
			PType_5[PNum_5] = {v[1],v[2],v[3]}
		elseif v[4] == 6 then
			PNum_6 = PNum_6 +1
			PType_6[PNum_6] = {v[1],v[2],v[3]}
		elseif v[4] == 7 then
			PNum_7 = PNum_7 +1
			PType_7[PNum_7] = {v[1],v[2],v[3]}
		end
    end
	
	--场景信息
	local P_inf = {{PType_1,PNum_1},{PType_2,PNum_2},{PType_3,PNum_3},{PType_4,PNum_4},{PType_5,PNum_5},{PType_6,PNum_6},{PType_7,PNum_7},[0]={0,0}}
	local PType_name = {"客栈城镇","名门正派","奇教帮会","人物居所","山谷洞穴","海外岛屿","杂类场所"}

	--光标的初始位置
	local cursor_x = 1
	local cursor_y = 1
	local current = 1

	--返回值
    local returnValue =-1;
  
    local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)

    while true do
		if JY.Restart == 1 then
			break
		end
        lib.LoadSur(surid, 0, 0)
		--DrawString(x1+10,y1-CC.RowPixel*4-7,"X:"..cursor_x.."，Y:"..cursor_y.."，Current:"..current,LimeGreen,size);	--输出测试信息
		for i = 1, 7 do
			--大类名称
			--DrawString(x1+(i-1)*(size*maxlength/2+CC.RowPixel*4+5)+CC.MenuBorderPixel,y1-CC.RowPixel*6+1,PType_name[i],LimeGreen,size);
			for j = 1, 16 do
				if j > P_inf[i][2] then
					break;
				end
				--确定当前单位编号
				local id = 0
				for jj = 1, i do
					id = id + P_inf[jj-1][2]
				end
				id = id + j
				--无法进入的场景名称为灰色
				local drawColor = color; 
				if P_inf[i][1][j][2] == 1 then
					drawColor = M_DimGray
				end
				local xx = x1+(i-1)*(size*maxlength/2+CC.RowPixel*4+5) + CC.MenuBorderPixel
				local yy = y1+(j-1)*(size+CC.RowPixel*2-1)
				--区别当前选中的单位颜色
				if id == current then
					drawColor = selectColor;
					lib.Background(xx-5, yy-5, xx + size*maxlength/2+5, yy + size + 5, 128, color)
				end
				--显示场景名称
				DrawString(xx,yy,P_inf[i][1][j][1],drawColor,size);
			end
		end
  
        ShowScreen();
        local keyPress, ktype, mx, my = WaitKey(1)
		
		lib.Delay(CC.Frame);
				
		--ktype  1：键盘，2：鼠标移动，3:鼠标左键，4：鼠标右键，5：鼠标中键，6：滚动上，7：滚动下
        if keyPress==VK_ESCAPE or ktype == 4 then
            break;
        elseif keyPress==VK_DOWN then
			cursor_y = cursor_y + 1
			if cursor_y > P_inf[cursor_x][2] then
				cursor_y = 1
			end
		elseif keyPress==VK_UP then
			cursor_y = cursor_y - 1
			if cursor_y < 1 then
				cursor_y = P_inf[cursor_x][2]
			end
		elseif keyPress==VK_RIGHT then
			cursor_x = cursor_x + 1
			if cursor_x > 7 then
				cursor_x = 1
			end
			if cursor_y > P_inf[cursor_x][2] then
				cursor_y = 1
			end
		elseif keyPress==VK_LEFT then
			cursor_x = cursor_x - 1
			if cursor_x < 1 then
				cursor_x = 7
			end
			if cursor_y > P_inf[cursor_x][2] then
				cursor_y = 1
			end
		else
			local mk = false;
			if ktype == 2 or ktype == 3 then
				if mx >= x1 and mx <= x1 + w and my >= y1 and my <= y1 + h then
					cursor_x = math.modf((mx - x1 - CC.MenuBorderPixel)/(size*maxlength/2+CC.RowPixel*4+5)) + 1
					cursor_y = math.modf((my - y1 - CC.MenuBorderPixel) / (size+CC.RowPixel*2-1)) + 1
					mk = true;
				end
				if cursor_y > P_inf[cursor_x][2] then
					cursor_y = P_inf[cursor_x][2]
					mk = false;
				end
			end				
			if  keyPress==VK_SPACE or keyPress==VK_RETURN or (ktype == 3 and mk) then
				if P_inf[cursor_x][1][cursor_y][2] == 0 then
					returnValue=P_inf[cursor_x][1][cursor_y][3];
					break;
				end
			end
		end
		current = 0
		for i = 1, cursor_x do 
			current = current + P_inf[i-1][2]
		end
		current = current + cursor_y
    end
    lib.FreeSur(surid)
    --返回值
	return returnValue
end

--无酒不欢：判断队伍是不是有两个空位
function More_than_2_vacant_slot()
	if JY.Base["队伍14"] == -1 and JY.Base["队伍15"] == -1 then
		return true
	end
	return false
end

--无酒不欢：个人觉醒
function awakening(id, value)
	local xwperson;	--判定要觉醒的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	JY.Person[xwperson]["个人觉醒"] = JY.Person[xwperson]["个人觉醒"] + value
    if inteam(id) and xwperson~=0 then
       if CC.JXFG[id] ~= nil  then
       local aa = {CC.JXFG[id][1],CC.JXFG[id][2]}
	   JY.Person[id]["论剑奖励"] = JYMsgBox("请选择", "请选择你的觉醒风格 ", aa, 2, 291)
	   RWWH[id] = aa[JY.Person[id]["论剑奖励"]]
       end		
	end
end

--无酒不欢：增加武常
function kungfu_knowledge(id, value)
	local xwperson;	--判定要增加武常的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	JY.Person[xwperson]["武学常识"] = JY.Person[xwperson]["武学常识"] + value

end

--无酒不欢：判定是否为指定ID的人物，并且判定是否达到指定觉醒次数
function match_ID_awakened(personid, id, awkntimes)
	if personid == id then
		if JY.Person[personid]["个人觉醒"] >= awkntimes then
			return true
		else
			return false
		end
	elseif personid == 0 and JY.Base["畅想"] == id then
		if JY.Person[0]["个人觉醒"] >= awkntimes then
			return true
		else
			return false
		end
	else
		return false
	end
end

function Kaiyan_ID(personid, id)
    if personid == 0 and JY.Base["畅想"] == id then
		if GetS(111,0,0,0)>0 or GetS(113,0,0,0)>0 then
			return true
		else
			return false
		end
	else
		return false
	end
end

function KUIHUA(personid)---葵花判定
	local xwperson;	--沼跃鱼：判定天赋觉醒人
	local num=-1
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if nglw(xwperson,105)>1 then 
	   if JY.Person[xwperson]["内力性质"] == 0 or (xwperson == 0 and JY.Base["标准"] == 6 and GetS(112,0,0,0) == 0) then
	      num = 0
	   elseif JY.Person[xwperson]["内力性质"] == 1 or (xwperson == 0 and JY.Base["标准"] == 6 and GetS(112,0,0,0) == 1) then
	      num = 1
	   elseif JY.Person[xwperson]["内力性质"] == 2 or (xwperson == 0 and JY.Base["标准"] == 6 and GetS(112,0,0,0) == 2) then
	      num = 2
	   end
	end
	if match_ID_awakened(xwperson,27,1) and  nglw(xwperson,105) >= 2 then
	   num = 0
	end
	return num
end

function nglw(personid, wugongid)---天赋内功层数判定
	local xwperson;	--沼跃鱼：判定天赋觉醒人
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if JY.Person[xwperson]["天赋内功"] == wugongid then
	   num=0.1
	   	if xwperson == 0 and PersonKF(xwperson,wugongid) then
		num = 1
		   if JY.Person[xwperson]["六如觉醒"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   elseif  YCRW(personid)>0 and YCDJ(personid)>1 then
		   num = num + 1
		   end
		   if GetS(111,0,0,0) == wugongid then
		   num=num+1
		   end
		   if JY.Base["标准"] == 6 and num == 3 then
		      if GetS(112,0,0,0) == 0 and wugongid == 107  then
		         num = 4
		      elseif GetS(112,0,0,0) == 1 and wugongid == 106 then
		         num = 4
		      elseif GetS(112,0,0,0) == 2 and wugongid == 108 then
		         num = 4
		      else
		   
		      end	   
		   end
	    elseif xwperson == 92 and PersonKF(xwperson,wugongid) then
		num = 1
		   if JY.Person[0]["六如觉醒"]>0 then
		   num=num+1
		   elseif JY.Person[0]["个人觉醒"]>0 then
		   num=num+1
		   end
		   if GetS(111,0,0,0) >0 then
		   num=num+1
		   end
		elseif PersonKF(xwperson,wugongid) then
		num = 1
		   if JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   end
	    end
    elseif JY.Base["标准"] == 6 and JY.Person[xwperson]["天赋内功"] ~= wugongid and xwperson == 0  then
        if GetS(111,0,0,0)>0 and PersonKF(xwperson,wugongid) then
		   if GetS(112,0,0,0) == 0 and wugongid == 107  then
		      num = 2
		   elseif GetS(112,0,0,0) == 1 and wugongid == 106 then
		      num = 2
		   elseif GetS(112,0,0,0) == 2 and wugongid == 108 then
		      num = 2
		   else
		   
		   end
		elseif PersonKF(xwperson,wugongid) then
		   if GetS(112,0,0,0) == 0 and wugongid == 107  then
		      num = 1
		   elseif GetS(112,0,0,0) == 1 and wugongid == 106 then
		      num = 1
		   elseif GetS(112,0,0,0) == 2 and wugongid == 108 then
		      num = 1
		   else
		   
		   end
		end
	
	end
	if wugongid == 100 and match_ID(xwperson,455) then -- 天竺子
	   num = 1
	   	   if JY.Person[xwperson]["六如觉醒"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   end
		   if GetS(111,0,0,0)>0 and xwperson == 0 then
		   num=num+1
		   end
	end
	
	if JY.Status == GAME_WMAP then
	    if  PersonNWQS(xwperson, wugongid) then
	    num = 0
	    end
		if PersonNWHD(xwperson, wugongid) then
		num = 3
		end	
	end
	
	
	return num
end

function wglw(personid, wugongid)---天赋外功层数判定
	local xwperson;	--沼跃鱼:判定天赋觉醒人
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if JY.Person[xwperson]["天赋外功1"] == wugongid or JY.Person[xwperson]["天赋外功2"] == wugongid then
	   num=0.1
	   if PersonKFJ(xwperson,wugongid) then
	   num=1
	   	if xwperson == 0 then
		   if JY.Person[xwperson]["六如觉醒"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   elseif  YCRW(personid)>0 and YCDJ(personid)>1 then
		   num = num + 1
		   end
		   if GetS(113,0,0,0) == wugongid then
		   num=num+1
		   end
	    else
		   if JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   end
	    end	
	end
	end
	if wugongid == 23 and match_ID_awakened(xwperson,9,1) then -- 天竺子
	   num = 3
	end
	return num
end

function qglw(personid, wugongid)---天赋外功层数判定
	local xwperson;	--沼跃鱼:判定天赋觉醒人
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if JY.Person[xwperson]["天赋轻功"] == wugongid then
	   num=0.1
	   if PersonKF(xwperson,wugongid) then
	   num=1
	   	if xwperson == 0 then
		   if JY.Person[xwperson]["六如觉醒"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   end
	    else
		   if JY.Person[xwperson]["个人觉醒"]>0 then
		   num=num+1
		   end
	    end	
	end
	end
	return num
end


function zylw(zytype)---职业领悟判定
	local num=0
if JY.Base["标准"]> 0 then
	if JY.Base["标准"] == zytype and zytype<=5 then
	local aa =  JY.Person[0]["天赋外功1"]
	local bb =  JY.Person[0]["天赋外功2"]
    local cc =  GetS(113,0,0,0)	
	local kfkind1 = JY.Wugong[aa]["武功类型"]
	local kfkind2 = JY.Wugong[bb]["武功类型"]
	local kfkind3 = JY.Wugong[cc]["武功类型"]
	    if zytype == kfkind1 then
           num = num+1
	    end
	    if zytype == kfkind2 then
           num = num+1
	    end
		if cc>0 and zytype == kfkind3 then
           num = num+1
	    end
		if (zytype==4 or zytype == 3) and bb == 77 then----阴阳捣乱刃同时兼顾刀剑职业
		    num = num+1
			if cc==77 then
			num = num+1
			end
		end
    elseif JY.Base["标准"] == zytype and zytype == 6 then
	local aa =  JY.Person[0]["天赋内功"]
	local cc =  GetS(111,0,0,0)
		if cc>0 and cc == aa then
           num = num+1
	    end
		if JY.Person[0]["六如觉醒"]>0 then
           num = num+1
	    end
	end
end	
	return num
end


function setNG(a) --天赋内功事件
   SetS(111,0,0,0,a)
end

function  TGPD(id)--天罡判定
    if id == 0 then
		if JY.Base["标准"] == 6 then
			return true
		else
			return false
		end
	else
		return false
	end
end

function setWG(a) --天赋外功事件
   SetS(113,0,0,0,a)
end

function setWP(a) --天赋外功事件
   SetS(112,0,0,0,a)
end

--直接设定指定人物的资质
function set_potential(id, value)
	local xwperson;	--判定要指定资质的人
	if id == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = id
	end
	JY.Person[xwperson]["资质"] = value
end

--无酒不欢：判定是不是显示特技
function secondary_wugong(wugongid)
	--轻功
	if JY.Wugong[wugongid]["武功类型"] == 7 then
		return true
	--吸功
	--金刚不坏不再作为特技
	elseif wugongid == 85 or wugongid == 87 or wugongid == 88 or wugongid == 181 then
		return true
	end
	return false
end

--无酒不欢：判定主运内功的函数
function Curr_NG(personid, NGid)
	if JY.Person[personid]["主运内功"] == NGid then
		return true
	elseif PersonKF(personid, NGid) then
		return true	--飝
	--天罡的判定
	elseif personid == 0 and JY.Base["标准"] == 6 then
		--如果是天内，并且已经学会，则自动主运
		if JY.Person[personid]["天赋内功"] == NGid and PersonKF(personid, NGid) then
			return true
		else
			return false
		end
    elseif match_ID(personid,455) and NGid == 100 then
	    return true
    elseif  JY.Status == GAME_WMAP then
	    if  WAR.NYHD[personid]~= nil and WAR.NYHD[personid] == NGid then
	    return true;
	    end
	else
		return false
	end
end

function Curr_WP(personid, WPid)
    local xwperson;	--沼跃鱼:判定天赋觉醒人
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
		if JY.Person[personid]["修炼物品"] == WPid then
			num = 1
			if xwperson == 0 then
				if JY.Person[xwperson]["六如觉醒"]>0 then
					num=num+1
				elseif JY.Person[xwperson]["个人觉醒"]>0 then
					num=num+1
				end
				if GetS(112,0,0,0) == WPid then
					num=num+1
				end
			else
				if JY.Person[xwperson]["个人觉醒"]>0 then
					num=num+1
				end
			end	
		end
	return num
end

--无酒不欢：判定主运轻功的函数
function Curr_QG(personid, QGid)
	if JY.Person[personid]["主运轻功"] == QGid then
		return true
	elseif PersonKF(personid, QGid) then
		return true		--飝
	else
		return false
	end
end

--无酒不欢：判定主运技能的函数
function Curr_JL(personid, QGid)
	if JY.Person[personid]["主运技能"] == QGid then
		return true
	elseif PersonKF(personid, QGid) and personid==0 then
		return true
	else
		return false
	end
end

--无酒不欢：判定人物面板上极的个数
function calc_mas_num(id)
	local mas_num = 0;
	for i = 1, CC.Kungfunum do
		if JY.Person[id]["武功等级" .. i] == 999 then
			mas_num = mas_num + 1;
		end
	end
	return mas_num
end

--无酒不欢：判定是否为指定ID的人物，用作天赋等判定
function match_ID(personid, id)
	if personid == id then
		return true
	elseif personid == 0 and JY.Base["畅想"] == id then

		return true
    elseif personid == 645 and JY.Base["斗神"] == id then

		return true
	else
		return false
	end
end

function ky_ID(personid, id)
    local aa = 0
	if personid == 0 and JY.Base["畅想"] == id then
       aa = aa + 1
	end
	if GetS(111,0,0,0)>0 or GetS(113,0,0,0)>0 then
	   aa = aa + 1
	end
	if aa >= 2 then
		return true
	else
		return false	
	end
end
--斗将判定
function force_ID(personid)
    if inteam(personid) and JY.Person[personid]["论剑奖励"] > 0 and JY.Base["特殊"]>0 then
		return true
	else
		return false
	end
end
--斗神判定
function god_ID(personid, id)
    if personid == 645 and JY.Base["斗神"] == id  then
		return true
	else
		return false
	end
end

function YCRW(id)
local aa = 0
   if match_ID(id,302) then
      aa = 1
   elseif match_ID(id,360)  then
      aa = 2 
   elseif match_ID(id,310)  then
      aa = 3
   elseif match_ID(id,340)  then
      aa = 4
   end
   return aa
end

function tianshu()
   return JY.Base["天书数量"]
end

function YCDJ(id)
local aa = 0
   if YCRW(id)>0 and tianshu()>0  then
      if tianshu()>9 then
	  aa = 4
	  elseif tianshu()>6 then
	  aa = 3 
	  elseif tianshu()>3 then
	  aa = 2
	  else
	  aa = 1
	  end
   end
   return aa
end

function D1ZSF(id)
  if god_ID(id, 5) then
    return true
  else
    return false
  end
end--判断角色为斗神张三丰

function D2ZBT(id)
  if id == 645 and JY.Base["斗神"] == 64 and JY.Base["特殊"]>0 then
    return true
  else
    return false
  end
end--判断角色为斗神周伯通

function D3FQY(id)
  if god_ID(id, 140) then
    return true
  else
    return false
  end
end--判断角色为斗神风清扬

function D4TZZ(id)
  if god_ID(id, 455) then
    return true
  else
    return false
  end
end--判断角色为斗神天竺子

--无酒不欢：判定连击率
function Person_LJ(pid)
	--根据内轻资质计算基础连击率
	local LJ1 = math.modf(JY.Person[pid]["轻功"] / 18)
	local LJ2 = math.modf((JY.Person[pid]["内力最大值"] + JY.Person[pid]["内力"]) / 1000)
	local LJ3 = math.modf(JY.Person[pid]["资质"] / 10)
	local LJ = 0
	LJ = (LJ1 + LJ2 + LJ3) / 2
	
	--灭绝、裘千仞、洪教主、成昆、萧半和、戚长发、令狐冲二觉之后，连击率+70%
	if match_ID(pid, 6) or match_ID(pid, 67) or match_ID(pid, 71) or match_ID(pid, 18) or match_ID(pid, 189) or match_ID(pid, 594) or match_ID_awakened(pid, 35, 2) then
		LJ = LJ + (100 - LJ) * 0.7
	end

	--连击武功，每个连击+2.5%
	--百花，空明，玉女，泰山，鸳鸯，反两仪，杨家枪，海叟，银锁，连城，去烦恼，黑风, 素心
	local ljup = {10, 15, 42, 31, 54, 60, 68, 76, 79, 114, 124, 131, 139}
	for i = 1, CC.Kungfunum do
		if JY.Person[pid]["武功" .. i] > 0 then
			for ii = 1, #ljup do
				if JY.Person[pid]["武功" .. i] == ljup[ii] then
					LJ = LJ + (100 - LJ) * 0.025
				end
			end
		else
			break;
		end
	end
	
	--独孤九剑连击+5%
	for i = 1, CC.Kungfunum do
		if JY.Person[pid]["武功" .. i] == 47 then
			LJ = LJ + (100 - LJ) * 0.05
		end
	end
	
	--论剑打赢林朝英奖励+30%
	if pid == 0 and JY.Person[605]["论剑奖励"] == 1 then
		LJ = LJ + (100 - LJ) * 0.3
	end
	
	if wglw(pid,29)>=1  then
	   LJ = LJ + (100 - LJ) * (0.2+wglw(pid,29)*0.1 )
	end
	
	
	--实战，每40点+1%
	local jp = JY.Person[pid]["实战"] / 4000
	if wglw(pid,114)>=1 then
	   jp = jp * (wglw(pid,114)+1)
	end
	
	LJ = LJ + (100 - LJ) * jp
	
	--主运九阴+20%
	if Curr_NG(pid, 107) and (JY.Person[pid]["内力性质"] == 0 or (pid == 0 and JY.Base["标准"] == 6)) then
		LJ = LJ + (100 - LJ) * 0.2
	end
	
	--焦宛儿在场，全体加10%
	if inteam(pid) and JY.Status == GAME_WMAP then
		for wid = 0, WAR.PersonNum - 1 do
			if match_ID(WAR.Person[wid]["人物编号"], 607) and WAR.Person[wid]["死亡"] == false and WAR.Person[wid]["我方"] then
				LJ = LJ + (100 - LJ) * 0.1
				break
			end
		end
	end

	--东方不败、萧远山，必连击
	if match_ID(pid, 27) or match_ID(pid, 112) then
		LJ = 100
	end
	
	--连击率下限1
    if LJ < 1 then
		LJ = 1
    end
	
	--取整
	LJ = math.modf(LJ)
	
	return LJ
end

--无酒不欢：判定暴击率
function Person_BJ(pid)
    --根据内攻体力计算基础暴击率
    local BJ1 = math.modf(JY.Person[pid]["攻击力"] / 18)
    local BJ2 = math.modf((JY.Person[pid]["内力最大值"] + JY.Person[pid]["内力"]) / 1000)
    local BJ3 = math.modf(JY.Person[pid]["体力"] / 10)
    local BJ = 0
    BJ = (BJ1 + BJ2 + BJ3) / 2

    --血刀老祖、裘千仞、洪教主、任我行、玉真子、萧半和，暴击率+70%
    if match_ID(pid, 97) or match_ID(pid, 67) or match_ID(pid, 71) or match_ID(pid, 26) or match_ID(pid, 184) or match_ID(pid, 189) then
		BJ = BJ + (100 - BJ) * 0.7
    end
	
	--袁承志，暴击率+50%
    if match_ID(pid, 54) then
		BJ = BJ + (100 - BJ) * 0.5
    end
	
    --杨过，血量少于四分之一时，基础暴击率3倍
    if match_ID(pid, 58) and JY.Person[pid]["生命"] < JY.Person[pid]["生命最大值"] / 4 then
		BJ = BJ * 3
    --杨过，血量少于二分之一，基础暴击率2倍
    elseif match_ID(pid, 58) and JY.Person[pid]["生命"] < JY.Person[pid]["生命最大值"] / 2 then
		BJ = BJ * 2
    end
	
	--暴击武功，每个暴击+2.5%
	--弹指，大力，全真，金蛇，奇门三才，燃木，裴将军，黄沙，鹤蛇，金乌，玄冥，铁指诀，一阳指
    local bjup = {18, 22, 39, 40, 56, 65, 71, 78, 74, 61, 21, 121, 17}
    for i = 1, CC.Kungfunum do
		if JY.Person[pid]["武功" .. i] > 0 then
			for ii = 1, #bjup do
				if JY.Person[pid]["武功" .. i] == bjup[ii] then
					BJ = BJ + (100 - BJ) * 0.025
				end
			end
		else
			break;
		end
    end
	
	--论剑打赢王重阳奖励+50%
	if pid == 0 and JY.Person[129]["论剑奖励"] == 1 then
		BJ = BJ + (100 - BJ) * 0.5
	end
	
	--实战，每40点+1%
	local jp = JY.Person[pid]["实战"] / 4000
	BJ = BJ + (100 - BJ) * jp
	
	--主运九阴+20%
	if Curr_NG(pid, 107) and (JY.Person[pid]["内力性质"] == 0 or (pid == 0 and JY.Base["标准"] == 6)) then
		BJ = BJ + (100 - BJ) * 0.2
	end
	
	--萧峰、灭绝、萧远山，必暴击
    if match_ID(pid, 50) or match_ID(pid, 6) or match_ID(pid, 112) then
		BJ = 100
    end
	
	--只有战斗中才有的加成
	if JY.Status == GAME_WMAP then
	    --游坦之，有阿紫为队友必暴击
		if match_ID(pid, 48) then
			for j = 0, WAR.PersonNum - 1 do
				if match_ID(WAR.Person[j]["人物编号"], 47) and WAR.Person[j]["死亡"] == false and WAR.Person[j]["我方"] == WAR.Person[WAR.CurID]["我方"] then
					BJ = 100
					break;
				end
			end
		end
		
		--欧阳锋 逆运状态下必暴击
		if match_ID(pid, 60) and WAR.tmp[1000+pid] == 1 then
			BJ = 100
		end
		
		--怒气值100，非斗转下必暴击
		if WAR.LQZ[pid] == 100 and WAR.DZXY ~= 1 then
			BJ = 100
		end
	end
	
	--暴击率下限1
    if BJ < 1 then
		BJ = 1
    end
	
	--取整
	BJ = math.modf(BJ)
	
	return BJ
end

--无酒不欢：返回人物所学内功的数量
function Num_of_Neigong(id)
	local num = 0
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		if JY.Wugong[kfid]["武功类型"] == 6 then
			num = num + 1
		end
	end
	return num
end

--无酒不欢：判定一个人物是否满足五岳剑法的条件
function WuyueJF(id)
	local wuyuenum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if kfid >= 30 and kfid <= 34 and klvl == 999 then
			wuyuenum = wuyuenum + 1
		end
	end
	if wuyuenum >= 5 then
		return true
	elseif MPPD(id) == 6 then----五岳剑派
	    return true
	else
		return false
	end
end

--无酒不欢：举火燎原，金乌+燃木+火焰刀
function JuHuoLY(id)
    if PersonKF(id,61) and PersonKF(id,65) and PersonKF(id,66) then 
        return true
    end
    return false

end

function HunZi(id)
    if PersonKF(id,89) and PersonKF(id,90) then 
        return true
    end
    return false

end

--无酒不欢：镜花水月，玄虚+阴风+沧溟
function LiRenHF(id)
    if PersonKF(id,64) and PersonKF(id,153) and PersonKF(id,174) then 
        return true
    end
    return false

end

-- 世尊降魔 伏魔杵 金刚伏魔圈 伏魔杖法 罗汉伏魔功
function ShiZunXM(id)
    if PersonKF(id,96) and PersonKF(id,82) and PersonKF(id,83) and PersonKF(id,86) then 
        return true
    end
    return false

end

--无酒不欢：学会五岳剑法后，真实御剑能力的判定
function TrueYJ(id)
	local yj = JY.Person[id]["御剑能力"]
	if WuyueJF(id) then
		yj = yj + 50
	end
	return yj
end

--无酒不欢：判定一个人物是否满足琴棋书画的条件
function QinqiSH(id)
	local qinqinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 73 or kfid == 72 or kfid == 182 or kfid == 142) and klvl == 999 then
			qinqinum = qinqinum + 1
		end
	end
	if qinqinum<4 and (wglw(id,73)>=1 or wglw(id,72)>=1 or wglw(id,84)>=1 or wglw(id,142)>=1 ) then
	    qinqinum = 4
	end
	
	if qinqinum >= 4 then
		return true
	else
		return false
	end
end

--随风飘叶 调整队友顺序
function Menu_TZDY()
   local menu = {}
   local px={}
   local m=0
   --队友超过2人才会生效
   if JY.Base["队伍" .. 3]>0 then
		Cls()
		DrawStrBox(CC.MainMenuX,CC.MainSubMenuY,"需要调整谁的位置",LimeGreen,CC.DefaultFont,C_GOLD);
		local nexty=CC.MainSubMenuY+CC.SingleLineHeight;
		for i=1,CC.TeamNum do
			menu[i]={"",nil,0};
			local id=JY.Base["队伍" .. i]
			if id>0 then
				menu[i]={"",nil,0};
				if JY.Person[id]["生命"]>0 then
					menu[i][1]=JY.Person[id]["姓名"];
					menu[i][3]=1;
				end
			end
		end  
   
		local r = -1;
		while true do
			r = ShowMenu(menu,#menu,0,CC.MainMenuX,CC.MainSubMenuY+CC.SingleLineHeight,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE)
			if px["交换人"]==nil and r>1 then
				px["交换人"]=r
				menu[r]={"",nil,0}
				Cls()
				DrawStrBox(CC.MainMenuX,CC.MainSubMenuY,JY.Person[JY.Base["队伍" .. r]]["姓名"].."和谁交换位置",LimeGreen,CC.DefaultFont,C_GOLD);
			elseif r>1 and px["交换人"]~=nil and r ~=px["交换人"] then	
				local m1=JY.Base["队伍" .. r]
				local m2=JY.Base["队伍" .. px["交换人"]]
				JY.Base["队伍" .. r]=m2
				JY.Base["队伍" .. px["交换人"]]=m1
				say("Ｇ"..JY.Person[m2]["姓名"].."Ｗ 和 Ｇ"..JY.Person[m1]["姓名"].."Ｗ 交换了位置。",JY.Person[m2]["头像代号"],1,JY.Person[m2]["姓名"])
				Cls()
				--return
				break
			--无酒不欢：增加ESC退出功能
			else
				break
			end
		end
	end
end

--无酒不欢：画一条线
function DrawSingleLine(x1, y1, x2, y2, color)
	lib.DrawRect(x1 + 1, y1 + 1, x2, y2, color)
	lib.DrawRect(x1, y1, x2 - 1, y2 - 1, color)
end

--改变天外
function SetTianWai(personid, x, wugongid)
	local xwperson;	--判定要洗天外的人
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["天赋外功"..x] = wugongid
end

--改变天内
function SetTianNei(personid, wugongid)
	local xwperson;	--判定要洗天内的人
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["天赋内功"] = wugongid
end

--改变天轻
function SetTianQing(personid, wugongid)
	local xwperson;	--判定要洗天轻的人
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["天赋轻功"] = wugongid
end

--学会互搏
function SetHuBo(personid)
	local xwperson;
	if personid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["左右互搏"] = 1
end

--无酒不欢：判定一个人物是否满足桃花绝技的条件
function TaohuaJJ(id)
	local taohuanum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 12 or kfid == 18 or kfid == 38) and klvl == 999 then
			taohuanum = taohuanum + 1
		end
	end
	if match_ID(id, 626)  then --郭襄自动满足
		taohuanum = 3
	end
	if MPPD(id) == 8 then
		taohuanum = 3
	end
	if taohuanum >= 3 then
		return true
	elseif taohuanum >=1 and JY.Person[57]["论剑奖励"] == 1 then
	    return true
	else
		return false
	end
end

function DOCTOR(id)
	local taohuanum = 0;
	if id == 0 and JY.Base["标准"] == 8  then --郭襄自动满足
		taohuanum = 1
	end
	if match_ID(id, 28) or match_ID(id, 16) or match_ID(id, 45) then
		taohuanum = 3
	end
	if taohuanum >= 1 then
		return true
	else
		return false
	end
end

--计算人物五系兵器值之和
function Xishu_sum(id)
	local sum = 0
	sum = sum + JY.Person[id]["拳掌功夫"]
	sum = sum + JY.Person[id]["指法技巧"]
	sum = sum + TrueYJ(id)
	sum = sum + JY.Person[id]["耍刀技巧"]
	sum = sum + JY.Person[id]["特殊兵器"]
	return sum
end

--剪裁版背景图
function Clipped_BgImg(x1,y1,x2,y2,picnum)
	lib.SetClip(x1 + 2, y1 + 2, x2 - 1, y2 - 1)
	lib.LoadPNG(1, picnum * 2 , 0 , 0, 1)
	lib.SetClip(0,0,0,0)
end

--显示带边框的文字
function DrawBoxTitle(width, height, str, color)
	local s = 4
	local x1, y1, x2, y2, tx1, tx2 = nil, nil, nil, nil, nil, nil
	local fontsize = s + CC.DefaultFont
	local len = string.len(str) * fontsize / 2
	x1 = (CC.ScreenW - width) / 2
	x2 = (CC.ScreenW + width) / 2
	y1 = (CC.ScreenH - height) / 2
	y2 = (CC.ScreenH + height) / 2
	tx1 = (CC.ScreenW - len) / 2
	tx2 = (CC.ScreenW + len) / 2
	lib.Background(x1, y1 + s, x1 + s, y2 - s, 128)
	lib.Background(x1 + s, y1, x2 - s, y2, 128)
	lib.Background(x2 - s, y1 + s, x2, y2 - s, 128)
	lib.Background(tx1, y1 - fontsize / 2 + s, tx2, y1, 128)
	lib.Background(tx1 + s, y1 - fontsize / 2, tx2 - s, y1 - fontsize / 2 + s, 128)
	local r, g, b = GetRGB(color)
	DrawBoxTitle_sub(x1 + 1, y1 + 1, x2, y2, tx1 + 1, y1 - fontsize / 2 + 1, tx2, y1 + fontsize / 2, RGB(math.modf(r / 2), math.modf(g / 2), math.modf(b / 2)))
	DrawBoxTitle_sub(x1, y1, x2 - 1, y2 - 1, tx1, y1 - fontsize / 2, tx2 - 1, y1 + fontsize / 2 - 1, color)
	DrawString(tx1 + 2 * s, y1 - (fontsize - s) / 2, str, color, CC.DefaultFont)
end

--无酒不欢：判定一个人物是否满足除却四相的条件
--同时修炼多罗叶指/大智无定指/无相劫指/拈花指到极
function ChuQueSX(id)
	local sixiangnum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 132 or kfid == 133 or kfid == 136 or kfid == 137) and klvl == 999 then
			sixiangnum = sixiangnum + 1
		end
	end
	if sixiangnum >= 4 then
		return true
	else
		return false
	end
end

function Cat(s,...)
	if not Ct[s] then 
		lib.Debug('错误：未知函数')
	end
	return Ct[s](...)
end

function CMenu() 
	local bx,by = CC.ScreenW/936,CC.ScreenH/701
	local cont = 1
	local cont2 = 1
	local cont3 = 1
	local cont4 = 1
	local cot4 = 0
	local page = 1
	local menu = {'人物','物品',MJMenu,'设置'}
	local menu2 = {'状态','排序','离队'}
	local menu3 = {nil,0,1,3,4}
	local menu4 = {Menu_ReadRecord,Menu_SaveRecord,Menu_SetMusic,Menu_SetSound,Menu_WPZL,Menu_MP,Menu_MYDIY,Menu_Exit2}

	local jg = bx*20
	while true do
		Cls()
		if JY.Restart == 1 then
			break
		end
		for i = 1,#menu do 
			lib.PicLoadCache(92,(1+i)*2,CC.ScreenW/2-((#menu-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2-bx*60,2,256,nil,bx*120)
			if cont ~= i then 
				lib.PicLoadCache(92,(1+i)*2,CC.ScreenW/2-((#menu-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2-bx*60,6,150,nil,bx*120)
			end
		end
		
		if page == 2 then 
			for i = 1,#menu2 do 
				lib.PicLoadCache(92,(5+i)*2,CC.ScreenW/2-((#menu2-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2+bx*60,2,256,nil,bx*100)
				if cont2 ~= i then 
					lib.PicLoadCache(92,(5+i)*2,CC.ScreenW/2-((#menu2-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2+bx*60,6,150,nil,bx*100)
				end
			end
		end
		
		if page == 3 then 
			for i = 1,#menu3 do 
				lib.PicLoadCache(92,(15+i)*2,CC.ScreenW/2-((#menu3-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2+bx*60,2,256,nil,bx*100)
				if cont3 ~= i then 
					lib.PicLoadCache(92,(15+i)*2,CC.ScreenW/2-((#menu3-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2+bx*60,6,150,nil,bx*100)
				end
			end
		end
		
		if page == 4 then 
			for i = 1,4 do 
				for j = 1,2 do
					local tid = i + (j-1)*4
					lib.PicLoadCache(92,(20+tid)*2,CC.ScreenW/2-((#menu4/2-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2+bx*60+(j-1)*bx*120,2,256,nil,bx*100)
					if cont4+cot4*4 ~= tid then 
						lib.PicLoadCache(92,(20+tid)*2,CC.ScreenW/2-((#menu4/2-1)*bx*140)/2+(i-1)*bx*140,CC.ScreenH/2+bx*60+(j-1)*bx*120,6,150,nil,bx*100)
					end
				end
			end
		end
		
		ShowScreen()
		lib.Delay(CC.BattleDelay)
		local X,ktype,mx,my = lib.GetKey()
		if X == VK_SPACE or X == VK_RETURN then 
			if page == 1 then
				if cont == 1 then 
					page = 2
				elseif cont == 2 then
					page = 3
				elseif cont == 4 then
					page = 4
				else 
					menu[cont]()
				end
			elseif page == 2 then 
				Menu_Status()
			elseif page == 3 then 
				ThingMenu(menu3[cont3])
				if JY.ThingUse >= 0 then 
					JY.ThingUse = 0
					return 1
				end
				if JY.Status == GAME_WMAP then
					return 1
				end
			elseif page == 4 then 	
				local r = menu4[cont4+cot4*4]()
				if cont4+cot4*4 == #menu4 or cont4+cot4*4 == 1 then
					if r == 1 then
						break
					end
				end
			end
		elseif X == VK_ESCAPE or ktype == 4 then
			if page == 2 then 
				page = 1 
				cont2 = 1
			elseif page == 3 then 
				page = 1
				cont3 = 1
			elseif page == 4 then 
				page = 1
				cont4 = 1
				cot4 = 0
			else 	
				break
			end
		elseif X == VK_LEFT then
			if page == 1 then 
				cont = cont - 1 
				if cont < 1 then 
					cont = #menu
				end
			elseif page == 2 then 
				cont2 = cont2 - 1 
				if cont2 < 1 then 
					cont2 = #menu2
				end
			elseif page == 3 then 
				cont3 = cont3 - 1 
				if cont3 < 1 then 
					cont3 = #menu3
				end
			elseif page == 4 then 
				if cont4 > 1 then 
					cont4 = cont4 - 1
				else
					if cot4 > 0 then 
						cot4 = cot4 - 1
						cont4 = 4
					else
						cont4 = 4
						cot4 = math.ceil((#menu4-cont4)/4)
					end
				end
			end
		elseif X == VK_RIGHT then
			if page == 1 then 
				cont = cont + 1 
				if cont > #menu then 
					cont = 1
				end
			elseif page == 2 then 
				cont2 = cont2 + 1 
				if cont2 > #menu2 then 
					cont2 = 1
				end
			elseif page == 3 then 
				cont3 = cont3 + 1 
				if cont3 > #menu3 then 
					cont3 = 1
				end
			elseif page == 4 then
				if cont4 + cot4*4 < #menu4 then
					if cont4 < 4 then 
						cont4 = cont4 + 1
					else 
						cont4 = 1 
						cot4 = cot4 + 1
					end
				else 
					cont4 = 1 
					cot4 = 0
				end
			end
		elseif X == VK_UP or ktype == 6 then
			if page == 4 then
				if cot4 > 0 then
					cot4 = cot4 - 1
				else 
					cot4 = math.ceil((#menu4)/4) - 1
				end
			end
		elseif X == VK_DOWN or ktype == 7 then
			if page == 4 then
				if cot4 < math.ceil((#menu4)/4) - 1 then
					cot4 = cot4 + 1
				else 
					cot4 = 0
				end
			end
		else 
			local mxx = false
			if page == 1 then 
				for i = 1,#menu do 
					if mx >= CC.ScreenW/2-((#menu-1)*bx*140)/2+(i-1)*bx*140 - bx*60 and mx <= CC.ScreenW/2-((#menu-1)*bx*140)/2+(i-1)*bx*140 + bx*60
						and my >= CC.ScreenH/2-bx*120 and my <= CC.ScreenH/2 then 
						cont = i 
						mxx = true
						break
					end
				end
			elseif page == 2 then
				for i = 1,#menu2 do 
					if mx >= CC.ScreenW/2-((#menu2-1)*bx*140)/2+(i-1)*bx*140 - bx*50 and mx <= CC.ScreenW/2-((#menu2-1)*bx*140)/2+(i-1)*bx*140 + bx*50
						and my >= CC.ScreenH/2+bx*10 and my <= CC.ScreenH/2+bx*110 then 
						cont2 = i 
						mxx = true
						break
					end
				end
			elseif page == 3 then
				for i = 1,#menu3 do 
					if mx >= CC.ScreenW/2-((#menu3-1)*bx*140)/2+(i-1)*bx*140 - bx*50 and mx <= CC.ScreenW/2-((#menu3-1)*bx*140)/2+(i-1)*bx*140 + bx*50
						and my >= CC.ScreenH/2+bx*10 and my <= CC.ScreenH/2+bx*110 then 
						cont3 = i 
						mxx = true
						break
					end
				end
			elseif page == 4 then
				for i = 1,4 do 
					for j = 1,2 do 
						if mx >= CC.ScreenW/2-((#menu4/2-1)*bx*140)/2+(i-1)*bx*140 - bx*50 and mx <= CC.ScreenW/2-((#menu4/2-1)*bx*140)/2+(i-1)*bx*140 + bx*50
							and my >= CC.ScreenH/2+bx*10+(j-1)*bx*120 and my <= CC.ScreenH/2+bx*110+(j-1)*bx*120 then 
							cont4 = i
							cot4 = j-1
							mxx = true
							break
						end
					end
				end
			end
			if mxx == true and ktype == 3 then 
				if page == 1 then
					if cont == 1 then 
						page = 2
					elseif cont == 2 then
						page = 3
					elseif cont == 4 then
						page = 4
					else 
						menu[cont]()
					end
				elseif page == 2 then 
					Menu_Status()
				elseif page == 3 then 
					ThingMenu(menu3[cont3])
					if JY.ThingUse >= 0 then 
						JY.ThingUse = 0
						return 1
					end
					if JY.Status == GAME_WMAP then
						return 1
					end
				elseif page == 4 then 	
					local r = menu4[cont4+cot4*4]()
					if cont4+cot4*4 == #menu4 or cont4+cot4*4 == 1 then
						if r == 1 then 
							break
						end
					end
				end
			end
		end
	end

end

function MJMenu() 

		local thing = {}
		local thingnum = {}
		for i = 0, CC.MyThingNum - 1 do
			thing[i] = -1
			thingnum[i] = 0
		end
		local num = 0
		for i = 0, CC.MyThingNum - 1 do
			local id = JY.Base["物品" .. i + 1]
			if id >= 0 then
				if JY.Thing[id]["类型"] == 2 then
					thing[num] = id
					thingnum[num] = JY.Base["物品数量" .. i + 1]
					num = num + 1
				end
			end 
		end

		local r = SelectThing(thing, thingnum)
		if r >= 0 then
			UseThing(r)
			return 1
		end
		return 0
end

--绘制一片四角凹进的背景
function DrawShades(x1,y1,x2,y2,color)
	local s=4;
	lib.Background(x1+4,y1,x2-4,y1+s,128,color);
	lib.Background(x1+1,y1+1,x1+s,y1+s,128,color);
	lib.Background(x2-s,y1+1,x2-1,y1+s,128,color);
	lib.Background(x1,y1+4,x2,y2-4,128,color);
	lib.Background(x1+1,y2-s,x1+s,y2-1,128,color);
	lib.Background(x2-s,y2-s,x2-1,y2-1,128,color);
	lib.Background(x1+4,y2-s,x2-4,y2,128,color);
end

--曼珠沙华判定
function ManZhuSH(id)
	if JY.Person[id]["六如觉醒"] == 0 then
		return false
	end
	local manzhunum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if kfid == 85 or kfid == 87 or kfid == 88 then
			manzhunum = manzhunum + 1
		end
	end
	if manzhunum >= 3 then
		return true
	else
		return false
	end
end

--物品详细说明
function detailed_info(thingID)
	local str=JY.Thing[thingID]["名称"]
	local str2=JY.Thing[thingID]["物品说明"]
	local infoFile = CC.ItemInfoPath .. str .. ".lua"
	if existFile(infoFile) then
		dofile(infoFile)
	else
		return
	end
	local info = {}
	info = ItemInfo[thingID]
	local function strcolor_switch(s)
		local Color_Switch={{"Ｒ",PinkRed},{"Ｇ",C_GOLD},{"Ｂ",C_BLACK},{"Ｗ",C_WHITE},{"Ｏ",C_ORANGE},{"Ｌ",LimeGreen},{"Ｄ",M_DeepSkyBlue},{"Ｚ",Violet}}
		for i = 1, 8 do
			if Color_Switch[i][1] == s then
				return Color_Switch[i][2]
			end
		end
	end
	local maxRowExisting = #info		--当前说明总行数
	local maxRowDisplayable = 11		--当面页面可以显示的最大行数
	if maxRowDisplayable > maxRowExisting-1 then
		maxRowDisplayable = maxRowExisting-1
	end
	local startingRow = 1
	local size = CC.Fontsmall
	while true do
		Cls()
		lib.LoadPNG(1, 1004 * 2 , 0 , 0, 1)
		DrawString(2,14.5,str,C_GOLD,CC.ThingFontSize)
		DrawString(2,54.5,str2,C_ORANGE,CC.ThingFontSize)
		local row = 1
		for i = startingRow, startingRow+maxRowDisplayable do
			local tfstr = info[i]
			if string.sub(tfstr,1,2) == "Ｎ" then
				row = row + 1
			else
				local color;
				color = strcolor_switch(string.sub(tfstr,1,2))
				tfstr = string.sub(tfstr,3,-1)
				DrawString(15, 80 + (size+CC.RowPixel*2) * (row), tfstr, color, size)
				row = row + 1
			end
		end
		--上下翻的箭头显示
		if startingRow > 1 then
			DrawString(CC.ScreenW-40, 110, "↑", C_GOLD, size)
		end
		if startingRow+maxRowDisplayable < maxRowExisting then
			DrawString(CC.ScreenW-40, CC.ScreenH-140, "↓", C_GOLD, size)
		end
		DrawString(CC.ScreenW-220,CC.ScreenH-40, "按F1返回物品菜单", C_ORANGE,size)
		ShowScreen()
		local keypress, ktype, mx, my = WaitKey(1)
		if keypress==VK_ESCAPE or keypress==VK_RETURN or keypress==VK_F1 or ktype == 4 then
			return
		elseif keypress==VK_UP and startingRow > 1 then
			startingRow = startingRow - 1
		elseif keypress==VK_DOWN and startingRow+maxRowDisplayable < maxRowExisting then
			startingRow = startingRow + 1
		end
	end
end


--无酒不欢：判定一个人物是否满足紫气天罗的条件
function ZiqiTL(id)
	local ziqinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["武功"..i]
		local klvl = JY.Person[id]["武功等级"..i]
		if (kfid == 3 or kfid == 9 or kfid == 5 or kfid == 21 or kfid == 118) and klvl == 999 then
			ziqinum = ziqinum + 1
		end
	end
	if ziqinum >= 5 then
		return true
	else
		return false
	end
end

function ownMP()
	if GetS(106, 0, 0, 0) == 1 then
		return true
	end
	return false
end

function ownMPstat(flag)
	local wugong = 122
	local name = {JY.Wugong[wugong]["名称"], nil, 1, "宗师"}
	local level = {"入门弟子", "高级弟子", "掌门"}
	local attrib = {} 
	for i = 1, 9 do
		attrib[i] = JY.Wugong[wugong][i.."级杀伤内力"] * 0.1
	end
	local askill = {GRTS[JY.Wugong[wugong]["未知4"]], GRTS[JY.Wugong[wugong]["未知5"]]}
	if flag == 1 then
		return name
	elseif flag == 2 then
		return level
	elseif flag == 3 then
		return attrib
	else
		return askill
	end
end

function MPPD(tmppid)
    local xwperson
	if tmppid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = tmppid
	end	
	if JY.Person[xwperson]["无用"] == nil or JY.Person[xwperson]["无用"] < 101 then
		return 0
	else
		local mptype = math.floor(JY.Person[xwperson]["无用"] / 100)
		return mptype
	end
end

function MPDJ(tmppid)
    local xwperson
	if tmppid == JY.Base["畅想"] then
		xwperson = 0
	else
		xwperson = tmppid
	end	
	local mpdj
	if MPPD(xwperson) == 0 then
		return 0
	end
	mpdj = math.fmod(JY.Person[xwperson]["无用"], 100)
	return mpdj
end

function MPDISPLAY(tmppid) --门派显示
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	if aa == 63 then
		local name = ownMPstat(1)
		local level = ownMPstat(2)
		local mptype = name[1]
		local mpdj = level[bb]
		return mptype, mpdj
	end
	if CC.MP[aa][1] == nil or CC.MPDJ[aa][bb] == nil then
		return nil, nil
	end
	local mptype = CC.MP[aa][1]
	local mpdj = CC.MPDJ[aa][bb]
	return mptype, mpdj
end

--猪脚判断
function zj()
	--if GetS(103, 0, 0, 1) < 0 then
		--return 0
	--end
	--return GetS(103, 0, 0, 1)
	return 0
end

function JoinMP(tmppid, mptype, mpdj)
	if tmppid == 0 then
		tmppid = zj()
	end
	if tmppid == JY.Base["畅想"] then
		tmppid = zj()
	end
	if tmppid == 0 and  MPPD(zj()) ~= mptype then 
	   SetS(106, MPPD(zj()), 0, 0, 1)
	   SetS(106, MPPD(zj()), 1, 0, 0)
	end
	if MPPD(zj()) ~= 0 and  MPPD(zj()) ~= mptype and tmppid == 0 then 
	   SetS(106, MPPD(zj()), 0, 0, 1)
	   SetS(106, MPPD(zj()), 1, 0, 0)
	end
	if GetS(106, mptype, 0, 0) == 1 and tmppid == 0 then 
	else
	JY.Person[tmppid]["无用"] = mptype * 100 + mpdj
	AddPersonAttrib(tmppid, "内力最大值", -1)
	AddPersonAttrib(tmppid, "内力最大值", 1)
	AddPersonAttrib(tmppid, "生命最大值", -1)
	AddPersonAttrib(tmppid, "生命最大值", 1)	
	if JY.Person[tmppid]["内力"] > JY.Person[tmppid]["内力最大值"] then
		JY.Person[tmppid]["内力"] = JY.Person[tmppid]["内力最大值"]
	end
	if JY.Person[tmppid]["生命"] > JY.Person[tmppid]["生命最大值"] then
		JY.Person[tmppid]["生命"] = JY.Person[tmppid]["生命最大值"]
	end	
	end
	--clearHZ2(tmppid)
end

function MPReq(tmppid, mptype) --队友条件
	if MPPD(tmppid) ~= MPPD(0) and MPPD(tmppid)>0 then
		return false
	end
	if MPPD(tmppid) == MPPD(0) and MPDJ(tmppid) >= MPDJ(0) - 1 then
		return false
	end
	if mptype == 1 then
        return true
	elseif mptype == 2 or mptype == 3 then
		if JY.Person[tmppid]["品德"] >= 50 then
			return true
		end	
	elseif mptype == 4 then
		if JY.Person[tmppid]["内力最大值"] >= 2000 then
			return true
		end		
	elseif mptype == 5 then
		if JY.Person[tmppid]["内力最大值"] >= 3000 then
			return true
		end
	elseif mptype == 6 then
		if JY.Person[tmppid]["御剑能力"] >= 100 then
			return true
		end	
	elseif mptype == 7 then
		if JY.Person[tmppid]["用毒能力"] >= 50 then
			return true
		end	
	elseif mptype == 8 then
		if JY.Person[tmppid]["资质"] >= 75 then
			return true
		end	
	elseif mptype == 11 then
		if JY.Person[tmppid]["御剑能力"] >= 300 then
			return true
		end	
	elseif mptype == 12 then
		if JY.Person[tmppid]["品德"] > 50 then
			return true
		end	
	elseif mptype == 13 then
		if JY.Person[tmppid]["内力最大值"] >= 3000 then
			return true
		end
	elseif mptype == 13 then
		if JY.Person[tmppid]["御剑能力"] >= 100 then
			return true
		end				
	elseif mptype == 63 then
		return true
	end
	return false
end

function MPAttrib(pid, att)	
	local function tox(aa)
		local str = ""
		if aa == 1 then
			str = "攻击力"
		elseif aa == 2 then
			str = "防御力"
		elseif aa == 3 then
			str = "轻功"
		end
		return str
	end
	local add = 0
	if MPPD(pid) == 0 then
		add = CC.MPAttrib[MPPD(pid)][att]	
	else
	    add = CC.MPAttrib[MPPD(pid)][att]
		if MPPD(pid) == 4 and MPDJ(pid) > 2 then
			if att == 1 then
				add = 1.1
			elseif att == 2 then
				add = 1.1
			end
		end
		if att == 1 then		
			add = math.modf(add * JY.Person[pid]["攻击力"] - JY.Person[pid]["攻击力"]) 
		elseif att == 2 then
			add = math.modf(add * JY.Person[pid]["防御力"] - JY.Person[pid]["防御力"]) 
		elseif att == 3 then
			add = math.modf(add * JY.Person[pid]["轻功"] - JY.Person[pid]["轻功"]) 
		end		
	end	
	if att == 4 then

	end
	if att == 5 then
	
	end
	if att == 1 or att == 2 or att == 3 then

	end
	if att == 1 then

	elseif att == 2 then

	elseif att == 3 then

	end
	return add
end
function PJPD(pp)
	if GetS(106, pp, 0, 0) ~= 0 then
		return true
	else
		return false
	end
end

function PDReq(pid, str, aa, bb)
	if JY.Person[pid][str] >= aa and JY.Person[pid][str] <= bb then
		return true
	else
		return false
	end
end

function MP_ZY(pid)
	local aa = MPPD(pid)
	local bb = MPDJ(pid)
	local cc = 0 
    local mpzy = {
	{1, 184},--丐帮擒龙
	{1, 189},--丐帮莲花
	{2, 99},--武当纯阳
	{2, 171},--武当太极
	{3, 96},--少林罗汉
	{3, 108},--少林易筋	
	{3, 144},--少林金刚	
	{4, 103},--密宗龙象
	{4, 169},--密宗瑜伽
	{4, 163},--密宗血刀
	{6, 90},--五岳紫霞
	{6, 89},--五月混元
	{6, 179},--五岳寒冰真气
	{7, 95},--白驼蛤蟆
	{7, 104},--白驼逆运
	{7, 180},--白驼灵蛇
	{5, 97},--明教乾坤
	{5, 93},--明教圣火
    }
	for i = 1, #mpzy do
		if (mpzy[i][1] == aa) and JY.Person[pid]["主运内功"] == mpzy[i][2] then
			cc = 1
		end
	end
	if aa == 5 and (JY.Person[pid]["主运内功"] == 93 or JY.Person[pid]["主运内功"] == 97)  then
	   cc = 1
	end
	if cc == 1 then
		return true	   
	end
    return false		
end

function MPZJ(pid,b)
	local aa = MPPD(pid)
	local bb = MPDJ(pid)
	local cc = 0 
    if aa>0 and aa == b then
	   if MP_ZY(pid) then
	      local dd = JY.Person[pid]["主运内功"]
	      local ee = JY.Person[pid]["天赋内功"]
		  if dd ~= ee then
		  cc = cc+1
		     if ee == 0 then
			 cc =cc+1
			    if bb>=3 or (aa == 6 and bb>=2) then
				cc =cc+1
				end
			 end
		  end
	   end
	end
	return cc	
end

function MPPB_GB(tmppid) --丐帮门派
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 1 then
       if bb>0 then
	      if Curr_NG(tmppid,189) then
		  cc = 1  --净衣派
		  elseif Curr_NG(tmppid,184) then
		  cc = 2  --乌衣派
		  end
	   end
	   if match_ID(tmppid,458) then----特定人员判定
	      cc = 1
	   end
	   if match_ID(tmppid,459) then----特定人员判定
	      cc = 2
	   end
	   if match_ID(tmppid,50) then----特定人员判定
	      cc = 2
	   end
	   if match_ID(tmppid,69) then----特定人员判定
	      cc = 3
	   end
	end
	if match_ID(tmppid,56) or match_ID(tmppid,58) then----冰雪神剑限定雪山剑法
	cc = 1
	end
	if match_ID(tmppid,55) then----冰雪神剑限定雪山剑法
	cc = 2
	end
	if match_ID(tmppid,360) and YCDJ(tmppid)>0 then----念慈暗含丐帮特性
	cc = 1
	end
	return cc
end


function MPPB_WD(tmppid) --武当门派
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 2 then
       if bb>0 then
	      if Curr_NG(tmppid,99) then
		  cc = 1  --纯阳宫
		  elseif Curr_NG(tmppid,171) then
		  cc = 2  --太极殿
		  end
	   end
	if match_ID(tmppid,5)  then----三丰两个派别都有
	cc = 3
	end
	end
	return cc
end


function MPPB_SL(tmppid) --少林门派
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 3 then
       if bb>0 then
	      if Curr_NG(tmppid,96) then
		  cc = 1  --戒律院
		  elseif Curr_NG(tmppid,108) then
		  cc = 2  --藏经阁
		  elseif Curr_NG(tmppid,144) then
		  cc = 3  --金刚门
		  end
	      if match_ID(tmppid,400) then
		  cc = 1  --慧聪戒律院
		  end
		  for i = 461, 469 do
		      if match_ID(tmppid,i) then
		      cc=1
			  break
		      end
	      end
		  for i = 410, 478 do
		      if match_ID(tmppid,i) then
		      cc=3
			  break
		      end
	      end
		  for i = 479, 484 do
		      if match_ID(tmppid,i) then
		      cc=1
			  break
		      end
	      end
		  for i = 485, 492 do
		      if match_ID(tmppid,i) then
		      cc=3
			  break
		      end
	      end
		  for i = 493, 494 do
		      if match_ID(tmppid,i) then
		      cc=2
			  break
		      end
	      end
		  for i = 495, 496 do
		      if match_ID(tmppid,i) then
		      cc=1
			  break
		      end
	      end
	   end
	end
	return cc
end

function MPPB_MZ(tmppid) --密宗门派
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 4 then
       if bb>0 then
	      if Curr_NG(tmppid,103) then
		  cc = 1  --金轮寺
		  elseif Curr_NG(tmppid,169) then
		  cc = 2  --苦寂塔
		  elseif Curr_NG(tmppid,163) then
		  cc = 3  --血刀门
		  end
	   end
		if match_ID(tmppid,62)  then----金轮判定
	    cc = 1
	    end
		if match_ID(tmppid,455)  then----天竺子判定
	    cc = 2
	    end
	    if match_ID(tmppid,159)  then----尹克西暗含阿萨辛
	    cc=2
	    end	
		if match_ID(tmppid, 97)  then----血刀老祖限定血刀门
		cc = 3
		end
	end

		if JY.Status == GAME_WMAP then
		   if WAR.XDLZ2[tmppid]~=nil  then
		      cc = 3
		   end
		end
	

	return cc
end

function MPPB_MJBL(tmppid) --明教白莲
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 5 then
       if bb>0 then
	      if Curr_NG(tmppid,97) then --白莲教判定
		  cc=1
		  end
	   end
	if match_ID(tmppid,11)  then----杨逍
	   cc=1
	end

	end
	if match_ID(tmppid,9)  then----无忌暗含明尊
	   cc=1
	end
	if cc == 1  then
	      local ee = JY.Person[tmppid]["天赋内功"]
		  if ee ~= 97  then
		     cc = cc+ 1
			 if ee == 0 then
			 cc = cc+ 1
			    if bb>2  then
				cc = cc+1
				end
			 end
		  end
	end	
	return cc
end

function MPPB_MJAS(tmppid) --明教阿萨辛
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 5 then
       if bb>0 then
	      if Curr_NG(tmppid,93) then --明教阿萨辛判定
		  cc=1
		  end
	   end
	end
	if match_ID(tmppid,66)  then----小昭暗含阿萨辛
	   cc=1
	end
	if match_ID(tmppid,15)  then----金花婆婆暗含阿萨辛
	   cc=1
	end
	if match_ID(tmppid,158)  then----尹克西暗含阿萨辛
	   cc=1
	end	
	if match_ID(tmppid,340)  then----贾托尼暗含阿萨辛
	   cc=1
	end	
	if cc == 1  then
	      local ee = JY.Person[tmppid]["天赋内功"]
		  if ee ~= 93  then
		     cc = cc+ 1
			 if ee == 0 then
			 cc = cc+ 1
			    if bb>2  then
				cc = cc+1
				end
			 end
		  end
	end	
	return cc
end

function MPPB_WYJZ(tmppid) --五岳剑宗
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 6 then
       if bb>0 then
	      if Curr_NG(tmppid,90) then --剑宗判定
		  cc=1
		  end
	   end
	end	
	if match_ID(tmppid,140)  then----风清扬
	   cc=1
	end
	if match_ID(tmppid,141)  then----成不忧
	   cc=1
	end
	if match_ID(tmppid,142)  then----封不平
	   cc=1
	end
	if match_ID(tmppid,185)  then----封不平
	   cc=1
	end
	if match_ID(tmppid,35)  then----令狐冲
	   cc=1
	end
	return cc

end

function MPPB_WYQZ(tmppid) --五岳气宗
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 6 then
       if bb>0 then
	      if Curr_NG(tmppid,89) then --气宗判定
		  cc=1
		  end
	   end
	if match_ID(tmppid,19)  then----岳不群
	   cc=1
	end
	   if cc == 1 then
	      cc = cc + MPZJ(tmppid,6)
	   end
	end	
	return cc
end

function MPPB_WYXPX(tmppid) --五岳小派系
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 6 then
       for i=191,200 do
	      if match_ID(tmppid,i) then
		     cc=5
		  end
	   end
       for i=201,210 do
	      if match_ID(tmppid,i) then
		     cc=1
		  end
	   end
       for i=370,379 do
	      if match_ID(tmppid,i) then
		     cc=2
		  end
	   end
       for i=360,369 do
	      if match_ID(tmppid,i) then
		     cc=3
		  end
	   end
       for i=380,389 do
	      if match_ID(tmppid,i) then
		     cc=4
		  end
	   end
	end	
	return cc
end

function MPPB_BTHM(tmppid) --白驼蛤蟆
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 7 then
       if bb>0 then
	      if Curr_NG(tmppid,95) then --白驼蛤蟆判定
		  cc=1
		  end
	   end
	end	

	if cc == 1 then
	cc = cc + MPZJ(tmppid,7)
	end
	return cc
end

function MPPB_BTNY(tmppid) --白驼逆运
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 7 then
       if bb>0 then
	      if Curr_NG(tmppid,104) then --白驼逆运判定
		  cc=1
		  end
	   end
	end	

	if cc == 1  then
	cc = cc + MPZJ(tmppid,7)
	end
	return cc
end

function MPPB_BTLS(tmppid) --白驼逆运
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 7 then
       if bb>0 then
	      if Curr_NG(tmppid,180) then --白驼逆运判定
		  cc=1
		  end
	   end
	end	

	if cc == 1  then
	cc = cc + MPZJ(tmppid,7)
	end
	return cc
end

function MPPB_THBH(tmppid) --桃花岛百花宫
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 8 then
       if bb>0 then
	      if Curr_NG(tmppid,172) then --桃花岛碧海
		  cc=1
		  end
	   end
	end	

	if cc == 1 and MPZJ(tmppid,8)>0 then
	cc = cc + MPZJ(tmppid,8)
	end
	return cc
end

function MPPB_THQM(tmppid) --桃花岛遁甲宗
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 8 then
       if bb>0 then
	      if Curr_NG(tmppid,181) then --桃花岛奇门五转
		  cc=1
		  end
	   end
	end	

	if cc == 1 and MPZJ(tmppid,8)>0 then
	cc = cc + MPZJ(tmppid,8)
	end
	return cc
end

function MPPB_THXJ(tmppid) --桃花岛桃花坞
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 8 then
       if bb>0 then
	      if Curr_NG(tmppid,191) then --桃花岛桃花坞
		  cc=1
		  end
	   end
	end	

	if cc == 1 and MPZJ(tmppid,8)>0 then
	cc = cc + MPZJ(tmppid,8)
	end
	return cc
end


function hasthing(pp)
	return instruct_18(pp)
end

function hasppl(pp)
	return instruct_16(pp)
end

function DIYdisplay(str,strColor)
	if strColor == nil then
		strColor = C_GOLD
	end	
	for i=12,24 do
		NewDrawString(-1,-1,str,strColor,25+i)
		ShowScreen();
		if i==24 then
			Cls();							
			NewDrawString(-1,-1,str,strColor,25+i)
			ShowScreen();
			lib.Delay(500);
		else
			lib.Delay(1);
		end						
	end
end

function Fight()
	say("四神可不是这么好惹的，你可得小心了", 292, 1, "百事通");
	SetS(86, 1, 9, 5, 1);
	
	for i=1, 15 do --武骧金星：挑战四神
		if GetS(86, 2, i, 5) == 0 then
			SetS(86, 2, i, 5, 2);
		end
	end
	local x1 = CC.ScreenW/2 - 200 ;
	local y1 = 0;
	DrawStrBox(x1, y1, "请选择挑战对象",C_WHITE, CC.DefaultFont);
	local menu = {
		{"张三丰和乔峰",nil,GetS(86, 2, 1, 5)-1},
		{"张三丰和东方不败",nil,GetS(86, 2, 2, 5)-1},
		{"张三丰和扫地神僧",nil,GetS(86, 2, 3, 5)-1},
		{"乔峰和东方不败",nil,GetS(86, 2, 4, 5)-1},
	};
	
	local numItem = 4;
	local size = CC.DefaultFont;
	local r = ShowMenu(menu,numItem,0,x1,y1+40,0,0,1,1,size,C_ORANGE,C_WHITE);
	if r > 0 then
		Cls();
		SetS(86, 2, r, 5, 3);
		if WarMain(226) then
			SetS(86, 2, r, 5, 1);
			say("少侠好身手啊。", 232, 1, "百事通");
			QZXS("全体队友实战增加50点");
			for i=1, CC.TeamNum do
				if JY.Base["队伍"..i] >= 0 then
					AddPersonAttrib(JY.Base["队伍"..i], "实战", 50)
				end
			end
		else
			SetS(86, 2, r, 5, 2);
			say("很可惜，先提高你的能力再来吧", 232, 1, "百事通");	
		end
	end
	
	SetS(86, 1, 9, 5, 0);
end

--显示拼音
--x,y为拼音显示的坐标
function Shurufa(x, y)
  local pinyin = ""
  local word = ""
  while 1 do
    local tmp = nil
    pinyin, tmp = GetPinyin(x, y, word)
    if tmp ~= nil then
      word = tmp
    end
    if pinyin == "finish" then
      break;
	  elseif pinyin ~= -1 and pinyin ~= "" then
	    word = word .. (SeleteHanzi(x, y, word, pinyin) or "")
    end
  end
  return word
end

--可选择的汉字
--x,y为文字显示的坐标
--word为已经输入好的文字
--pinyin为输入的拼音
function SeleteHanzi(x, y, word, pinyin)
  local T1 = {
de = {"的", "地", "得", "德", "底", "锝"}, 
di = {"的", "地", "第", "提", "低", "底", "抵", "弟", "迪", "递", "帝", "敌", "堤", "蒂", "缔", "滴", "涤", "翟", "娣", "笛", "棣", "荻", "谛", "狄", "邸", "嘀", "砥", "坻", "诋", "嫡", "镝", "碲", "骶", "氐", "柢", "绨", "籴", "羝", "睇", "觌"}, 
yi = {"一", "以", "已", "意", "议", "义", "益", "亿", "易", "医", "艺", "依", "移", "衣", "异", "伊", "仪", "宜", "遗", "疑", "毅", "谊", "亦", "疫", "役", "忆", "抑", "乙", "译", "翼", "溢", "椅", "沂", "逸", "蚁", "夷", "邑", "怡", "绎", "彝", "裔", "姨", "熠", "贻", "矣", "屹", "颐", "倚", "诣", "胰", "奕", "翌", "弈", "轶", "驿", "壹", "猗", "臆", "弋", "铱", "旖", "漪", "迤", "佚", "翊", "诒", "怿", "痍", "懿", "饴", "峄", "揖", "眙", "镒", "仡", "黟", "肄", "咿", "翳", "挹", "缢", "呓", "刈", "咦", "嶷", "羿", "钇", "殪", "荑", "薏", "蜴", "镱", "噫", "癔", "苡", "悒", "嗌", "瘗", "欹", "佾", "埸", "圯", "舣", "酏", "劓"}, 
guo = {"国", "过", "果", "郭", "锅", "裹", "帼", "涡", "椁", "蝈", "虢", "聒", "埚", "掴", "猓", "崞", "蜾", "呙", "馘"}, 
zai = {"在", "再", "灾", "载", "栽", "仔", "宰", "哉", "崽", "甾"}, 
ren = {"人", "任", "认", "仁", "忍", "韧", "刃", "纫", "饪", "妊", "荏", "稔", "壬", "仞", "轫", "衽", "葚"}, 
le = {"了", "乐", "勒", "肋", "叻", "鳓", "仂", "泐"}, 
liao = {"了", "料", "疗", "辽", "廖", "聊", "寥", "僚", "燎", "缭", "撂", "撩", "嘹", "潦", "镣", "寮", "蓼", "獠", "钌", "尥", "鹩"}, 
you = {"有", "由", "又", "优", "游", "油", "友", "右", "邮", "尤", "忧", "幼", "犹", "诱", "悠", "幽", "佑", "釉", "柚", "铀", "鱿", "囿", "酉", "攸", "黝", "莠", "猷", "蝣", "疣", "呦", "蚴", "莸", "莜", "铕", "宥", "繇", "卣", "牖", "鼬", "蝤", "尢", "蚰", "侑"}, 
zhong = {"中", "重", "种", "众", "终", "钟", "忠", "仲", "衷", "肿", "踵", "冢", "盅", "忪", "锺", "舯", "螽"}, 
shi = {"是", "市", "时", "实", "事", "十", "使", "世", "施", "式", "势", "视", "识", "师", "史", "示", "石", "食", "始", "士", "失", "适", "试", "什", "室", "似", "诗", "饰", "殖", "释", "驶", "氏", "逝", "湿", "蚀", "狮", "誓", "拾", "尸", "匙", "仕", "柿", "矢", "峙", "侍", "噬", "嗜", "拭", "嘘", "屎", "恃", "轼", "虱", "舐", "莳", "铈", "谥", "炻", "豕", "鲥", "螫", "酾", "筮", "埘", "弑", "蓍", "鲺", "贳"}, 
nian = {"年", "念", "酿", "粘", "碾", "廿", "捻", "撵", "拈", "蔫", "鲶", "埝", "鲇", "辇", "黏"}, 
he = {"和", "合", "河", "何", "核", "贺", "喝", "赫", "荷", "盒", "鹤", "吓", "呵", "禾", "菏", "壑", "褐", "涸", "阂", "阖", "劾", "诃", "颌", "嗬", "貉", "曷", "翮", "纥", "蚵", "盍"}, 
hu = {"和", "护", "户", "核", "湖", "互", "乎", "呼", "胡", "戏", "忽", "虎", "沪", "糊", "壶", "葫", "狐", "蝴", "弧", "瑚", "浒", "鹄", "琥", "扈", "唬", "滹", "惚", "祜", "囫", "斛", "笏", "醐", "猢", "怙", "唿", "戽", "槲", "觳", "煳", "鹕", "冱", "瓠", "岵", "鹱", "烀", "轷"}, 
huo = {"和", "活", "或", "货", "获", "火", "伙", "惑", "霍", "祸", "豁", "嚯", "藿", "锪", "蠖", "钬", "耠", "镬", "夥", "劐", "攉"}, 
da = {"大", "达", "打", "答", "塔", "搭", "沓", "瘩", "嗒", "哒", "耷", "鞑", "疸", "靼", "褡", "笪", "怛", "妲"}, 
dai = {"大", "代", "带", "待", "贷", "戴", "袋", "歹", "呆", "逮", "岱", "傣", "怠", "殆", "黛", "甙", "埭", "绐", "玳", "呔", "迨", "骀"}, 
ye = {"业", "也", "夜", "叶", "野", "液", "冶", "页", "爷", "耶", "邪", "咽", "椰", "哗", "烨", "掖", "拽", "曳", "晔", "谒", "腋", "噎", "揶", "靥", "邺", "铘"}, 
bu = {"不", "部", "步", "布", "补", "捕", "堡", "埔", "卜", "埠", "簿", "哺", "怖", "钚", "卟", "瓿", "逋", "晡", "醭", "钸"}, 
wei = {"为", "位", "委", "未", "维", "卫", "围", "违", "威", "伟", "危", "味", "微", "遗", "唯", "谓", "伪", "慰", "尾", "魏", "韦", "胃", "畏", "帷", "喂", "巍", "萎", "蔚", "纬", "潍", "尉", "渭", "惟", "薇", "苇", "炜", "圩", "娓", "诿", "玮", "崴", "桅", "偎", "逶", "猥", "囗", "葳", "隗", "痿", "猬", "涠", "嵬", "韪", "煨", "艉", "帏", "闱", "洧", "沩", "隈", "鲔", "軎"}, 
fa = {"发", "法", "罚", "乏", "伐", "阀", "筏", "砝", "垡", "珐"}, 
hui = {"会", "回", "挥", "汇", "惠", "辉", "恢", "徽", "绘", "毁", "慧", "灰", "贿", "卉", "悔", "徊", "秽", "溃", "荟", "晖", "彗", "讳", "诲", "珲", "堕", "诙", "蕙", "晦", "麾", "烩", "茴", "喙", "桧", "蛔", "洄", "浍", "虺", "恚", "蟪", "咴", "隳", "缋", "哕"}, 
kuai = {"会", "快", "块", "筷", "脍", "蒯", "侩", "浍", "郐", "狯", "哙"}, 
gong = {"工", "公", "共", "供", "功", "红", "贡", "攻", "宫", "巩", "龚", "恭", "拱", "躬", "弓", "汞", "蚣", "珙", "觥", "肱"}, 
jing = {"镜", "京", "精", "境", "竞", "景", "警", "竟", "井", "惊", "径", "经","静", "劲", "敬", "净", "镜", "睛", "晶", "荆", "兢", "靖", "泾", "憬", "鲸", "茎", "腈", "菁", "胫", "阱", "旌", "粳", "靓", "痉", "儆", "迳", "婧", "肼", "刭", "弪", "獍"}, 
shang = {"上", "商", "尚", "伤", "赏", "汤", "裳", "墒", "晌", "垧", "觞", "殇", "熵", "绱"}, 
yao = {"要", "约", "药", "邀", "陶", "摇", "耀", "腰", "遥", "姚", "窑", "瑶", "咬", "尧", "钥", "谣", "肴", "夭", "侥", "吆", "疟", "妖", "幺", "杳", "舀", "窈", "曜", "鹞", "爻", "繇", "徭", "轺", "铫", "鳐", "崾", "珧"}, 
ge = {"个", "合", "各", "革", "格", "歌", "哥", "盖", "隔", "割", "阁", "戈", "葛", "鸽", "搁", "屹", "胳", "舸", "疙", "铬", "骼", "蛤", "咯", "圪", "镉", "颌", "仡", "硌", "嗝", "鬲", "膈", "纥", "袼", "搿", "塥", "哿", "虼"}, 
chan = {"产", "单", "阐", "缠", "掺", "禅", "颤", "铲", "蝉", "搀", "潺", "蟾", "馋", "忏", "婵", "孱", "觇", "廛", "谄", "谗", "澶", "骣", "羼", "镡", "躔", "蒇", "冁"}, 
zhe = {"这", "者", "着", "浙", "折", "哲", "蔗", "遮", "辙", "辄", "柘", "锗", "褶", "蜇", "蛰", "鹧", "谪", "赭", "摺", "磔"}, 
chu = {"出", "处", "础", "初", "除", "储", "畜", "触", "楚", "厨", "雏", "矗", "橱", "锄", "褚", "滁", "躇", "怵", "绌", "搐", "刍", "蜍", "黜", "杵", "蹰", "亍", "樗", "憷", "楮"}, 
xing = {"行", "省", "性", "形", "型", "兴", "星", "刑", "幸", "姓", "醒", "邢", "杏", "腥", "猩", "悻", "荥", "陉", "惺", "饧", "擤", "硎", "荇"}, 
hang = {"行", "航", "杭", "巷", "夯", "吭", "珩", "沆", "绗", "颃"}, 
heng = {"行", "衡", "横", "恒", "亨", "哼", "珩", "桁", "蘅"}, 
zuo = {"作", "做", "座", "左", "坐", "昨", "佐", "琢", "凿", "搓", "撮", "祚", "柞", "唑", "嘬", "怍", "笮", "阼", "胙"}, 
sheng = {"生", "省", "声", "升", "胜", "盛", "乘", "圣", "剩", "牲", "绳", "笙", "甥", "嵊", "晟", "渑", "眚"}, 
jia = {"家", "加", "价", "假", "佳", "架", "甲", "嘉", "贾", "驾", "嫁", "夹", "稼", "钾", "茄", "挟", "迦", "伽", "颊", "浃", "枷", "戛", "荚", "痂", "镓", "笳", "珈", "岬", "胛", "嘏", "袈", "郏", "葭", "袷", "瘕", "铗", "跏", "蛱", "恝"}, 
jie = {"家", "结", "解", "价", "界", "接", "节", "届", "介", "阶", "街", "借", "杰", "洁", "截", "姐", "揭", "捷", "劫", "戒", "皆", "竭", "桔", "诫", "楷", "秸", "睫", "藉", "拮", "芥", "诘", "碣", "嗟", "颉", "蚧", "孑", "婕", "疖", "桀", "讦", "疥", "偈", "羯", "喈", "鲒", "骱"}, 
cheng = {"成", "程", "城", "承", "称", "盛", "乘", "诚", "呈", "惩", "撑", "澄", "秤", "橙", "骋", "逞", "瞠", "丞", "铛", "埕", "塍", "噌", "蛏", "柽", "铖", "酲", "裎", "枨"}, 
dao = {"到", "道", "导", "岛", "倒", "刀", "盗", "稻", "蹈", "悼", "捣", "叨", "祷", "焘", "氘", "纛", "帱", "忉"}, 
ri = {"日"}, 
min = {"民", "敏", "闽", "闵", "皿", "泯", "岷", "悯", "珉", "抿", "黾", "缗", "玟", "愍", "苠", "鳘"}, 
lai = {"来", "莱", "赖", "睐", "徕", "籁", "涞", "赉", "濑", "癞", "崃", "铼"}, 
wo = {"我", "握", "窝", "沃", "卧", "挝", "涡", "斡", "渥", "幄", "蜗", "喔", "倭", "莴", "龌", "肟", "硪"}, 
dui = {"对", "队", "敦", "兑", "堆", "碓", "怼", "憝"}, 
jin = {"进", "金", "今", "近", "仅", "紧", "尽", "津", "斤", "禁", "锦", "劲", "晋", "谨", "筋", "巾", "浸", "襟", "靳", "瑾", "烬", "缙", "觐", "堇", "馑", "荩", "噤", "廑", "妗", "槿", "赆", "衿", "卺"}, 
duo = {"多", "度", "夺", "朵", "躲", "铎", "咄", "堕", "舵", "驮", "垛", "惰", "哆", "踱", "跺", "掇", "剁", "柁", "缍", "沲", "裰", "哚"}, 
quan = {"全", "权", "券", "泉", "圈", "拳", "劝", "犬", "铨", "痊", "诠", "荃", "醛", "蜷", "颧", "绻", "筌", "鬈", "悛", "辁", "畎"}, 
jian = {"建", "间", "件", "见", "坚", "检", "健", "监", "减", "简", "艰", "践", "兼", "鉴", "键", "渐", "柬", "剑", "尖", "肩", "舰", "荐", "箭", "浅", "剪", "俭", "碱", "茧", "奸", "歼", "拣", "捡", "煎", "贱", "溅", "槛", "涧", "笺", "谏", "饯", "锏", "缄", "睑", "謇", "蹇", "腱", "菅", "翦", "戬", "毽", "笕", "犍", "硷", "鞯", "牮", "枧", "湔", "鲣", "囝", "裥", "踺", "搛", "缣", "鹣", "蒹", "谫", "僭", "戋", "趼", "楗"}, 
ta = {"他", "它", "她", "拓", "塔", "踏", "塌", "榻", "沓", "漯", "獭", "嗒", "挞", "蹋", "趿", "遢", "铊", "鳎", "溻", "闼"}, 
kai = {"开", "凯", "慨", "楷", "恺", "揩", "锴", "铠", "忾", "垲", "剀", "锎", "蒈"}, 
men = {"们", "门", "闷", "扪", "焖", "懑", "钔"}, 
chang = {"场", "长", "厂", "常", "偿", "昌", "唱", "畅", "倡", "尝", "肠", "敞", "倘", "猖", "娼", "裳", "徜", "昶", "怅", "嫦", "菖", "鲳", "阊", "伥", "苌", "氅", "惝", "鬯"}, 
zhan = {"展", "战", "占", "站", "崭", "粘", "湛", "沾", "瞻", "颤", "詹", "斩", "盏", "辗", "绽", "毡", "栈", "蘸", "旃", "谵", "搌"}, 
li = {"理", "力", "利", "立", "里", "李", "历", "例", "离", "励", "礼", "丽", "黎", "璃", "厉", "厘", "粒", "莉", "梨", "隶", "栗", "荔", "沥", "犁", "漓", "哩", "狸", "藜", "罹", "篱", "鲤", "砺", "吏", "澧", "俐", "骊", "溧", "砾", "莅", "锂", "笠", "蠡", "蛎", "痢", "雳", "俪", "傈", "醴", "栎", "郦", "俚", "枥", "喱", "逦", "娌", "鹂", "戾", "唳", "坜", "疠", "蜊", "黧", "猁", "鬲", "粝", "蓠", "呖", "跞", "疬", "缡", "鲡", "鳢", "嫠", "詈", "悝", "苈", "篥", "轹"}, 
xin = {"新", "心", "信", "寻", "辛", "欣", "薪", "馨", "鑫", "芯", "锌", "忻", "昕", "衅", "歆", "囟", "镡"}, 
fang = {"方", "放", "房", "防", "访", "纺", "芳", "仿", "坊", "妨", "肪", "邡", "舫", "彷", "枋", "鲂", "钫"}, 
zhu = {"主", "术", "住", "注", "助", "属", "逐", "著", "筑", "驻", "朱", "珠", "祝", "猪", "诸", "柱", "竹", "铸", "株", "瞩", "嘱", "贮", "煮", "烛", "褚", "蛛", "拄", "铢", "洙", "竺", "蛀", "渚", "伫", "杼", "侏", "诛", "茱", "箸", "炷", "躅", "翥", "潴", "邾", "槠", "舳", "橥", "瘃", "麈", "疰"}, 
qi = {"奇", "其", "起", "期", "气", "七", "器", "汽", "奇", "齐", "启", "旗", "棋", "妻", "弃", "歧", "欺", "骑", "契", "迄", "亟", "漆", "戚", "岂", "稽", "岐", "琦", "栖", "缉", "琪", "泣", "乞", "砌", "祁", "崎", "绮", "祺", "蹊", "祈", "凄", "淇", "杞", "脐", "麒", "圻", "岖", "憩", "芪", "俟", "畦", "荠", "耆", "葺", "沏", "萋", "骐", "鳍", "綦", "讫", "蕲", "屺", "颀", "亓", "碛", "柒", "汔", "綮", "萁", "嘁", "蛴", "槭", "欹", "芑", "桤", "蜞"}, 
zi = {"资", "自", "子", "字", "咨", "滋", "仔", "姿", "紫", "兹", "孜", "淄", "籽", "梓", "鲻", "渍", "姊", "吱", "秭", "恣", "孳", "訾", "滓", "锱", "辎", "趑", "龇", "赀", "眦", "缁", "呲", "笫", "谘", "嵫", "髭", "茈", "粢", "觜", "耔"}, 
xue = {"学", "血", "雪", "削", "薛", "穴", "靴", "谑", "噱", "鳕", "踅", "泶"}, 
bao = {"报", "保", "包", "宝", "暴", "胞", "薄", "爆", "炮", "饱", "抱", "堡", "剥", "鲍", "曝", "葆", "瀑", "豹", "刨", "褒", "雹", "孢", "苞", "煲", "褓", "趵", "鸨", "龅"}, 
zhi = {"制", "之", "治", "质", "职", "只", "志", "至", "指", "织", "支", "值", "知", "识", "直", "致", "执", "置", "止", "植", "纸", "智", "殖", "秩", "旨", "址", "滞", "氏", "枝", "芝", "脂", "帜", "汁", "肢", "挚", "稚", "酯", "掷", "峙", "炙", "栉", "侄", "芷", "窒", "咫", "吱", "趾", "痔", "蜘", "郅", "桎", "雉", "祉", "陟", "痣", "蛭", "帙", "枳", "踯", "徵", "胝", "栀", "贽", "祗", "豸", "鸷", "摭", "轵", "卮", "轾", "彘", "觯", "絷", "跖", "埴", "黹", "忮", "骘", "膣", "踬"}, 
zheng = {"政", "正", "证", "争", "整", "征", "郑", "丁", "症", "挣", "蒸", "睁", "铮", "筝", "拯", "帧", "峥", "怔", "诤", "狰", "徵", "钲"}, 
ji = {"济", "机", "其", "技", "基", "记", "计", "系", "革", "期", "际", "及", "集", "级", "几", "给", "积", "极", "己", "纪", "即", "继", "击", "既", "激", "绩", "急", "奇", "吉", "季", "齐", "疾", "迹", "鸡", "剂", "辑", "籍", "寄", "挤", "圾", "冀", "亟", "寂", "暨", "脊", "跻", "肌", "稽", "忌", "饥", "祭", "缉", "棘", "矶", "汲", "畸", "姬", "藉", "瘠", "骥", "羁", "妓", "讥", "稷", "蓟", "悸", "嫉", "岌", "叽", "伎", "鲫", "诘", "楫", "荠", "戟", "箕", "霁", "嵇", "觊", "麂", "畿", "玑", "笈", "犄", "芨", "唧", "屐", "髻", "戢", "佶", "偈", "笄", "跽", "蒺", "乩", "咭", "赍", "嵴", "虮", "掎", "齑", "殛", "鲚", "剞", "洎", "丌", "墼", "蕺", "芰", "哜"}, 
yong = {"用", "永", "拥", "勇", "涌", "泳", "庸", "俑", "踊", "佣", "咏", "雍", "甬", "镛", "臃", "邕", "蛹", "恿", "慵", "壅", "痈", "鳙", "墉", "饔", "喁"}, 
tong = {"同", "通", "统", "童", "痛", "铜", "桶", "桐", "筒", "彤", "侗", "佟", "潼", "捅", "酮", "砼", "瞳", "恸", "峒", "仝", "恫", "嗵", "垌", "茼"}, 
yu = {"于", "与", "育", "余", "预", "域", "予", "遇", "语", "誉", "玉", "鱼", "雨", "渔", "裕", "谷", "愈", "娱", "欲", "吁", "舆", "宇", "羽", "逾", "豫", "郁", "寓", "狱", "喻", "御", "浴", "愉", "禹", "俞", "蔚", "榆", "愚", "渝", "尉", "淤", "虞", "屿", "峪", "粥", "驭", "瑜", "禺", "毓", "钰", "隅", "芋", "熨", "瘀", "迂", "煜", "昱", "於", "臾", "盂", "聿", "竽", "萸", "妪", "腴", "圄", "谕", "觎", "揄", "龉", "谀", "俣", "馀", "庾", "妤", "瘐", "鬻", "欤", "腧", "鹬", "阈", "嵛", "雩", "鹆", "菀", "圉", "蜮", "伛", "纡", "窬", "窳", "饫", "蓣", "狳", "舁", "蝓", "燠"}, 
gao = {"高", "告", "搞", "稿", "膏", "糕", "镐", "皋", "羔", "锆", "杲", "郜", "睾", "诰", "藁", "篙", "缟", "槁", "槔"}, 
zhang = {"长", "张", "章", "障", "涨", "掌", "帐", "胀", "彰", "丈", "仗", "漳", "樟", "账", "杖", "璋", "嶂", "仉", "瘴", "蟑", "獐", "幛", "鄣", "嫜"}, 
xian = {"现", "先", "县", "见", "线", "限", "显", "险", "献", "鲜", "洗", "宪", "纤", "陷", "闲", "贤", "仙", "衔", "掀", "咸", "嫌", "羡", "弦", "腺", "痫", "娴", "舷", "馅", "酰", "铣", "冼", "涎", "暹", "籼", "锨", "苋", "蚬", "跹", "岘", "藓", "燹", "鹇", "氙", "莶", "霰", "跣", "猃", "祆", "筅"}, 
ben = {"本", "奔", "苯", "笨", "夯", "贲", "锛", "畚", "坌"}, 
yue = {"月", "说", "约", "越", "乐", "跃", "阅", "岳", "粤", "悦", "曰", "钥", "栎", "钺", "樾", "瀹", "龠", "刖"}, 
ding = {"定", "订", "顶", "丁", "鼎", "盯", "钉", "锭", "叮", "仃", "铤", "町", "酊", "啶", "碇", "腚", "疔", "玎", "耵"}, 
hua = {"化", "华", "划", "话", "花", "画", "滑", "哗", "豁", "骅", "桦", "猾", "铧", "砉"}, 
dong = {"动", "东", "董", "冬", "洞", "懂", "冻", "栋", "侗", "咚", "峒", "氡", "恫", "胴", "硐", "垌", "鸫", "岽", "胨"}, 
pin = {"品", "贫", "聘", "频", "拼", "苹", "拚", "颦", "姘", "嫔", "榀", "牝"}, 
chong = {"重", "种", "充", "冲", "涌", "崇", "虫", "宠", "忡", "憧", "舂", "茺", "铳", "艟"}, 
guan = {"关", "管", "观", "馆", "官", "贯", "冠", "惯", "灌", "罐", "莞", "纶", "棺", "矜", "倌", "鹳", "鳏", "盥", "掼", "涫"}, 
fen = {"分", "份", "纷", "奋", "粉", "氛", "芬", "愤", "粪", "坟", "汾", "焚", "酚", "吩", "忿", "棼", "玢", "鼢", "瀵", "偾", "鲼"}, 
wai = {"外", "歪"}, 
qu = {"区", "去", "取", "且", "曲", "趋", "渠", "趣", "驱", "屈", "躯", "衢", "娶", "祛", "瞿", "戌", "岖", "龋", "觑", "朐", "蛐", "癯", "蛆", "苣", "阒", "诎", "劬", "蕖", "蘧", "氍", "黢", "蠼", "璩", "麴", "鸲", "磲"}, 
ou = {"区", "欧", "偶", "殴", "呕", "藕", "讴", "鸥", "瓯", "沤", "耦", "怄"}, 
neng = {"能"}, 
she = {"设", "社", "摄", "涉", "射", "折", "舍", "蛇", "舌", "奢", "慑", "赦", "赊", "佘", "麝", "歙", "畲", "厍", "摺", "猞", "滠"}, 
hou = {"后", "候", "厚", "侯", "猴", "喉", "吼", "逅", "篌", "糇", "骺", "後", "鲎", "瘊", "堠"}, 
jiu = {"就", "究", "九", "酒", "久", "救", "旧", "纠", "舅", "灸", "疚", "揪", "咎", "韭", "玖", "臼", "柩", "赳", "鸠", "鹫", "厩", "啾", "阄", "桕", "僦", "鬏"}, 
deng = {"等", "登", "邓", "灯", "澄", "凳", "瞪", "蹬", "噔", "磴", "嶝", "镫", "簦", "戥"}, 
ti = {"体", "提", "题", "替", "梯", "踢", "惕", "剔", "蹄", "啼", "屉", "剃", "涕", "锑", "倜", "悌", "逖", "嚏", "荑", "醍", "绨", "鹈", "缇", "裼"}, 
xia = {"下", "夏", "峡", "厦", "辖", "霞", "虾", "狭", "吓", "侠", "暇", "遐", "瞎", "匣", "瑕", "唬", "呷", "黠", "硖", "罅", "狎", "瘕", "柙"}, 
wan = {"万", "完", "晚", "湾", "玩", "碗", "顽", "挽", "弯", "蔓", "丸", "莞", "皖", "宛", "婉", "腕", "蜿", "惋", "烷", "娩", "琬", "畹", "豌", "剜", "纨", "绾", "脘", "菀", "芄"}, 
mo = {"万", "无", "没", "模", "末", "冒", "莫", "摩", "墨", "默", "磨", "摸", "漠", "脉", "膜", "魔", "沫", "陌", "抹", "寞", "蘑", "摹", "蓦", "馍", "茉", "嘿", "谟", "秣", "貉", "嫫", "镆", "殁", "耱", "瘼", "貊", "貘"}, 
yuan = {"元", "员", "院", "原", "源", "远", "愿", "园", "援", "圆", "缘", "袁", "怨", "渊", "苑", "冤", "媛", "猿", "垣", "沅", "塬", "垸", "鸳", "辕", "鸢", "瑗", "圜", "爰", "芫", "鼋", "橼", "螈", "眢", "箢", "掾"}, 
qian = {"前", "千", "钱", "签", "潜", "迁", "欠", "纤", "牵", "浅", "遣", "谦", "乾", "铅", "歉", "黔", "谴", "嵌", "倩", "钳", "茜", "虔", "堑", "钎", "骞", "阡", "掮", "钤", "扦", "芊", "犍", "箬", "荨", "仟", "芡", "悭", "缱", "佥", "愆", "褰", "肷", "岍", "搴", "箝", "慊", "椠"}, 
mian = {"面", "棉", "免", "绵", "缅", "勉", "眠", "冕", "娩", "腼", "渑", "湎", "沔", "眄"}, 
nong = {"农", "浓", "弄", "脓", "侬", "哝"}, 
shuo = {"说", "数", "硕", "烁", "朔", "铄", "妁", "槊", "蒴", "搠"}, 
shui = {"说", "水", "税", "谁", "睡"}, 
yun = {"员", "运", "均", "云", "允", "孕", "蕴", "韵", "酝", "耘", "晕", "匀", "芸", "陨", "纭", "熨", "郧", "恽", "韫", "郓", "氲", "殒", "愠", "昀", "狁"}, 
er = {"而", "二", "尔", "儿", "耳", "迩", "饵", "洱", "贰", "铒", "珥", "佴", "鸸", "鲕"}, 
wu = {"务", "物", "无", "五", "武", "午", "吴", "舞", "伍", "污", "乌", "误", "亡", "恶", "屋", "晤", "悟", "吾", "雾", "芜", "梧", "勿", "巫", "侮", "坞", "毋", "诬", "呜", "钨", "邬", "捂", "鹜", "兀", "婺", "妩", "於", "戊", "鹉", "浯", "蜈", "唔", "骛", "仵", "焐", "芴", "鋈", "庑", "鼯", "牾", "怃", "圬", "忤", "痦", "迕", "杌", "寤", "阢"}, 
dian = {"电", "点", "店", "典", "奠", "甸", "碘", "淀", "殿", "垫", "颠", "滇", "癫", "巅", "惦", "掂", "癜", "玷", "佃", "踮", "靛", "钿", "簟", "坫", "阽"}, 
wen = {"文", "问", "闻", "稳", "温", "纹", "吻", "蚊", "雯", "紊", "瘟", "汶", "刎", "璺", "阌"}, 
ke = {"可", "科", "克", "客", "刻", "课", "颗", "渴", "壳", "柯", "棵", "呵", "坷", "恪", "苛", "咳", "磕", "珂", "稞", "瞌", "溘", "轲", "窠", "嗑", "疴", "蝌", "岢", "颏", "髁", "缂", "氪", "骒", "钶", "锞"}, 
zong = {"总", "综", "宗", "纵", "踪", "棕", "粽", "鬃", "偬", "枞", "腙"}, 
xmjc = {"零", "镜", "奇", "二", "四", "七", "水"}, 
gai = {"改", "该", "盖", "概", "溉", "钙", "丐", "芥", "赅", "垓", "陔", "戤"}, 
san = {"三", "散", "伞", "叁", "糁", "馓", "毵"}, 
hao = {"好", "号", "毫", "豪", "耗", "浩", "郝", "皓", "昊", "镐", "蒿", "壕", "灏", "嚎", "濠", "蚝", "貉", "颢", "嗥", "薅", "嚆"}, 
si = {"司", "四", "思", "斯", "食", "私", "死", "似", "丝", "饲", "寺", "厕", "肆", "撕", "泗", "伺", "嗣", "祀", "厮", "驷", "嘶", "锶", "俟", "巳", "蛳", "咝", "耜", "笥", "鸶", "缌", "澌", "姒", "汜", "厶", "兕"}, 
cong = {"从", "丛", "匆", "聪", "葱", "囱", "琮", "淙", "骢", "苁", "璁"}, 
ping = {"平", "评", "凭", "瓶", "冯", "屏", "萍", "苹", "乒", "坪", "枰", "娉", "俜", "鲆"}, 
dang = {"当", "党", "档", "荡", "挡", "宕", "砀", "裆", "凼", "菪", "谠"}, 
tian = {"天", "田", "添", "填", "甜", "恬", "腆", "佃", "舔", "阗", "忝", "殄", "畋", "掭"}, 
nei = {"内", "那", "哪", "馁"}, 
xiao = {"小", "效", "销", "消", "校", "晓", "笑", "肖", "削", "孝", "萧", "潇", "硝", "宵", "啸", "嚣", "霄", "淆", "哮", "筱", "逍", "箫", "骁", "枭", "哓", "绡", "蛸", "崤", "枵", "魈"}, 
mu = {"目", "模", "木", "亩", "幕", "母", "牧", "穆", "姆", "墓", "慕", "牟", "牡", "募", "睦", "沐", "暮", "拇", "姥", "钼", "苜", "仫", "毪", "坶"}, 
hai = {"海", "还", "害", "孩", "亥", "咳", "骸", "嘿", "骇", "氦", "嗨", "胲", "醢"}, 
suo = {"所", "索", "缩", "锁", "莎", "梭", "琐", "嗦", "唆", "唢", "娑", "蓑", "羧", "挲", "桫", "嗍", "睃"}, 
ru = {"入", "如", "乳", "儒", "辱", "汝", "茹", "褥", "孺", "濡", "蠕", "嚅", "缛", "溽", "铷", "洳", "薷", "襦", "颥", "蓐"}, 
liang = {"量", "两", "粮", "良", "辆", "亮", "梁", "凉", "谅", "粱", "晾", "靓", "踉", "莨", "椋", "魉", "墚"}, 
du = {"度", "都", "独", "督", "读", "顿", "毒", "渡", "杜", "堵", "赌", "睹", "肚", "镀", "渎", "笃", "嘟", "犊", "妒", "牍", "蠹", "椟", "黩", "芏", "髑"}, 
bei = {"北", "被", "备", "倍", "背", "杯", "贝", "辈", "悲", "碑", "臂", "卑", "悖", "惫", "蓓", "陂", "钡", "狈", "呗", "焙", "碚", "褙", "埤", "鞴", "孛", "鹎", "萆", "邶", "鐾"}, 
huan = {"还", "环", "换", "欢", "患", "缓", "唤", "焕", "幻", "痪", "桓", "寰", "涣", "宦", "洹", "浣", "豢", "奂", "郇", "圜", "獾", "鲩", "鬟", "萑", "逭", "漶", "锾", "缳", "擐"}, 
dou = {"都", "斗", "读", "豆", "抖", "兜", "陡", "逗", "窦", "蚪", "痘", "蔸", "篼"}, 
shu = {"术", "书", "数", "属", "树", "输", "束", "述", "署", "熟", "殊", "蔬", "舒", "疏", "鼠", "淑", "叔", "暑", "枢", "墅", "俞", "曙", "抒", "竖", "蜀", "薯", "梳", "戍", "恕", "孰", "沭", "赎", "庶", "漱", "塾", "倏", "澍", "纾", "姝", "菽", "黍", "腧", "秫", "毹", "殳", "摅", "丨"}, 
ming = {"明", "名", "命", "盟", "鸣", "铭", "冥", "茗", "溟", "酩", "瞑", "螟", "暝"}, 
zhao = {"着", "照", "招", "找", "召", "朝", "赵", "兆", "昭", "肇", "罩", "钊", "沼", "嘲", "爪", "诏", "啁", "棹", "笊"}, 
zhuo = {"着", "著", "缴", "桌", "卓", "捉", "琢", "灼", "浊", "酌", "拙", "茁", "涿", "镯", "啄", "濯", "焯", "倬", "擢", "斫", "棹", "诼", "浞", "禚"}, 
ci = {"次", "此", "词", "辞", "刺", "瓷", "磁", "兹", "慈", "茨", "赐", "祠", "伺", "雌", "疵", "鹚", "糍", "呲", "茈"}, 
jiang = {"将", "强", "江", "奖", "讲", "降", "疆", "蒋", "姜", "浆", "匠", "酱", "僵", "桨", "绛", "缰", "犟", "豇", "礓", "洚", "茳", "糨", "耩"}, 
qiang = {"将", "强", "抢", "墙", "枪", "腔", "锵", "呛", "羌", "蔷", "襁", "羟", "跄", "樯", "戕", "嫱", "戗", "炝", "镪", "锖", "蜣"}, 
zeng = {"增", "曾", "综", "赠", "憎", "锃", "甑", "罾", "缯"}, 
xiang = {"向", "项", "相", "想", "乡", "象", "响", "香", "降", "像", "享", "箱", "祥", "湘", "详", "橡", "巷", "翔", "襄", "厢", "镶", "飨", "饷", "缃", "骧", "芗", "庠", "鲞", "葙", "蟓"}, 
ying = {"应", "营", "影", "英", "迎", "映", "硬", "盈", "赢", "颖", "婴", "鹰", "荧", "莹", "樱", "瑛", "蝇", "萦", "莺", "颍", "膺", "缨", "瀛", "楹", "罂", "荥", "萤", "鹦", "滢", "蓥", "郢", "茔", "嘤", "璎", "嬴", "瘿", "媵", "撄", "潆"}, 
mei = {"美", "没", "每", "煤", "梅", "媒", "枚", "妹", "眉", "魅", "霉", "谜", "昧", "媚", "玫", "酶", "镁", "湄", "寐", "莓", "袂", "楣", "糜", "嵋", "镅", "浼", "猸", "鹛"}, 
gui = {"规", "贵", "归", "轨", "桂", "柜", "圭", "鬼", "硅", "瑰", "跪", "龟", "闺", "诡", "癸", "炔", "鳜", "桧", "皈", "鲑", "刽", "晷", "傀", "妫", "炅", "庋", "簋", "刿", "宄", "匦"}, 
xie = {"些", "解", "协", "写", "血", "叶", "谢", "械", "鞋", "胁", "斜", "携", "懈", "契", "卸", "谐", "泄", "蟹", "邪", "歇", "泻", "屑", "挟", "燮", "榭", "蝎", "撷", "偕", "亵", "楔", "颉", "缬", "邂", "瀣", "勰", "榍", "薤", "绁", "渫", "廨", "獬", "躞"}, 
biao = {"表", "标", "彪", "勺", "镖", "裱", "膘", "飙", "镳", "婊", "骠", "飑", "杓", "髟", "鳔", "瘭"}, 
xi = {"系", "西", "席", "息", "希", "习", "吸", "喜", "细", "析", "戏", "洗", "悉", "锡", "溪", "惜", "稀", "袭", "夕", "晰", "昔", "牺", "腊", "烯", "熙", "媳", "栖", "膝", "隙", "犀", "蹊", "硒", "兮", "熄", "曦", "禧", "茜", "嬉", "玺", "奚", "汐", "徙", "羲", "铣", "淅", "嘻", "歙", "熹", "矽", "蟋", "郗", "唏", "皙", "隰", "樨", "浠", "蜥", "檄", "翕", "阋", "舾", "屣", "葸", "螅", "粞", "觋", "欷", "僖", "醯", "鼷", "裼", "穸", "饩", "舄", "禊", "菥", "蓰"}, 
ban = {"办", "版", "半", "班", "般", "板", "颁", "伴", "搬", "斑", "扮", "拌", "扳", "瓣", "坂", "阪", "绊", "钣", "瘢", "舨", "癍"}, 
jiao = {"教", "交", "较", "校", "角", "觉", "叫", "脚", "缴", "胶", "轿", "郊", "焦", "骄", "浇", "椒", "礁", "佼", "娇", "矫", "搅", "绞", "酵", "剿", "嚼", "饺", "窖", "跤", "蛟", "侥", "狡", "姣", "皎", "茭", "峤", "铰", "醮", "鲛", "湫", "徼", "鹪", "僬", "噍", "艽", "挢", "敫"}, 
tiao = {"条", "调", "挑", "跳", "迢", "眺", "苕", "窕", "笤", "佻", "粜", "髫", "祧", "龆", "蜩", "鲦"}, 
zui = {"最", "罪", "堆", "嘴", "醉", "咀", "蕞"}, 
te = {"特", "忑", "忒", "铽", "慝"}, 
shou = {"收", "手", "受", "首", "售", "授", "守", "熟", "寿", "瘦", "兽", "狩", "绶", "艏"}, 
bing = {"并", "病", "兵", "冰", "屏", "饼", "炳", "秉", "丙", "摒", "柄", "槟", "禀", "邴"}, 
an = {"厂", "广", "安", "案", "按", "岸", "暗", "鞍", "氨", "俺", "胺", "铵", "谙", "庵", "黯", "鹌", "桉", "埯", "犴", "揞"}, 
kou = {"口", "扣", "寇", "叩", "抠", "蔻", "芤", "眍", "筘"}, 
diao = {"调", "掉", "雕", "鸟", "吊", "钓", "刁", "貂", "凋", "碉", "鲷", "叼", "铫", "铞"}, 
zu = {"组", "族", "足", "祖", "租", "阻", "卒", "俎", "诅", "镞", "菹"}, 
lu = {"路", "率", "律", "旅", "六", "陆", "录", "绿", "虑", "露", "鲁", "卢", "炉", "履", "吕", "铝", "屡", "鹿", "禄", "赂", "芦", "庐", "碌", "氯", "缕", "滤", "麓", "侣", "颅", "驴", "泸", "卤", "潞", "鹭", "辘", "榈", "虏", "璐", "漉", "噜", "闾", "褛", "戮", "鲈", "掳", "橹", "轳", "逯", "渌", "蓼", "撸", "鸬", "栌", "氇", "胪", "镥", "簏", "膂", "舻", "辂", "稆", "垆"}, 
guang = {"广", "光", "逛", "犷", "胱", "咣", "桄"}, 
bi = {"比", "必", "币", "笔", "毕", "秘", "避", "闭", "辟", "壁", "弊", "彼", "逼", "碧", "鼻", "臂", "蔽", "拂", "泌", "璧", "庇", "痹", "毙", "弼", "匕", "鄙", "陛", "裨", "贲", "敝", "蓖", "吡", "篦", "俾", "铋", "毖", "筚", "荸", "薜", "婢", "哔", "跸", "埤", "濞", "秕", "荜", "愎", "睥", "妣", "芘", "箅", "庳", "髀", "畀", "滗", "狴", "萆", "嬖", "襞", "舭"}, 
tou = {"投", "头", "透", "偷", "钭", "骰"}, 
jue = {"决", "绝", "角", "觉", "脚", "掘", "崛", "诀", "獗", "抉", "爵", "嚼", "倔", "厥", "蕨", "攫", "珏", "矍", "蹶", "谲", "镢", "嗟", "噱", "桷", "噘", "撅", "橛", "孓", "觖", "劂", "爝"}, 
nan = {"南", "难", "男", "楠", "喃", "囡", "赧", "腩", "囝", "蝻"}, 
na = {"南", "那", "纳", "拿", "呢", "哪", "娜", "钠", "呐", "捺", "衲", "镎", "肭"}, 
ling = {"领", "令", "另", "零", "灵", "龄", "陵", "岭", "凌", "玲", "铃", "菱", "棱", "伶", "拎", "羚", "苓", "聆", "翎", "泠", "瓴", "囹", "绫", "呤", "棂", "蛉", "酃", "鲮", "柃"}, 
qing = {"情", "青", "清", "请", "亲", "轻", "庆", "倾", "顷", "卿", "晴", "氢", "擎", "氰", "罄", "磬", "蜻", "箐", "鲭", "綮", "苘", "黥", "圊", "檠", "謦"}, 
shan = {"山", "单", "善", "陕", "闪", "衫", "擅", "汕", "扇", "杉", "珊", "禅", "删", "膳", "缮", "赡", "鄯", "栅", "煽", "姗", "跚", "鳝", "嬗", "潸", "讪", "舢", "苫", "疝", "掸", "膻", "钐", "剡", "蟮", "芟", "埏", "骟"}, 
che = {"车", "彻", "撤", "尺", "扯", "澈", "掣", "坼", "砗"}, 
ju = {"车", "局", "据", "具", "举", "居", "剧", "巨", "聚", "距", "句", "拒", "俱", "柜", "菊", "拘", "炬", "桔", "惧", "矩", "鞠", "驹", "锯", "踞", "咀", "瞿", "枸", "掬", "沮", "莒", "橘", "飓", "疽", "钜", "趄", "踽", "遽", "琚", "龃", "椐", "苣", "裾", "榘", "狙", "倨", "榉", "苴", "讵", "雎", "锔", "窭", "鞫", "犋", "屦", "醵"}, 
ran = {"然", "染", "燃", "冉", "苒", "髯", "蚺"}, 
yin = {"因", "引", "银", "印", "音", "烟", "饮", "阴", "隐", "姻", "殷", "淫", "尹", "荫", "吟", "瘾", "寅", "茵", "圻", "垠", "鄞", "湮", "蚓", "氤", "胤", "龈", "窨", "喑", "铟", "洇", "狺", "夤", "吲", "霪", "茚", "堙"}, 
ba = {"把", "八", "巴", "拔", "吧", "坝", "爸", "霸", "罢", "芭", "跋", "扒", "叭", "靶", "疤", "笆", "耙", "鲅", "粑", "岜", "灞", "钯", "捌", "菝", "魃", "茇"}, 
chi = {"持", "吃", "池", "迟", "赤", "驰", "尺", "斥", "齿", "翅", "匙", "痴", "耻", "炽", "侈", "弛", "叱", "啻", "坻", "嗤", "墀", "哧", "茌", "豉", "敕", "笞", "饬", "踟", "蚩", "媸", "魑", "篪", "褫", "彳", "鸱", "螭", "瘛", "眵", "傺"}, 
dan = {"但", "单", "石", "担", "丹", "胆", "旦", "弹", "蛋", "淡", "诞", "氮", "郸", "耽", "殚", "惮", "儋", "眈", "疸", "澹", "掸", "啖", "箪", "聃", "萏", "瘅", "赕"}, 
cun = {"村", "存", "寸", "蹲", "忖", "皴"}, 
qiu = {"求", "球", "秋", "丘", "邱", "仇", "酋", "裘", "龟", "囚", "遒", "鳅", "虬", "蚯", "泅", "楸", "湫", "犰", "逑", "巯", "俅", "蝤", "赇", "鼽", "糗"}, 
fu = {"府", "服", "副", "负", "富", "复", "福", "夫", "妇", "幅", "付", "扶", "父", "符", "附", "腐", "赴", "佛", "浮", "覆", "辅", "傅", "伏", "抚", "赋", "辐", "腹", "弗", "肤", "阜", "袱", "缚", "甫", "氟", "斧", "孚", "敷", "俯", "拂", "俘", "咐", "腑", "孵", "芙", "涪", "釜", "脯", "茯", "馥", "绂", "讣", "呋", "罘", "麸", "蝠", "匐", "芾", "蜉", "跗", "凫", "滏", "蝮", "驸", "绋", "蚨", "砩", "桴", "赙", "菔", "趺", "苻", "拊", "鲋", "怫", "稃", "郛", "莩", "幞", "祓", "艴", "黻", "黼", "鳆"}, 
yan = {"研", "严", "验", "演", "言", "眼", "烟", "沿", "延", "盐", "炎", "燕", "岩", "宴", "艳", "颜", "殷", "彦", "掩", "淹", "阎", "衍", "铅", "雁", "咽", "厌", "焰", "堰", "砚", "唁", "焉", "晏", "檐", "蜒", "奄", "俨", "腌", "妍", "谚", "兖", "筵", "焱", "偃", "闫", "嫣", "鄢", "湮", "赝", "胭", "琰", "滟", "阉", "魇", "酽", "郾", "恹", "崦", "芫", "阏", "剡", "鼹", "菸", "餍", "谳", "厣", "罨", "阽"}, 
jun = {"军", "均", "俊", "君", "峻", "菌", "竣", "钧", "骏", "龟", "浚", "郡", "筠", "皲", "麇", "捃"}, 
yo = {"育", "哟", "唷"}, 
gan = {"干", "感", "赶", "敢", "甘", "肝", "杆", "赣", "乾", "柑", "尴", "竿", "秆", "橄", "矸", "淦", "苷", "擀", "酐", "绀", "泔", "坩", "旰", "疳", "澉"}, 
tuan = {"团", "湍", "疃", "抟", "彖"}, 
zao = {"造", "早", "遭", "枣", "噪", "灶", "燥", "糟", "凿", "躁", "藻", "皂", "澡", "蚤", "唣"}, 
lian = {"联", "连", "练", "廉", "炼", "脸", "莲", "恋", "链", "帘", "怜", "涟", "敛", "琏", "镰", "濂", "楝", "鲢", "殓", "潋", "裢", "裣", "臁", "奁", "蠊", "蔹"}, 
zhuan = {"专", "转", "传", "赚", "砖", "撰", "篆", "沌", "馔", "啭", "颛"}, 
shao = {"少", "绍", "召", "烧", "稍", "邵", "哨", "韶", "捎", "勺", "梢", "鞘", "芍", "苕", "劭", "艄", "筲", "杓", "蛸", "潲"}, 
fei = {"费", "非", "飞", "肥", "废", "菲", "肺", "啡", "沸", "匪", "斐", "蜚", "妃", "诽", "扉", "翡", "霏", "吠", "绯", "腓", "痱", "芾", "淝", "悱", "狒", "榧", "鲱", "篚", "镄"}, 
shen = {"深", "参", "身", "神", "什", "审", "申", "甚", "沈", "伸", "慎", "渗", "肾", "绅", "莘", "呻", "婶", "娠", "砷", "蜃", "哂", "椹", "葚", "渖", "诜", "谂", "矧", "胂"}, 
geng = {"更", "耕", "颈", "庚", "耿", "梗", "埂", "羹", "哽", "赓", "绠", "鲠"}, 
kan = {"看", "刊", "勘", "堪", "坎", "砍", "侃", "嵌", "槛", "瞰", "阚", "龛", "戡", "莰"}, 
tai = {"台", "太", "态", "泰", "抬", "胎", "汰", "钛", "苔", "薹", "肽", "跆", "邰", "鲐", "呔", "酞", "骀", "炱"}, 
yang = {"样", "养", "央", "阳", "洋", "扬", "杨", "羊", "氧", "仰", "秧", "痒", "漾", "疡", "泱", "殃", "恙", "鸯", "徉", "佯", "怏", "炀", "烊", "鞅", "蛘"}, 
lao = {"老", "劳", "落", "络", "牢", "捞", "涝", "烙", "姥", "佬", "崂", "唠", "酪", "潦", "痨", "醪", "铑", "铹", "栳", "耢"}, 
liu = {"流", "刘", "六", "留", "陆", "柳", "瘤", "硫", "溜", "碌", "浏", "榴", "琉", "馏", "遛", "鎏", "骝", "绺", "镏", "旒", "熘", "鹨", "锍"}, 
hen = {"很", "狠", "恨", "痕"}, 
gei = {"给"}, 
chuang = {"创", "床", "窗", "闯", "幢", "疮", "怆"}, 
lun = {"论", "轮", "伦", "仑", "纶", "沦", "抡", "囵"}, 
bie = {"别", "鳖", "憋", "瘪", "蹩"}, 
bian = {"变", "便", "边", "编", "遍", "辩", "鞭", "辨", "贬", "匾", "扁", "卞", "汴", "辫", "飚", "砭", "苄", "蝙", "鳊", "弁", "窆", "笾", "煸", "褊", "碥", "忭", "缏"}, 
feng = {"风", "丰", "封", "峰", "奉", "凤", "锋", "冯", "逢", "缝", "蜂", "枫", "疯", "讽", "烽", "俸", "沣", "酆", "砜", "葑", "唪"}, 
pi = {"批", "否", "皮", "坏", "辟", "啤", "匹", "披", "疲", "僻", "毗", "坯", "脾", "譬", "劈", "媲", "屁", "琵", "邳", "裨", "痞", "癖", "陂", "丕", "枇", "噼", "霹", "吡", "纰", "砒", "铍", "淠", "郫", "埤", "睥", "芘", "蚍", "圮", "鼙", "罴", "蜱", "疋", "貔", "仳", "庀", "擗", "甓", "陴"}, 
cha = {"查", "察", "差", "茶", "插", "叉", "刹", "茬", "楂", "岔", "诧", "碴", "嚓", "喳", "姹", "杈", "汊", "衩", "搽", "槎", "镲", "檫", "馇", "锸", "猹"}, 
zha = {"查", "扎", "炸", "诈", "轧", "闸", "渣", "蜡", "咋", "乍", "榨", "楂", "札", "栅", "眨", "咤", "柞", "喳", "喋", "铡", "蚱", "吒", "砟", "揸", "痄", "哳", "齄"}, 
lin = {"林", "临", "邻", "赁", "琳", "磷", "淋", "麟", "霖", "鳞", "凛", "遴", "蔺", "吝", "粼", "嶙", "躏", "廪", "檩", "啉", "辚", "膦", "瞵", "懔"}, 
zhuai = {"转", "拽", "曳"}, 
huai = {"划", "怀", "坏", "淮", "徊", "槐", "踝"}, 
zhun = {"准", "屯", "谆", "肫", "窀"}, 
xu = {"需", "许", "续", "须", "序", "徐", "蓄", "畜", "虚", "吁", "绪", "叙", "旭", "恤", "墟", "栩", "絮", "圩", "婿", "戌", "胥", "嘘", "浒", "煦", "酗", "诩", "盱", "蓿", "溆", "洫", "顼", "勖", "糈", "砉", "醑"}, 
chuan = {"传", "川", "船", "穿", "串", "喘", "椽", "舛", "钏", "遄", "氚", "巛", "舡"}, 
gou = {"构", "购", "够", "句", "沟", "狗", "钩", "勾", "苟", "垢", "枸", "篝", "佝", "媾", "诟", "岣", "彀", "缑", "笱", "鞲", "觏", "遘"}, 
bai = {"百", "白", "败", "摆", "伯", "拜", "柏", "佰", "掰", "捭", "稗"}, 
cai = {"才", "采", "财", "材", "菜", "彩", "裁", "蔡", "猜", "踩", "睬"}, 
can = {"参", "残", "餐", "灿", "惨", "蚕", "璨", "惭", "粲", "孱", "骖", "黪"}, 
cen = {"参", "岑", "涔"}, 
zhen = {"镇", "真", "针", "圳", "振", "震", "珍", "阵", "诊", "侦", "臻", "贞", "枕", "桢", "赈", "祯", "甄", "斟", "缜", "箴", "疹", "砧", "榛", "鸩", "轸", "稹", "溱", "蓁", "胗", "椹", "朕", "畛", "浈"}, 
tui = {"推", "退", "腿", "褪", "颓", "蜕", "忒", "煺"}, 
sai = {"思", "赛", "塞", "腮", "噻", "鳃"}, 
zou = {"走", "邹", "奏", "揍", "诹", "驺", "陬", "鄹", "鲰"}, 
zhuang = {"装", "状", "庄", "壮", "撞", "妆", "幢", "桩", "奘", "僮"}, 
ze = {"责", "则", "泽", "择", "侧", "咋", "啧", "仄", "箦", "赜", "笮", "舴", "昃", "迮", "帻"}, 
zhou = {"州", "周", "洲", "舟", "骤", "轴", "昼", "宙", "粥", "皱", "肘", "咒", "帚", "胄", "绉", "纣", "妯", "啁", "诌", "繇", "碡", "籀", "酎", "荮"}, 
que = {"确", "却", "缺", "雀", "鹊", "阙", "瘸", "榷", "炔", "阕", "悫"}, 
mao = {"贸", "毛", "矛", "冒", "貌", "茂", "茅", "帽", "猫", "髦", "锚", "懋", "袤", "牦", "卯", "铆", "耄", "峁", "瑁", "蟊", "茆", "旄", "泖", "昴", "瞀"}, 
fan = {"反", "范", "犯", "繁", "饭", "泛", "翻", "凡", "返", "番", "贩", "烦", "帆", "樊", "藩", "矾", "梵", "蕃", "钒", "幡", "畈", "蘩", "蹯", "燔"}, 
xuan = {"选", "宣", "券", "旋", "悬", "轩", "喧", "玄", "绚", "渲", "璇", "炫", "萱", "癣", "漩", "眩", "暄", "煊", "铉", "楦", "泫", "谖", "痃", "碹", "揎", "镟", "儇"}, 
ya = {"亚", "压", "雅", "牙", "押", "匹", "鸭", "呀", "涯", "崖", "芽", "哑", "讶", "鸦", "娅", "衙", "丫", "蚜", "垭", "伢", "氩", "桠", "琊", "揠", "睚", "痖", "迓", "岈", "砑"}, 
me = {"么", "麽"}, 
ma = {"么", "马", "吗", "摩", "麻", "码", "妈", "玛", "嘛", "骂", "抹", "蚂", "唛", "蟆", "犸", "杩", "嬷"}, 
wang = {"王", "望", "往", "网", "忘", "亡", "旺", "汪", "芒", "枉", "妄", "惘", "罔", "辋", "魍", "尢"}, 
ce = {"策", "测", "册", "侧", "厕", "恻"}, 
nu = {"女", "努", "怒", "奴", "弩", "钕", "驽", "衄", "孥", "胬", "恧"}, 
tan = {"谈", "探", "坦", "摊", "弹", "炭", "坛", "滩", "贪", "叹", "谭", "潭", "碳", "毯", "瘫", "檀", "痰", "袒", "坍", "忐", "昙", "郯", "澹", "钽", "锬", "镡"}, 
kuang = {"况", "矿", "框", "狂", "旷", "眶", "匡", "筐", "邝", "圹", "哐", "贶", "夼", "诳", "诓", "纩"}, 
se = {"色", "塞", "瑟", "涩", "啬", "穑", "铯"}, 
shai = {"色", "筛", "晒"}, 
tsmz = {"中岛美雪", "SYP", "水镜四奇", "零二七"}, 
lie = {"列", "烈", "劣", "裂", "猎", "冽", "咧", "趔", "洌", "鬣", "埒", "捩", "躐"}, 
gang = {"港", "钢", "刚", "岗", "纲", "冈", "杠", "缸", "扛", "肛", "罡", "戆", "筻"}, 
kuan = {"款", "宽", "髋"}, 
la = {"拉", "落", "蓝", "垃", "腊", "啦", "辣", "蜡", "喇", "剌", "旯", "砬", "邋", "瘌"}, 
gu = {"股", "古", "顾", "故", "固", "鼓", "骨", "估", "谷", "贾", "姑", "孤", "雇", "辜", "菇", "沽", "咕", "呱", "锢", "钴", "鹄", "箍", "汩", "梏", "痼", "崮", "轱", "鸪", "牯", "蛊", "诂", "毂", "鹘", "菰", "罟", "嘏", "臌", "觚", "瞽", "蛄", "酤", "牿", "鲴"}, 
gen = {"根", "跟", "亘", "艮", "哏", "茛"}, 
tu = {"土", "突", "图", "途", "徒", "涂", "吐", "屠", "兔", "秃", "凸", "荼", "钍", "菟", "堍", "酴"}, 
qun = {"群", "裙", "逡"}, 
su = {"速", "素", "苏", "诉", "缩", "塑", "肃", "俗", "宿", "粟", "溯", "酥", "夙", "愫", "簌", "稣", "僳", "谡", "涑", "蔌", "嗉", "觫"}, 
lei = {"类", "累", "雷", "勒", "泪", "蕾", "垒", "磊", "擂", "镭", "肋", "羸", "耒", "儡", "嫘", "缧", "酹", "嘞", "诔", "檑"}, 
xun = {"讯", "训", "迅", "寻", "询", "循", "旬", "巡", "汛", "勋", "逊", "熏", "徇", "浚", "殉", "驯", "鲟", "荤", "薰", "荀", "浔", "洵", "峋", "埙", "巽", "郇", "醺", "恂", "窨", "蕈", "曛", "獯"}, 
zhua = {"抓", "挝"}, 
re = {"热", "若", "惹"}, 
mi = {"米", "密", "秘", "迷", "弥", "蜜", "谜", "觅", "靡", "泌", "眯", "麋", "猕", "谧", "咪", "糜", "宓", "汨", "醚", "嘧", "弭", "脒", "幂", "祢", "縻", "蘼", "芈", "糸", "敉"}, 
pei = {"配", "培", "赔", "佩", "陪", "沛", "裴", "胚", "霈", "旆", "帔", "呸", "醅", "辔", "锫"}, 
kao = {"考", "靠", "烤", "拷", "铐", "栲", "尻", "犒"}, 
duan = {"断", "段", "短", "端", "锻", "缎", "煅", "椴", "簖"}, 
luo = {"落", "罗", "络", "洛", "逻", "螺", "锣", "骆", "萝", "裸", "漯", "烙", "摞", "骡", "咯", "箩", "珞", "捋", "荦", "硌", "雒", "椤", "镙", "瘰", "泺", "脶", "猡", "倮", "蠃"}, 
e = {"额", "俄", "恶", "鹅", "遏", "鄂", "厄", "饿", "峨", "扼", "娥", "鳄", "蛾", "噩", "愕", "讹", "锷", "垩", "婀", "鹗", "萼", "谔", "莪", "腭", "锇", "颚", "呃", "屙", "苊", "轭"}, 
shuang = {"双", "爽", "霜", "孀", "泷"}, 
rang = {"让", "壤", "攘", "嚷", "瓤", "穰", "禳"}, 
qie = {"切", "且", "窃", "茄", "砌", "锲", "怯", "伽", "惬", "妾", "挈", "郄", "箧", "慊"}, 
pian = {"便", "片", "篇", "偏", "骗", "翩", "扁", "骈", "胼", "蹁", "谝", "犏", "缏"}, 
kong = {"空", "控", "孔", "恐", "倥", "崆", "箜"}, 
ni = {"你", "尼", "呢", "泥", "拟", "尿", "逆", "倪", "妮", "腻", "匿", "霓", "溺", "旎", "昵", "坭", "铌", "鲵", "伲", "怩", "睨", "祢", "猊", "慝"}, 
ceng = {"层", "曾", "蹭"}, 
huang = {"黄", "荒", "煌", "皇", "凰", "慌", "晃", "潢", "谎", "惶", "簧", "璜", "恍", "幌", "湟", "蝗", "磺", "隍", "徨", "遑", "肓", "篁", "鳇", "蟥", "癀"}, 
suan = {"算", "酸", "蒜", "狻"}, 
po = {"破", "繁", "坡", "迫", "颇", "朴", "泊", "婆", "泼", "魄", "粕", "鄱", "珀", "陂", "钹", "叵", "笸", "泺", "皤", "钋", "钷", "攴"}, 
tie = {"铁", "贴", "帖", "餮", "萜"}, 
man = {"满", "慢", "曼", "漫", "蔓", "瞒", "蛮", "鳗", "馒", "幔", "谩", "螨", "熳", "缦", "镘", "颟", "墁", "鞔"}, 
ai = {"爱", "埃", "艾", "碍", "癌", "呆", "哀", "挨", "矮", "隘", "蔼", "唉", "皑", "哎", "霭", "捱", "暧", "嫒", "嗳", "瑷", "嗌", "锿", "砹"}, 
rong = {"容", "荣", "融", "绒", "溶", "蓉", "熔", "戎", "榕", "茸", "冗", "嵘", "肜", "狨", "蝾"}, 
chen = {"称", "陈", "沈", "沉", "晨", "琛", "臣", "尘", "辰", "衬", "趁", "忱", "郴", "宸", "谌", "碜", "嗔", "抻", "榇", "伧", "谶", "龀"}, 
pai = {"牌", "排", "派", "拍", "迫", "徘", "湃", "俳", "哌", "蒎"}, 
cu = {"促", "粗", "簇", "醋", "卒", "蹴", "猝", "蹙", "酢", "蔟", "殂", "徂"}, 
kun = {"困", "昆", "坤", "捆", "琨", "锟", "鲲", "醌", "髡", "悃", "阃"}, 
chao = {"超", "朝", "潮", "炒", "钞", "抄", "巢", "吵", "剿", "绰", "嘲", "晁", "焯", "耖", "怊"}, 
sui = {"随", "岁", "虽", "碎", "尿", "隧", "遂", "髓", "穗", "绥", "隋", "邃", "睢", "祟", "濉", "燧", "谇", "眭", "荽"}, 
chun = {"春", "纯", "醇", "淳", "唇", "椿", "蠢", "鹑", "莼", "蝽"}, 
kuo = {"适", "扩", "括", "阔", "廓", "栝", "蛞"}, 
hong = {"红", "宏", "洪", "轰", "虹", "鸿", "弘", "哄", "烘", "泓", "訇", "蕻", "闳", "讧", "荭", "黉", "薨"}, 
mai = {"买", "卖", "麦", "迈", "脉", "埋", "霾", "荬", "劢"}, 
xiu = {"修", "秀", "休", "宿", "袖", "绣", "臭", "朽", "锈", "羞", "嗅", "岫", "溴", "庥", "馐", "咻", "髹", "鸺", "貅"}, 
qin = {"亲", "勤", "侵", "秦", "钦", "琴", "禽", "芹", "沁", "寝", "擒", "覃", "噙", "矜", "嗪", "揿", "溱", "芩", "衾", "廑", "锓", "吣", "檎", "螓"}, 
cuo = {"措", "错", "磋", "挫", "搓", "撮", "蹉", "锉", "厝", "嵯", "痤", "矬", "瘥", "脞", "鹾"}, 
long = {"龙", "隆", "弄", "垄", "笼", "拢", "聋", "陇", "胧", "珑", "窿", "茏", "咙", "砻", "垅", "泷", "栊", "癃"}, 
dun = {"吨", "顿", "盾", "敦", "蹲", "墩", "囤", "沌", "钝", "炖", "盹", "遁", "趸", "砘", "镦", "礅"}, 
kang = {"康", "抗", "扛", "慷", "炕", "亢", "糠", "伉", "钪", "闶"}, 
pu = {"普", "暴", "铺", "浦", "朴", "堡", "葡", "谱", "埔", "扑", "仆", "蒲", "曝", "瀑", "溥", "莆", "圃", "璞", "濮", "菩", "脯", "蹼", "匍", "噗", "氆", "镨", "镤"}, 
reng = {"仍", "扔"}, 
bo = {"波", "博", "播", "勃", "拨", "薄", "伯", "玻", "搏", "柏", "泊", "舶", "剥", "渤", "魄", "卜", "驳", "脖", "膊", "簸", "菠", "礴", "箔", "掰", "铂", "亳", "钵", "帛", "擘", "饽", "跛", "钹", "趵", "檗", "啵", "鹁", "孛", "踣"}, 
lan = {"兰", "览", "蓝", "篮", "栏", "岚", "烂", "滥", "缆", "揽", "澜", "拦", "懒", "榄", "斓", "婪", "阑", "褴", "罱", "谰", "镧", "漤"}, 
piao = {"票", "朴", "漂", "飘", "嫖", "瓢", "剽", "缥", "殍", "瞟", "骠", "嘌", "莩", "螵"}, 
sun = {"损", "孙", "笋", "荪", "榫", "隼", "狲", "飧"}, 
ning = {"宁", "凝", "苎", "拧", "泞", "柠", "咛", "狞", "佞", "聍", "甯"}, 
ku = {"苦", "库", "哭", "酷", "裤", "枯", "窟", "骷", "堀", "绔", "刳", "喾"}, 
nao = {"努", "脑", "闹", "恼", "挠", "瑙", "淖", "孬", "垴", "铙", "呶", "硇", "猱", "蛲"}, 
tao = {"套", "讨", "陶", "涛", "逃", "桃", "萄", "淘", "掏", "滔", "韬", "叨", "焘", "洮", "啕", "绦", "饕", "鼗"}, 
song = {"送", "松", "宋", "讼", "颂", "耸", "诵", "嵩", "淞", "怂", "悚", "崧", "凇", "忪", "竦", "菘"}, 
mou = {"某", "谋", "牟", "缪", "眸", "哞", "蝥", "鍪", "蛑", "侔"}, 
pa = {"派", "怕", "帕", "爬", "扒", "趴", "琶", "啪", "葩", "耙", "杷", "钯", "筢"}, 
lue = {"略", "掠", "锊"}, 
hei = {"黑", "嘿"}, 
chai = {"差", "拆", "柴", "钗", "豺", "侪", "虿", "瘥"}, 
a = {"阿", "啊", "呵", "腌", "嗄", "吖", "锕"}, 
ting = {"听", "庭", "停", "厅", "廷", "挺", "亭", "艇", "婷", "汀", "铤", "烃", "霆", "町", "蜓", "葶", "梃", "莛"}, 
sha = {"沙", "厦", "杀", "纱", "砂", "啥", "莎", "刹", "杉", "傻", "煞", "鲨", "霎", "嗄", "痧", "裟", "挲", "铩", "唼", "歃"}, 
tuo = {"托", "脱", "拓", "拖", "妥", "魄", "驼", "陀", "沱", "鸵", "舵", "驮", "唾", "椭", "坨", "佗", "砣", "跎", "庹", "柁", "橐", "乇", "铊", "酡", "鼍", "箨", "柝"}, 
pan = {"判", "盘", "番", "潘", "攀", "盼", "拚", "畔", "胖", "叛", "蹒", "磐", "爿", "蟠", "泮", "袢", "襻"}, 
gua = {"括", "挂", "瓜", "刮", "寡", "卦", "呱", "褂", "剐", "胍", "诖", "鸹", "栝"}, 
lou = {"楼", "露", "漏", "陋", "娄", "搂", "篓", "喽", "镂", "偻", "瘘", "髅", "耧", "蝼", "嵝", "蒌"}, 
han = {"汉", "韩", "含", "旱", "寒", "汗", "涵", "函", "喊", "憾", "罕", "焊", "翰", "邯", "撼", "瀚", "憨", "捍", "酣", "悍", "阚", "鼾", "邗", "颔", "蚶", "晗", "菡", "顸", "焓", "撖"}, 
cao = {"草", "操", "曹", "槽", "糙", "嘈", "漕", "螬", "艚"}, 
cang = {"藏", "仓", "苍", "沧", "舱"}, 
zang = {"藏", "脏", "葬", "赃", "臧", "奘", "驵"}, 
shun = {"顺", "瞬", "舜", "吮"}, 
ka = {"卡", "喀", "咖", "咔", "咯", "佧", "胩"}, 
qia = {"卡", "恰", "洽", "伽", "掐", "髂", "袷", "葜"}, 
qiao = {"桥", "乔", "侨", "巧", "悄", "敲", "俏", "壳", "雀", "蕉", "瞧", "翘", "窍", "峭", "锹", "撬", "荞", "跷", "樵", "憔", "鞘", "橇", "峤", "诮", "谯", "愀", "鞒", "硗", "劁", "缲"}, 
fou = {"否", "缶"}, 
bang = {"帮", "邦", "榜", "棒", "膀", "镑", "绑", "傍", "磅", "蚌", "谤", "梆", "浜", "蒡"}, 
ao = {"奥", "澳", "傲", "熬", "凹", "嚣", "鳌", "敖", "遨", "鏖", "袄", "坳", "翱", "嗷", "拗", "懊", "岙", "螯", "骜", "獒", "鏊", "媪", "廒", "聱"}, 
zhai = {"债", "择", "宅", "寨", "侧", "摘", "窄", "斋", "祭", "翟", "砦", "瘵"}, 
zhui = {"追", "坠", "缀", "椎", "锥", "赘", "惴", "骓", "缒"}, 
chou = {"筹", "抽", "绸", "酬", "愁", "丑", "臭", "仇", "畴", "稠", "瞅", "踌", "惆", "俦", "瘳", "雠", "帱"}, 
zen = {"怎", "谮"}, 
kui = {"亏", "奎", "愧", "魁", "馈", "溃", "匮", "葵", "窥", "盔", "逵", "睽", "馗", "聩", "喟", "夔", "篑", "岿", "喹", "揆", "隗", "傀", "暌", "跬", "蒉", "愦", "悝", "蝰"}, 
ha = {"哈", "虾", "蛤", "铪"}, 
za = {"杂", "扎", "咱", "砸", "咋", "匝", "咂"}, 
luan = {"乱", "卵", "滦", "峦", "鸾", "栾", "銮", "挛", "孪", "脔", "娈"}, 
xiong = {"雄", "兄", "熊", "胸", "凶", "匈", "汹", "芎"}, 
ne = {"呢", "哪", "呐", "讷"}, 
zan = {"赞", "暂", "咱", "攒", "昝", "簪", "糌", "瓒", "錾", "趱", "拶"}, 
rui = {"瑞", "锐", "睿", "芮", "蕊", "蕤", "蚋", "枘"}, 
tang = {"堂", "唐", "糖", "汤", "塘", "躺", "趟", "倘", "棠", "烫", "淌", "膛", "搪", "镗", "傥", "螳", "溏", "帑", "羰", "樘", "醣", "螗", "耥", "铴", "瑭"}, 
run = {"润", "闰"}, 
kua = {"跨", "夸", "垮", "挎", "胯", "侉"}, 
wa = {"瓦", "挖", "娃", "洼", "袜", "蛙", "凹", "哇", "佤", "娲", "腽"}, 
meng = {"蒙", "盟", "梦", "猛", "孟", "萌", "氓", "朦", "锰", "檬", "勐", "懵", "蜢", "虻", "蠓", "艨", "甍", "艋", "瞢", "礞"}, 
bin = {"宾", "滨", "斌", "彬", "濒", "殡", "缤", "鬓", "槟", "摈", "膑", "玢", "镔", "豳", "髌", "傧"}, 
leng = {"冷", "愣", "棱", "楞", "塄"}, 
peng = {"鹏", "朋", "彭", "膨", "蓬", "碰", "棚", "捧", "烹", "篷", "澎", "抨", "硼", "怦", "砰", "嘭", "蟛", "堋"}, 
niu = {"牛", "纽", "扭", "钮", "拗", "妞", "忸", "狃"}, 
rou = {"肉", "柔", "揉", "糅", "鞣", "蹂"}, 
ruo = {"若", "弱", "偌"}, 
sen = {"森"}, 
sa = {"萨", "洒", "撒", "飒", "卅", "仨", "挲", "脎"}, 
juan = {"卷", "捐", "俊", "眷", "娟", "倦", "绢", "隽", "镌", "涓", "鹃", "鄄", "蠲", "狷", "锩", "桊"}, 
pao = {"跑", "炮", "泡", "抛", "刨", "袍", "咆", "疱", "庖", "狍", "匏", "脬"}, 
ruan = {"软", "阮", "朊"}, 
lang = {"浪", "朗", "郎", "廊", "狼", "琅", "榔", "螂", "阆", "锒", "莨", "啷", "蒗", "稂"}, 
zun = {"尊", "遵", "鳟", "樽", "撙"}, 
ken = {"肯", "垦", "恳", "啃", "裉"}, 
hun = {"婚", "混", "魂", "浑", "昏", "荤", "馄", "诨", "溷", "阍"}, 
en = {"恩", "嗯", "摁", "蒽"}, 
qiong = {"穷", "琼", "穹", "邛", "茕", "筇", "跫", "蛩", "銎"}, 
rao = {"绕", "扰", "饶", "娆", "桡", "荛"}, 
mang = {"忙", "盲", "茫", "芒", "氓", "莽", "蟒", "邙", "硭", "漭"}, 
nuo = {"诺", "挪", "娜", "糯", "懦", "傩", "喏", "搦", "锘"}, 
teng = {"腾", "疼", "藤", "滕", "誊"}, 
nin = {"您"}, 
miao = {"苗", "秒", "妙", "描", "庙", "瞄", "缪", "渺", "淼", "藐", "缈", "邈", "鹋", "杪", "眇", "喵"}, 
mie = {"灭", "蔑", "篾", "乜", "咩", "蠛"}, 
niang = {"娘"}, 
nai = {"乃", "奶", "耐", "奈", "鼐", "萘", "氖", "柰", "艿"}, 
sang = {"桑", "丧", "嗓", "搡", "颡", "磉"}, 
ca = {"拆", "擦", "嚓", "礤"}, 
sao = {"扫", "骚", "嫂", "梢", "缫", "搔", "瘙", "臊", "埽", "缲", "鳋"}, 
zuan = {"钻", "赚", "纂", "攥", "缵", "躜"}, 
shua = {"刷", "耍", "唰"}, 
gun = {"滚", "棍", "辊", "衮", "磙", "鲧", "绲"}, 
guai = {"怪", "拐", "乖"}, 
pang = {"旁", "庞", "乓", "膀", "胖", "磅", "螃", "彷", "滂", "逄", "耪"}, 
nuan = {"暖"}, 
shuai = {"衰", "帅", "摔", "甩", "蟀"}, 
cui = {"衰", "催", "崔", "脆", "翠", "萃", "粹", "摧", "璀", "瘁", "悴", "淬", "啐", "隹", "毳", "榱"}, 
niao = {"鸟", "尿", "溺", "袅", "脲", "茑", "嬲"}, 
die = {"跌", "叠", "蝶", "迭", "碟", "爹", "谍", "牒", "耋", "喋", "踮", "堞", "瓞", "鲽", "垤", "揲", "蹀"}, 
pen = {"喷", "盆", "湓"}, 
chui = {"吹", "垂", "锤", "炊", "椎", "陲", "槌", "捶", "棰"}, 
ang = {"昂", "盎", "肮"}, 
keng = {"坑", "铿", "吭"}, 
tun = {"吞", "屯", "囤", "褪", "豚", "臀", "饨", "暾", "氽"}, 
diu = {"丢", "铥"}, 
weng = {"翁", "嗡", "瓮", "蓊", "蕹"}, 
sou = {"艘", "搜", "擞", "嗽", "嗖", "叟", "馊", "薮", "飕", "嗾", "溲", "锼", "螋", "瞍"}, 
ga = {"夹", "嘎", "尬", "胳", "噶", "旮", "尕", "钆", "尜"}, 
lia = {"俩"}, 
nen = {"嫩", "恁"}, 
nang = {"囊", "馕", "囔", "曩", "攮"}, 
nie = {"聂", "捏", "涅", "镍", "孽", "蘖", "啮", "蹑", "嗫", "臬", "镊", "颞", "乜", "陧"}, 
beng = {"泵", "崩", "蚌", "蹦", "迸", "绷", "甭", "嘣", "甏"}, 
cou = {"凑", "辏", "腠", "楱"}, 
pou = {"剖", "掊", "裒"}, 
seng = {"僧"}, 
nue = {"虐"}, 
cuan = {"窜", "攒", "篡", "蹿", "撺", "爨", "汆", "镩"}, 
chuo = {"辍", "绰", "戳", "啜", "龊", "踔"}, 
chuai = {"揣", "踹", "啜", "嘬", "搋", "膪"}, 
jiong = {"窘", "炯", "迥", "炅", "扃"}, 
shuan = {"栓", "拴", "涮", "闩"}, 
zei = {"贼"}, 
pie = {"瞥", "撇", "苤", "氕", "丿"}, 
miu = {"谬"}, 
o = {"哦", "噢", "喔"}, 
dia = {"嗲"}, 
nou = {"耨"}, 
ei = {"诶"}, 
s = {"S"}, 
y = {"Y"}, 
p = {"P"}, 
sz = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}}
  local T2 = T1[pinyin]
  if T2 == nil then
    Cls()
    DrawStrBox(x, y, "查无此字，请重新输入", C_GOLD, 24)
    lib.ShowSurface(0)
    lib.Delay(2000)
    return ""
  end
  local page = 0
  local str = ""
  while true do
    str = ""
    for i = 1, 9 do
      if T2[i + 9 * page] == nil then
        break;
      else
      	str = str .. i .. "." .. T2[i + 9 * page] .. " "
      end
    end
    ShowPinyin(x, y, word, pinyin, str)
    local keypress = WaitKey()
    lib.Delay(100)
    if keypress == VK_DOWN and T2[9 * (page + 1) + 1] ~= nil then
      page = page + 1
    elseif keypress == VK_UP and 0 < page then
      page = page - 1
    elseif keypress == 27 then
      return ""
    elseif 48 >= keypress or keypress < 58 then
      return T2[(page) * 9 + keypress - 48]
    end
  end
end

--输入拼音，数字全角
function GetPinyin(x, y, word)
  local T3 = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
  local T4 = {"０", "１", "２", "３", "４", "５", "６", "７", "８", "９"}
  local str = ""
  while true do
    ShowPinyin(x, y, word, str)
    local keypress = WaitKey()
    lib.Delay(100)
    if keypress > 96 and keypress < 123 then
      str = str .. T3[keypress - 96]
    elseif keypress == 8 then
      if string.len(str) == 0 then
        word = string.sub(word, 1, -3)
      else
      	str = string.sub(str, 1, -2)
      end
    elseif keypress > 47 and keypress < 58 then
      return -1, word .. T4[keypress - 47]
    
    elseif keypress == VK_RETURN and str == "" then
      return "finish"
    
    elseif keypress == VK_SPACE or keypress == VK_RETURN then
      return str, word
    
    elseif keypress == VK_ESCAPE then
      return -1
    end
  end
end

--输入拼音，数字半角
function GetPinyin1(x, y)
  local T3 = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
  local T4 = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
  local str = ""
  while true do
    ShowPinyin1(x, y, str)
    local keypress = WaitKey()
    lib.Delay(100)
    if keypress > 96 and keypress < 123 then
      str = str .. T3[keypress - 96]
    elseif keypress == 8 then
      str = string.sub(str, 1, -2)
    elseif keypress > 47 and keypress < 58 then
      str = str .. T4[keypress - 47]
    elseif keypress == VK_SPACE then
      str = str .. " "
    elseif keypress == VK_RETURN then
      return str
    end
  end
end

--显示拼音
function ShowPinyin(x, y, str1, str2, str3)
  Cls()
  local size = 24
  DrawBox(x, y + size, CC.ScreenW - x, y + 5 * size, C_ORANGE)
  if str3 == nil then
    DrawStrBox(x, y - size / 2, "请输入(拼)", C_WHITE, size)
  else
    DrawStrBox(x, y - size / 2, "请选择", C_WHITE, size)
    DrawString(x + 15, y + size * 3.5, str3, C_WHITE, size)
  end
  lib.DrawRect(x + 10, y + size * 3, CC.ScreenW - 10 - x, y + size * 3 + 2, C_WHITE)
  DrawString(x + 20, y + size * 1.6, str1, C_RED, size)
  DrawString(x + 20 + size * string.len(str1) / 2, y + size * 1.6, str2, C_GOLD, size)
  lib.ShowSurface(0)
end

--显示拼音
function ShowPinyin1(x, y, str2, str3)
  Cls()
  local size = 24
  DrawBox(x, y + size, 640 - x, y + 5 * size, C_ORANGE)
  if str3 == nil then
    DrawStrBox(x, y - size / 2, "请输入(拼)", C_WHITE, size)
  else
    DrawStrBox(x, y - size / 2, "请选择", C_WHITE, size)
    DrawString(x + 15, y + size * 3.5, str3, C_WHITE, size)
  end
  lib.DrawRect(x + 10, y + size * 3, 630 - x, y + size * 3 + 2, C_WHITE)
  DrawString(x + 20, y + size * 1.6, str2, C_GOLD, size)
  lib.ShowSurface(0)
end--播放midi

function tjm13(menu,menu1,x,y,color,size,num,high,flag)
   local bx = CC.ScreenW/1360
   local by = CC.ScreenH/768
   local p1x,p1y = bx*200,by*30
   local cont = 1
   local cont1 = 0
   local page = 1
   
   --默认高度间隔
   local h = size*1.2
   
   --自定义间隔
   if high ~= nil then 
      h = high
   end
   
   --自定义显示的列表数量
   if num == nil then
      num = menu1
   else 
      if num > menu1 then 
         num = menu1
      end	  
   end  
   
   local tru = 0
   local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)
   while true do 
      Cls() 
	  lib.LoadSur(surid,0,0)
	  for ii = 1,num do
	      local color = C_WHITE
		  if ii + cont1 == cont +cont1 then
		     color = C_RED
		  end 
		  if flag == nil then
		     DrawString(x-string.len(menu[ii+cont1])/4*size,y+(ii-1)*h-size/2, menu[ii+cont1], color, size)
		  else 
             DrawString(x,y+(ii-1)*h, menu[ii+cont1], color, size)
          end		  
	  end
	  
	  ShowScreen()
	  lib.Delay(20)
	    local X,ktype,mx,my = lib.GetKey()
	    if X == VK_SPACE or X == VK_RETURN then 
           tru = cont + cont1 
		   break
		elseif X == VK_ESCAPE or ktype == 4 then
          break
		elseif X == VK_UP then
		  if cont1 > 0 then 
		     if cont > 1 then 
		        cont = cont - 1
			 else 
                cont1 = cont1 - 1	  
			 end	
		  else
             cont = cont - 1		
		  if cont < 1 then 
		     cont = num
			 cont1 = menu1 - cont
		  end
		  end
		elseif X == VK_DOWN then
          cont = cont + 1		
		  if cont > num then 
		     cont = num
			 cont1 = cont1 + 1
		  end
		  if cont1 + cont > menu1 then 
		     cont1 = 0
			 cont = 1
		  end
		elseif X == VK_LEFT or ktype == 6 then
		        cont1 = cont1 - num
				cont = 1
				if cont1 < 0 then 
				   cont1 = 0 
				end
		elseif X == VK_RIGHT or ktype == 7 then
		        cont1 = cont1 + num
				cont = num
				if cont1 + cont > menu1 then 
				   cont1 = menu1-cont
				end	
	    else 
		    local mxx = false
            for ii = 1,num do 

		
            end		
            if ktype == 3 and mxx == true then 
		       tru = cont+cont1
		       break
            end	
	    end
   end
   lib.FreeSur(surid)
   return tru 
end