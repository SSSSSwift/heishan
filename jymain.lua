
------------------------------------------------------------
-----------��ӹȺ��������֮Lua��----------------------------

--��Ȩ���ޣ����븴��
--����������ʹ�ô���

--����������Ӿ�����д

--��ģ����lua��ģ�飬��C������JYLua.exe���á�C������Ҫ�ṩ��Ϸ��Ҫ����Ƶ�����֡����̵�API��������lua���á�
--��Ϸ�������߼�����lua�����У��Է����ҶԴ�����޸ġ�
--Ϊ�ӿ��ٶȣ���ʾ����ͼ/������ͼ/ս����ͼ������C APIʵ�֡�

-----------------------------------------------------------------------------

-----��ɽȺ���� ���ڽ�ӹȺ��������֮Lua������ �ڴ˸�л��λǰ������˽����-----

-----����Ϸȫ��������ȻΪ��Դ���룬�������Ȱ���Ϸ������ѧϰ������------------

-----�Ĵ�ɽ�͹��벻Ҫʹ��----------------------------------------------------

-----���и��Ĵ�ɽһ���뷨�����벻Ҫʹ��--------------------------------------

------------------------------------------------�޾Ʋ��� Oct.14/2017---------

function pngxy(id,pngid,x,y,z)
lib.LoadPNG(id,pngid,x,y,z)
end 

function psx(id,str) 
    return JY.Person[id][str]
end

function ztd(i,str,t)
	local id = WAR.Person[i]["������"]
	if i == nil or str == nil then
		do return end
	end	
	if t == nil then
		t = 0
	end	
	if WAR.TXXS[id] == nil then
		WAR.TXXS[id] = 1
	end	 
	if str == "��������" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"����",t)
	elseif str == "��������" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"����",t)
	elseif str == "��������" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"����",t)
	elseif str == "�ж�����" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"�ж��̶�",t)
	elseif str == WAR.BFXS then
		WAR.BFXS[id] = 1
		AddPersonAttrib(id,"����̶�",t)
	elseif str == WAR.ZSXS then
		WAR.ZSXS[id] = 1
		AddPersonAttrib(id,"���ճ̶�",t)
	elseif str == "���˵���" then
		WAR.Person[i][str] = (WAR.Person[i][str] or 0) + AddPersonAttrib(id,"���˳̶�",t)
	elseif str == "����λ��" then
		if t >= 0 then
			--WAR.Person[i].TimeAdd = limitX((WAR.Person[i].TimeAdd or 0) + t,-500,999)
			WAR.Person[i].TimeAdd = (WAR.Person[i].TimeAdd or 0 ) + t
			if WAR.Person[i].TimeAdd > 1000 then WAR.Person[i].TimeAdd = 1000 end
		else

		end	
	else
	
	end	
	--Cat('��ֵ��ʾ')
	--return WAR.Person[i][str]
end

function Menu_Gongti(pid,num) --����ѡ�� 1�⹦��2�⹦����3�ڹ���4�Ṧ��5�м�
    local tl = {'����ʹ��','���˼���','�����ڹ�','�����Ṧ'} 
    local bx = CC.ScreenW/1360
    local by = CC.ScreenH/768
	local size = CC.DefaultFont*0.7
	local size1 = CC.DefaultFont*0.6
	local menu = {};
	local menu1 = {};
	local xz = {'�˹�','ͣ��','ȡ��'}
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
	    -- WGid = JY.Person[pid]["�书"..i];
		-- if WGid > 0 then
           -- if num < 3 then 
		      -- if JY.Wugong[WGid]['�书����'] < 5 then 
		         -- menu[#menu+1] = JY.Wugong[WGid]['����']
			     -- menu1[#menu1+1] = WGid
		      -- end
		   -- else
		      -- if wglx(WGid,num+2) then 
		         -- menu[#menu+1] = JY.Wugong[WGid]['����']
			     -- menu1[#menu1+1] = WGid
		      -- end
		   -- end
		-- end
	-- end
	for i = 1, CC.Kungfunum do
	    WGid = JY.Person[pid]["�书"..i];
		if WGid > 0 then
           if num == 1 then 
		      if JY.Wugong[WGid]['�书����'] < 6 then 
		         menu[#menu+1] = JY.Wugong[WGid]['����']
			     menu1[#menu1+1] = WGid
		      end
		   elseif num == 3 then
			if JY.Wugong[WGid]['�书����'] == 6 then 
		         menu[#menu+1] = JY.Wugong[WGid]['����']
			     menu1[#menu1+1] = WGid
		     end
		   elseif num == 4 then
		     if JY.Wugong[WGid]['�书����'] == 7 then 
		         menu[#menu+1] = JY.Wugong[WGid]['����']
			     menu1[#menu1+1] = WGid
		     end
		   end
		end
	end

	for i = 1, CC.Skillnum do
	    WGid = JY.Person[pid]["����"..i];
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
         DrawString(bx*935-string.len('û�п����书')/4*size,by*136-size/2,'û�п����书',C_WHITE,size)
	   ShowScreen()
	   WaitKey()
	   return 0;
	end
    local r = tjm13(menu,#menu,bx*935,by*56+size1,C_WHITE,size1,5,nil)
	if r <= 0 then 
	   return 0 
	end
	JY.Person[pid][tl[num]] = menu1[r] --���ù���	
	
	--�ڹ���·���ݵ�ǰ�ڹ�������������
	--�л��ڹ������
end
--pic��ͼλ��
function picxy(id,picid,x,y,z,t)
lib.PicLoadCache(id,picid,x,y,z,t)
end 

--��������
function name(id) 
   return JY.Person[id]['����']
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
	T2["��"] = PinkRed
	T2["��"] = LimeGreen
	T2["��"] = C_BLACK
	T2["��"] = C_WHITE
	T2["��"] = C_ORANGE
	T2["��"] = M_DeepSkyBlue
	T2["��"] = Violet
	T2['��'] = C_GOLD
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
		if string.byte(try)>127 then --����
			local s=string.sub(str,1,2);
			str=string.sub(str,3,-1);

			if T2[s] ~= nil then 
				--if s ~= "��" then
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
            if s == '��' or s == '*' then 
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
				--����������ٽ�����һ��
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
			if JY.Base['����'..ii] >= 0 then 
				liebiao[ii] = {JY.Person[JY.Base['����'..ii]]['����'],JY.Base['����'..ii]}				
			end	
		end		
		if lieshu > #liebiao then
			lieshu = #liebiao
		end
		for ai = 1,lieshu do
			local tw = 0
			if CC.Png[JY.Person[liebiao[ai+pg][2]]['������']] ~= nil then 
				tw = CC.Png[JY.Person[liebiao[ai+pg][2]]['������']]
			end
			local cl1 = C_CYGOLD
			local pc = 72
			local pc1 = 74
			local pc2 = 72
			if tb == ai then
				cl1 = C_RED				
			end					
			DrawString(bx*zuobiao[1]+bx*62-string.len(liebiao[ai+pg][1])/4*size+(ai-1)*bx*152,by*zuobiao[2]+by*150,liebiao[ai+pg][1],cl1,size)
			local headid = JY.Person[liebiao[ai+pg][2]]["������"]
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
local T2={{"��",C_RED},{"��",M_Green},{"��",C_BLACK},{"��",C_WHITE},{"��",C_ORANGE},{"��",M_Gray},{"��",M_Yellow},{"��",M_Orange}};

local cx,cy=0,0;
local sid=lib.SaveSur(0,0,CC.ScreenW,CC.ScreenH);
while string.len(str)>=1 do
 local try=string.sub(str,1,1)
 local control=false;

 local hs = size+CC.RowPixel
 if hnum ~= nil then 
    hs = hnum
 end
 if string.byte(try)>127 then --����
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
	   --����������ٽ�����һ��
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
   
   --�书�ȼ����ݵ�ǰ�����书�ȼ�
   local level = math.modf(tjm5(id,wg)/100)+1
   --��ȡ�书�ķ�Χ
   --say("�书�ȼ�"..level,0,1)
   if level == 10 then
	level = 11
   end
   
   local m1, m2, a1, a2, a3, a4, a5 =refw(wg, level,id)-- refw(wg, level,id)
   local movefanwei = {m1, m2}   --���ƶ��ķ�Χ
   local atkfanwei = {a1, a2, a3, a4, a5}   --������Χ
   local xx,yy = 6,6 
   local px,py = xx,yy

   if a1 >= 10 and a1 <= 12 then
      yy = 6 + math.ceil(a2/2)-1
	  py = yy + 1
   end
   
  tjm31(x,y,xx,yy,atkfanwei,px,py)
end
function tjm5(id,wgid)
   if wgid == '��ת' then 
	  return psx(id,'��ת�ȼ�')
   elseif wgid == '���һ���' then 
      return psx(id,'���ҵȼ�')
   end
   for i = 1,CC.Kungfunum do 
      if JY.Person[id]["�书"..i] == wgid and JY.Person[id]["�书�ȼ�"..i] > 0 then
	     return JY.Person[id]["�书�ȼ�"..i]  
      end 
   end
   return 0
end
function tjm31(zx,zy,x, y, fanwei, cx, cy)

  local x0, y0 = cx, cy

  local kind = fanwei[1]			--������Χ
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
  
  --say("����"..num,0,1)
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
	lib.LoadPNGPath(CC.BodyPath, 53, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	--������
	lib.LoadPNGPath(CC.BJPath, 10, CC.BJNum, limitX(CC.ScreenW/936*100,0,100))		--��Ѩ

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
		tb2("��/�Ҽ�ѡ������  ����󰴿ո��ȷ��", -1, 670, C_ORANGE)
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
	if JY.Base["����"] <= 0 then
		return
	end
	local x0, y0
	local p = false
	local p2 = false
	for k = 0, WAR.PersonNum - 1 do
		if WAR.Person[k]["������"] == zj() then
			x0 = WAR.Person[k]["����X"]
			y0 = WAR.Person[k]["����Y"]
			p = true
			break
		end
	end

	if WAR.Data["�Զ�ѡ���ս��1"] ~= 0 then
		p2 = true
	elseif WAR.Data["�Զ�ѡ���ս��1"] == 0 and WAR.Data["�Զ�ѡ���ս��2"] ~= -1 then
		p2 = true
	end
	if p and p2 and yesno("Ҫ�ó����ս��") then
		local x, y = WE_xy(x0, y0)	
		NewWARPersonZJ(606, true, x, y, false, 2)
		--AddPersonAttrib(zj(), "����", -20)	
		--tb(JY.Person[zj()]["����"].."��������20��")
	end
end

function hasPet()
	if JY.Base["����"] <= 0 then
		return false
	else
		return true
	end
end

function setPet(n, flag)
	if n == 0 then
		JY.Base["����"] = 0
		return
	end
	local start = 607
	local pid = 606
	for i = 1, #PSX - 8 do
		JY.Person[pid][PSX[i]] = JY.Person[start + n][PSX[i]]
	end
	--local t = math.modf(JY.Person[pid]["����"] * 0.5)
	--JY.Person[pid]["�������ֵ"] = 200
	--JY.Person[pid]["����"] = 200
	--JY.Person[pid]["�������ֵ"] = 500
	--JY.Person[pid]["����"] = 500
	--JY.Person[pid]["������"] = t + math.random(t)
	--JY.Person[pid]["������"] = t + math.random(t)
	--JY.Person[pid]["�Ṧ"] = t + math.random(t)
	--JY.Person[pid]["�书�ȼ�1"] = 10
	--JY.Person[pid]["�书�ȼ�2"] = 10
	--JY.Person[pid]["ȭ�ƹ���"] = 10
	--JY.Person[pid]["��������"] = 10
	--JY.Person[pid]["ˣ������"] = 10
	--JY.Person[pid]["�������"] = 10
	JY.Base["����"] = n
	local str = "�շ�"..JY.Person[start + n]["����"].."Ϊ���"
	if flag == nil then
		tb(str)
		tb("���������һ������")
		JY.Person[pid]["����"] = "";
		while JY.Person[pid]["����"] == "" do
			JY.Person[pid]["����"] = Shurufa(32, CC.ScreenH - 6 * CC.Fontbig)
			if JY.Person[pid]["����"] == "" then
				tb("���������һ������")
			end
		end	
	else
		return str
	end	
end

function IncludeFile()
	package.path=CONFIG.ScriptLuaPath;  --���ü���·��
	require("jyconst");					--���������ļ���ʹ��require�����ظ�����
	require("jywar");
	require("JingMai");					--����ϵͳ
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
        JY.Person[pid]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[pid]["�������ֵ"]=JY.Person[clone_choice]["�������ֵ"]
		JY.Person[pid]["�������ֵ"]=JY.Person[clone_choice]["�������ֵ"]
		JY.Person[pid]["ͷ�����"]=JY.Person[clone_choice]["ͷ�����"]
		JY.Person[pid]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[pid]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[pid]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[pid]["���"]=JY.Person[clone_choice]["���"]
		JY.Person[pid]["�Ա�"]=JY.Person[clone_choice]["�Ա�"]
        JY.Person[pid]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[pid]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[pid]["����"]=JY.Person[clone_choice]["����"]
        JY.Person[pid]["�ȼ�"]=JY.Person[clone_choice]["�ȼ�"]
		for i=1,5 do
			JY.Person[pid]["���ж���֡��" .. i]=JY.Person[clone_choice]["���ж���֡��" .. i]
			JY.Person[pid]["���ж����ӳ�" .. i]=JY.Person[clone_choice]["���ж����ӳ�" .. i]
			JY.Person[pid]["�书��Ч�ӳ�" .. i]=JY.Person[clone_choice]["�书��Ч�ӳ�" .. i]
		end
		
		--���빥�������25
		JY.Person[pid]["������"]=JY.Person[clone_choice]["������"]
		JY.Person[pid]["������"]=JY.Person[clone_choice]["������"]
		JY.Person[pid]["�Ṧ"]=JY.Person[clone_choice]["�Ṧ"]
		--ҽ���ö��ⶾ���30
		JY.Person[pid]["ҽ������"]=limitX(JY.Person[clone_choice]["ҽ������"],30)
		JY.Person[pid]["�ö�����"]=limitX(JY.Person[clone_choice]["�ö�����"],30)
		JY.Person[pid]["�ⶾ����"]=limitX(JY.Person[clone_choice]["�ⶾ����"],30)

		JY.Person[pid]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[pid]["ȭ�ƹ���"]=JY.Person[clone_choice]["ȭ�ƹ���"]
		JY.Person[pid]["ָ������"]=JY.Person[clone_choice]["ָ������"]
		JY.Person[pid]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[pid]["ˣ������"]=JY.Person[clone_choice]["ˣ������"]
		JY.Person[pid]["�������"]=JY.Person[clone_choice]["�������"]
		JY.Person[pid]["ǹ������"]=JY.Person[clone_choice]["ǹ������"]
		--������������30
		JY.Person[pid]["��������"]=limitX(JY.Person[clone_choice]["��������"],30)

		JY.Person[pid]["��ѧ��ʶ"]=JY.Person[clone_choice]["��ѧ��ʶ"]
		JY.Person[pid]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[pid]["���һ���"]=JY.Person[clone_choice]["���һ���"]
	
		for i=1,12 do
			JY.Person[pid]["�书" .. i]=JY.Person[clone_choice]["�书" .. i]
			JY.Person[pid]["�书�ȼ�" .. i]=JY.Person[clone_choice]["�书�ȼ�" .. i]
		end

		for i=1,4 do
			JY.Person[pid]["Я����Ʒ" .. i]=JY.Person[clone_choice]["Я����Ʒ" .. i]
			JY.Person[pid]["Я����Ʒ����" .. i]=JY.Person[clone_choice]["Я����Ʒ����" .. i]
		end
		for i=1,6 do
			JY.Person[pid]["����" .. i]=JY.Person[clone_choice]["����" .. i]
		end		
		for i=1,4 do
			JY.Person[pid]["�츳�⹦"..i]=JY.Person[clone_choice]["�츳�⹦"..i]
		end
		
		JY.Person[pid]["�츳�ڹ�"]=JY.Person[clone_choice]["�츳�ڹ�"]
		JY.Person[pid]["�츳�Ṧ"]=JY.Person[clone_choice]["�츳�Ṧ"]
		JY.Person[pid]["����ֽ�"]=JY.Person[clone_choice]["����ֽ�"]
		JY.Person[pid]["���2"]=JY.Person[clone_choice]["���2"]
		JY.Person[pid]["��ɫָ��"] = JY.Person[clone_choice]["��ɫָ��"]
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

function T7DFWM(id) --�¼����ж�
  if match_ID(id,75) then
    return true
  else
    return false
  end
end

function SetGlobal()  	 --������Ϸ�ڲ�ʹ�õ�ȫ�̱���
	JY={};

	JY.Status=GAME_INIT; --��Ϸ��ǰ״̬

	--����R������
	JY.Base={};          --��������
	JY.PersonNum=0;      --�������
	JY.Person={};        --��������
	JY.ThingNum=0        --��Ʒ����
	JY.Thing={};         --��Ʒ����
	JY.SceneNum=0        --��������
	JY.Scene={};         --��������
	JY.WugongNum=0       --��Ʒ����
	JY.Wugong={};        --��Ʒ����
	JY.ShopNum=0 		 --�̵�����
	JY.Shop={};    		 --�̵�����
   
	JY.MyCurrentPic = 0		--���ǵ�ǰ��·��ͼ����ͼ�ļ���ƫ��
	JY.MyPic = 0     		--���ǵ�ǰ��ͼ
	JY.Mytick = 0			--����û����·�ĳ���֡��
	JY.MyTick2 = 0			--��ʾ�¼������Ľ���
	JY.LOADTIME = 0
	JY.SAVETIME = 0
	JY.GTIME = 0			--��Ϸʱ��
	JY.GOLD = 0				--��Ϸ����

	JY.SubScene=-1;         --��ǰ�ӳ������
	JY.SubSceneX=0;         --�ӳ�����ʾλ��ƫ�ƣ������ƶ�ָ��ʹ��
	JY.SubSceneY=0;

	JY.Darkness=0;          --=0 ��Ļ������ʾ��=1 ����ʾ����Ļȫ��

	JY.CurrentD=-1;         --��ǰ����D*�ı��
	JY.OldDPass=-1;         --�ϴδ���·���¼���D*���, �����δ���
	JY.CurrentEventType=-1  --��ǰ�����¼��ķ�ʽ 1 �ո� 2 ��Ʒ 3 ·��

	JY.CurrentThing=-1;     --��ǰѡ����Ʒ�������¼�ʹ��

	JY.MmapMusic=-1;        --�л����ͼ���֣���������ͼʱ��������ã��򲥷Ŵ�����

	JY.CurrentMIDI=-1;      --��ǰ���ŵ�����id�������ڹر�����ʱ��������id��
	JY.EnableMusic=1;       --�Ƿ񲥷����� 1 ���ţ�0 ������
	JY.EnableSound=1;       --�Ƿ񲥷���Ч 1 ���ţ�0 ������

	WAR={};					--ս��ʹ�õ�ȫ�̱��� ����ռ��λ�ã���Ϊ������治������ȫ�ֱ����ˡ�����������WarSetGlobal������

	AutoMoveTab = {[0] = 0}
	
	JY.Restart = 0			--������Ϸ��ʼ����
	JY.WalkCount = 0		--��·�Ʋ�
	
	ItemInfo = {}			--��Ʒ��ϸ˵��
	
	G = {}					--���ú���
end

function JY_Main()        --���������
	os.remove("debug.txt");      	  --�����ǰ��debug���
    xpcall(JY_Main_sub,myErrFun);     --������ô���
end

function myErrFun(err)      --��������ӡ������Ϣ
    lib.Debug(err);                 --���������Ϣ
    lib.Debug(debug.traceback());   --������ö�ջ��Ϣ
end

function JY_Main_sub()		--��������Ϸ���������
	Ct = {};
    SetGlobal();			--����ȫ�̱���JY
    IncludeFile();			--��������ģ��
    SetGlobalConst();		--����ȫ�̱���CC, ����ʹ�õĳ���


    --��ֹ����ȫ�̱���
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

	math.randomseed(os.time());			--��ʼ�������������

    JY.Status=GAME_START;				--�ı���Ϸ״̬

    lib.PicInit(CC.PaletteFile);		--����ԭ����256ɫ��ɫ��
	
	lib.FillColor(0,0,0,0,0);
	
	lib.LoadPNGPath(CC.HeadPath, 1, CC.HeadNum, limitX(CC.ScreenW/936*100,0,100))	--���ö�ȡPNGͼƬ��·��
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
		--�汾��
		DrawString(CC.ScreenW-115,CC.ScreenH-30,CC.Version,C_BLACK,CC.Fontsmall)
		ShowScreen()
	end
	return choice
end

function StartMenu()
	Cls()
	--[[
	local menu={  {"���¿�ʼ",nil,1},
	              {"�������",nil,1},
	              {"�뿪��Ϸ",nil,1}  };
	local menux=(CC.ScreenW-4*CC.StartMenuFontSize-2*CC.MenuBorderPixel)/2

	local menuReturn=ShowMenu(menu,3,0,menux,CC.StartMenuY,0,0,0,0,CC.StartMenuFontSize,C_STARTMENU, C_RED)
	Cls();]]
	local menuReturn = TitleSelection()
    if menuReturn == 1 then        --���¿�ʼ��Ϸ
		NewGame();   		       --��������Ϸ����
		if JY.Restart == 1 then
			do return end
		end
		--���������ʼ����
		if JY.Base["����"] == 58 then
			JY.SubScene = 18
			JY.Base["��X"] = 144
			JY.Base["��Y"] = 218
			JY.Base["��X1"] = 30
			JY.Base["��Y1"] = 32
		else
			JY.SubScene = CC.NewGameSceneID
			JY.Base["��X1"] = CC.NewGameSceneX
			JY.Base["��Y1"] = CC.NewGameSceneY
		end
		--�޾Ʋ�������Ů�����ж�
		if JY.Person[0]["�Ա�"] == 0 then
			JY.MyPic = CC.NewPersonPicM
		else
			JY.MyPic = CC.NewPersonPicF
		end
		if JY.Base["����"] == 447 or JY.Base["����"] == 448 or JY.Base["����"] == 449 or JY.Base["����"] == 450 then
        lib.PlayMPEG(CONFIG.DataPath .. "TXDY.avi",VK_ESCAPE);
		end 
		JY.Status = GAME_SMAP
		JY.MmapMusic = -1
		CleanMemory()
		Init_SMap(0)
        lib.ShowSlow(20,0)

		--if DrawStrBoxYesNo(-1, -1, "�Ƿ�ۿ����¾��飿", C_GOLD, CC.DefaultFont, LimeGreen) == true then 
			--oldCallEvent(CC.NewGameEvent)
		--end
		
		--�����¼�
		if JY.Base["����"] == 58 then		--�������
			CallCEvent(4187)
		else								--������
			CallCEvent(691)
		end
		
		--���뿪�ֻ�������װ��
		if JY.Base["����"] > 0 then
			if JY.Person[0]["����"] ~= - 1 then
				instruct_2(JY.Person[0]["����"], 1)
				JY.Person[0]["����"] = - 1
			end
			if JY.Person[0]["����"] ~= - 1 then
				instruct_2(JY.Person[0]["����"], 1)
				JY.Person[0]["����"] = - 1
			end
			if JY.Person[0]["����"] ~= - 1 then
				instruct_2(JY.Person[0]["����"], 1)
				JY.Person[0]["����"] = - 1
			end	
			if JY.Person[0]["��Ʒ"] ~= - 1 then
				instruct_2(JY.Person[0]["��Ʒ"], 1)
				JY.Person[0]["��Ʒ"] = - 1
			end	
		end
		--�������������һ����
		if JY.Base["����"] == 158 then
			instruct_2(174, 10000)
		    local wcywg = JYMsgBox("��ѡ��", "�Ƿ������ɳ�����", {"��","��"}, 2, 60)
			if wcywg == 1 then
		       setWG(78)
	        end
			ClsN()
		end
		--�������������붴��Ǯѧϰ���ٲ�
		if JY.Base["��׼"] > 0 then
			addevent(41, 0, 1, 4144, 1, 8694)
		end
	elseif menuReturn == 2 then         --����ɵĽ���

    	DrawStrBox(-1,CC.ScreenH*1/6-20,"��ȡ����",LimeGreen,CC.Fontbig,C_GOLD);
		DrawStrBox(290,CC.ScreenH*1/6+26,string.format("%-6s %-4s %-10s %-4s %-4s %-4s %-10s","�浵��", "����", "����", "�Ѷ�", "����", "����", "λ��"),C_ORANGE,CC.DefaultFont,C_GOLD);
	
    	local r = SaveList();
    	--ESC ���·���ѡ��
    	if r < 1 then
    		local s = StartMenu();
    		return s;
    	end
    	
    	Cls();
		DrawStrBox(-1,CC.StartMenuY,"���Ժ�...",C_GOLD,CC.DefaultFont);
		ShowScreen();
    	local result = LoadRecord(r);
    	if result ~= nil then
    		return StartMenu();
    	end

		if JY.Base["����"] ~= -1 then
			if JY.SubScene < 0 then
				CleanMemory()
				lib.UnloadMMap()
			end
			lib.PicInit()
			lib.ShowSlow(20, 1)
			JY.Status = GAME_SMAP
			JY.SubScene = JY.Base["����"]
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

function CleanMemory()            --����lua�ڴ�
    if CONFIG.CleanMemory==1 then
		collectgarbage("collect");
    end
end

function NewGame()     --ѡ������Ϸ���������ǳ�ʼ����
	Cls();
	ShowScreen();
	LoadRecord(0); --  ��������Ϸ����
	
	JY.Status = GAME_NEWNAME;
	ClsN();

--�����ʼ��
--�����ʼ��
JoinMP(5,2,5)
JoinMP(10,5,4)
JoinMP(11,5,4)

JY.Thing[308]["�Ƿ���Ч"] = 0

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
	
	JY.Person[28]["�书1"] = 127
	JY.Person[28]["�书�ȼ�1"] = 999
	JY.Person[28]["�츳�⹦1"] = 127
	
JoinMP(35,6,2)
	JY.Person[47]["��ɫָ��"] = 1
	
JoinMP(49,3,2)	
JoinMP(50,1,4)
awakening(50,1)
JoinMP(54,6,2)
JY.Person[56]["��ɫָ��"] = 1

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
	JY.Person[75]["�书2"] = 166
	JY.Person[75]["�书�ȼ�2"] = 900
	JY.Person[75]["�����ڹ�"] = 166
    JY.Person[75]["�츳�ڹ�"] = 166
    JY.Person[75]["Я����Ʒ".. 2] = 308
    JY.Person[75]["Я����Ʒ����" .. 2] = 1	
JoinMP(78,8,2)
JoinMP(79,6,2)
JoinMP(80,2,2)
	JY.Person[80]["�书2"] = 99
	JY.Person[80]["�书�ȼ�2"] = 900
	JY.Person[80]["�����ڹ�"] = 99
	
	JY.Person[81]["�书2"] = 142
	JY.Person[81]["�书�ȼ�2"] = 999	
	JY.Person[81]["�츳�⹦2"] = 142
JoinMP(82,2,2)	
JoinMP(84,4,2)

JY.Person[89]["�츳�ڹ�"] = 90
	JY.Person[89]["�书2"] = 90
	JY.Person[89]["�书�ȼ�2"] = 900
JoinMP(97,4,3)
JoinMP(103,4,3)
JY.Person[103]["Я����Ʒ".. 3] = 135
JY.Person[103]["Я����Ʒ����" .. 3] = 1
JoinMP(109,6,4)

JoinMP(114,3,3)


JY.Person[116]["���˾���"] =1
JY.Person[117]["���˾���"] = 1

JoinMP(140,6,3)
JoinMP(141,6,3)
JoinMP(142,6,3)	
	JY.Person[142]["�书1"] = 162
	JY.Person[142]["�书�ȼ�1"] = 999
	JY.Person[142]["�츳�⹦1"] = 162
JoinMP(149,3,4)
JoinMP(158,4,2)
JoinMP(159,4,2)
	JY.Person[169]["�书2"] = 144
	JY.Person[169]["�书�ȼ�2"] = 900
	JoinMP(169,3,4)
	JY.Person[170]["�书2"] = 96
	JY.Person[170]["�书�ȼ�2"] = 900
	JoinMP(170,3,3)
JoinMP(185,6,4)




JoinMP(455,4,3)
JoinMP(458,1,4)
	JY.Person[458]["�书1"] = 60
	JY.Person[458]["�书�ȼ�1"] = 999
	JY.Person[458]["�츳�⹦1"] = 60
JoinMP(459,1,4)
	JY.Person[459]["�书1"] = 26
	JY.Person[459]["�书�ȼ�1"] = 999
	JY.Person[459]["�츳�⹦1"] = 26

	for i = 301, 310 do
		JoinMP(i,5,1)
	end

	JY.Person[302]["����"] = "�ٱ��Ǿ�" 
	JY.Person[302]["ͷ�����"] = 57
	JY.Person[302]["�������ֵ"] = 920
	JY.Person[302]["����"] = 920
	JY.Person[302]["�������ֵ"] = 6000
	JY.Person[302]["������"] = 200
	JY.Person[302]["������"] = 250
	JY.Person[302]["�Ṧ"] = 200
	JY.Person[302]["�ȼ�"] = 30
	JY.Person[302]["�书1"] = 73
	JY.Person[302]["�书�ȼ�1"] = 999
	JY.Person[302]["�书2"] = 181
	JY.Person[302]["�书�ȼ�2"] = 900
	JY.Person[302]["�书3"] = 146
	JY.Person[302]["�书�ȼ�3"] = 900
	JY.Person[302]["�츳�⹦1"] = 73
	JY.Person[302]["�츳�Ṧ"] = 146
    JY.Person[302]["�츳�ڹ�"] = 181
	JY.Person[302]["����ֽ�"] = 1
	JY.Person[302]["����"] = 100
	JY.Person[302]["ȭ�ƹ���"] = 90
	JY.Person[302]["ˣ������"] = 90	
	JoinMP(302,8,2)

	JY.Person[310]["����"] = "�ڰ���" 
	JY.Person[310]["ͷ�����"] = 33
	JY.Person[310]["�������ֵ"] = 920
	JY.Person[310]["����"] = 920
	JY.Person[310]["�������ֵ"] = 6000
	JY.Person[310]["������"] = 200
	JY.Person[310]["������"] = 250
	JY.Person[310]["�Ṧ"] = 200
	JY.Person[310]["�ȼ�"] = 30
	JY.Person[310]["�书1"] = 73
	JY.Person[310]["�书�ȼ�1"] = 999
	JY.Person[310]["�书2"] = 93
	JY.Person[310]["�书�ȼ�2"] = 900
	JY.Person[310]["�书3"] = 146
	JY.Person[310]["�书�ȼ�3"] = 900
	JY.Person[310]["�츳�⹦1"] = 73
--	JY.Person[310]["�츳�Ṧ"] = 146
--    JY.Person[302]["�츳�ڹ�"] = 160
	JY.Person[310]["����ֽ�"] = 1
	JY.Person[310]["����"] = 100
	JY.Person[310]["ȭ�ƹ���"] = 90
	JY.Person[310]["ָ������"] = 90	
	JoinMP(310,5,3)

	JY.Person[340]["����"] = "������" 
	JY.Person[340]["ͷ�����"] = 363
	JY.Person[340]["�������ֵ"] = 920
	JY.Person[340]["����"] = 920
	JY.Person[340]["�������ֵ"] = 6000
	JY.Person[340]["������"] = 200
	JY.Person[340]["������"] = 250
	JY.Person[340]["�Ṧ"] = 200
	JY.Person[340]["�ȼ�"] = 30
	JY.Person[340]["�书1"] = 1
	JY.Person[340]["�书�ȼ�1"] = 999
	JY.Person[340]["�书2"] = 169
	JY.Person[340]["�书�ȼ�2"] = 900
	JY.Person[340]["�츳�⹦1"] = 1
--	JY.Person[310]["�츳�Ṧ"] = 146
    JY.Person[340]["�츳�ڹ�"] = 169
	JY.Person[340]["����ֽ�"] = 1
	JY.Person[340]["����"] = 100
	JY.Person[340]["ȭ�ƹ���"] = 90
	JY.Person[340]["ˣ������"] = 90	
	JoinMP(340,5,3)

	JY.Person[360]["����"] = "���" 
	JY.Person[360]["ͷ�����"] = 245
	JY.Person[360]["�������ֵ"] = 920
	JY.Person[360]["����"] = 920
	JY.Person[360]["�������ֵ"] = 6000
	JY.Person[360]["������"] = 200
	JY.Person[360]["������"] = 250
	JY.Person[360]["�Ṧ"] = 200
	JY.Person[360]["�ȼ�"] = 30
	JY.Person[360]["�书1"] = 2
	JY.Person[360]["�书�ȼ�1"] = 999
	JY.Person[360]["�书2"] = 58
	JY.Person[360]["�书�ȼ�2"] = 999
	JY.Person[360]["�书3"] = 90
	JY.Person[360]["�书�ȼ�3"] = 900
	JY.Person[360]["�츳�⹦1"] = 2
	JY.Person[360]["�츳�⹦2"] = 58
--	JY.Person[360]["�츳�Ṧ"] = 147
--    JY.Person[302]["�츳�ڹ�"] = 160
	JY.Person[360]["����ֽ�"] = 1
	JY.Person[360]["����"] = 100
	JY.Person[360]["ȭ�ƹ���"] = 90
	JY.Person[360]["ˣ������"] = 90	
	JoinMP(360,6,3)

	JY.Person[400]["����"] = "�۴�" 
	JY.Person[400]["�������ֵ"] = 920
	JY.Person[400]["����"] = 920
	JY.Person[400]["�������ֵ"] = 4300
	JY.Person[400]["������"] = 100
	JY.Person[400]["������"] = 150
	JY.Person[400]["�Ṧ"] = 100
	JY.Person[400]["�ȼ�"] = 30
	JY.Person[400]["�书1"] = 1
	JY.Person[400]["�书�ȼ�1"] = 999
	JY.Person[400]["�书2"] = 65
	JY.Person[400]["�书�ȼ�2"] = 900
	JY.Person[400]["�书3"] = 96
	JY.Person[400]["�书�ȼ�3"] = 900
	JY.Person[400]["�츳�⹦1"] = 1
	JY.Person[400]["�츳�⹦2"] = 65
--	JY.Person[400]["�츳�ڹ�"] = 96
	JY.Person[400]["����ֽ�"] = 1
	JY.Person[400]["����"] = 100
	JY.Person[400]["ȭ�ƹ���"] = 90
	JY.Person[400]["ˣ������"] = 90	
	JoinMP(400,3,3)



	
	JY.Person[447]["����"] = "������" 
	JY.Person[447]["ͷ�����"] = 217
	JY.Person[447]["�������ֵ"] = 920
	JY.Person[447]["�������ֵ"] = 4300
	JY.Person[447]["������"] = 180
	JY.Person[447]["������"] = 150
	JY.Person[447]["�Ṧ"] = 150
	JY.Person[447]["�ȼ�"] = 30
	JY.Person[447]["�书1"] = 151
	JY.Person[447]["�书�ȼ�1"] = 999
		JY.Person[447]["�书2"] = 152
	JY.Person[447]["�书�ȼ�2"] = 900
		JY.Person[447]["�书3"] = 146
	JY.Person[447]["�书�ȼ�3"] = 1
	JY.Person[447]["�츳�⹦1"] = 151
	JY.Person[447]["�츳�ڹ�"] = 152
	JY.Person[447]["�츳�Ṧ"] = 146
	JY.Person[447]["����ֽ�"] = 1
	JY.Person[447]["����"] = 100
	JY.Person[447]["��������"] = 90
	
	JY.Person[448]["����"] = "�麣һ��" 
	JY.Person[448]["ͷ�����"] = 358
	JY.Person[448]["�������ֵ"] = 920
	JY.Person[448]["�������ֵ"] = 4300
	JY.Person[448]["������"] = 180
	JY.Person[448]["������"] = 150
	JY.Person[448]["�Ṧ"] = 100
	JY.Person[448]["�ȼ�"] = 30
	JY.Person[448]["�书1"] = 58
	JY.Person[448]["�书�ȼ�1"] = 999
	JY.Person[448]["�츳�⹦1"] = 58
	JY.Person[448]["����ֽ�"] = 1
	JY.Person[448]["����"] = 100
	JY.Person[448]["ˣ������"] = 90
	
	JY.Person[449]["����"] = "�Ϲٺ���" 
	JY.Person[449]["ͷ�����"] = 61
	JY.Person[449]["�������ֵ"] = 920
	JY.Person[449]["�������ֵ"] = 4300
	JY.Person[449]["������"] = 180
	JY.Person[449]["������"] = 150
	JY.Person[449]["�Ṧ"] = 300
	JY.Person[449]["�ȼ�"] = 30
	JY.Person[449]["�书1"] = 161
	JY.Person[449]["�书�ȼ�1"] = 999
		JY.Person[449]["�书2"] = 145
	JY.Person[449]["�书�ȼ�2"] = 900
	JY.Person[449]["�츳�⹦1"] = 161
	JY.Person[449]["�츳�Ṧ"] = 145
	JY.Person[449]["����ֽ�"] = 1
	JY.Person[449]["����"] = 100
	JY.Person[449]["��������"] = 90


	
	JY.Person[450]["����"] = "���Ƿ�" 
	JY.Person[450]["ͷ�����"] = 38
	JY.Person[450]["�������ֵ"] = 920
	JY.Person[450]["�������ֵ"] = 4300
	JY.Person[450]["������"] = 180
	JY.Person[450]["������"] = 250
	JY.Person[450]["�Ṧ"] = 100
	JY.Person[450]["�ȼ�"] = 30
	JY.Person[450]["�书1"] = 135
	JY.Person[450]["�书�ȼ�1"] = 999
		JY.Person[450]["�书2"] = 144
	JY.Person[450]["�书�ȼ�2"] = 900
		JY.Person[450]["�书3"] = 22
	JY.Person[450]["�书�ȼ�3"] = 900
	JY.Person[450]["�츳�⹦1"] = 135
	JY.Person[450]["�츳�⹦2"] = 22
	JY.Person[450]["�츳�ڹ�"] = 144
	JY.Person[450]["����ֽ�"] = 1
	JY.Person[450]["����"] = 100
	JY.Person[450]["ȭ�ƹ���"] = 90
	JY.Person[450]["ָ������"] = 90
JY.Person[450]["���ж���֡��4"] = 20
JY.Person[450]["���ж����ӳ�4"] = 15
JY.Person[450]["�书��Ч�ӳ�4"] = 13
	
	JY.Person[455]["����"] = "������" --��������
	JY.Person[455]["ͷ�����"] = 410
	JY.Person[455]["�������ֵ"] = 920
	JY.Person[455]["����"] = 920
	JY.Person[455]["�������ֵ"] = 4300
	JY.Person[455]["����"] = 4300
	JY.Person[455]["������"] = 280
	JY.Person[455]["������"] = 250
	JY.Person[455]["�Ṧ"] = 300
	JY.Person[455]["�ȼ�"] = 30
	JY.Person[455]["�书1"] = 83
	JY.Person[455]["�书�ȼ�1"] = 999
	JY.Person[455]["�츳�⹦1"] = 83
	JY.Person[455]["�书2"] = 169
	JY.Person[455]["�书�ȼ�2"] = 900
	JY.Person[455]["�츳�ڹ�"] = 169
	JY.Person[455]["����ֽ�"] = 1
	JY.Person[455]["����"] = 100
	JY.Person[455]["��������"] = 200
	JY.Person[455]["��ѧ��ʶ"] = 100
	JY.Person[455]["���һ���"] = 1
    awakening(455,1)	
	
	JY.Person[516]["����"] = "�������" 
	JY.Person[516]["ͷ�����"] = 401
	JY.Person[516]["�������ֵ"] = 920
	JY.Person[516]["�������ֵ"] = 4300
	JY.Person[516]["������"] = 280
	JY.Person[516]["������"] = 250
	JY.Person[516]["�Ṧ"] = 300
	JY.Person[516]["�ȼ�"] = 30
	JY.Person[516]["�书1"] = 151
	JY.Person[516]["�츳�⹦1"] = 151
	JY.Person[516]["����ֽ�"] = 1
	JY.Person[516]["����"] = 100
	JY.Person[516]["��������"] = 200
	JY.Person[516]["��ѧ��ʶ"] = 100
	JY.Person[516]["���һ���"] = 1	
	
	JY.Person[517]["����"] = "����ľ����" 
	JY.Person[517]["ͷ�����"] = 401
	JY.Person[517]["�������ֵ"] = 920
	JY.Person[517]["�������ֵ"] = 4300
	JY.Person[517]["������"] = 280
	JY.Person[517]["������"] = 250
	JY.Person[517]["�Ṧ"] = 300
	JY.Person[517]["�ȼ�"] = 30
	JY.Person[517]["�书1"] = 151
	JY.Person[517]["�츳�⹦1"] = 151
	JY.Person[517]["����ֽ�"] = 1
	JY.Person[517]["����"] = 100
	JY.Person[517]["��������"] = 200
	JY.Person[517]["��ѧ��ʶ"] = 100
    
	JY.Person[501]["����"] = "���ľ�ʿ" 
	JY.Person[501]["ͷ�����"] = 93
	JY.Person[501]["�������ֵ"] = 920
	JY.Person[501]["�������ֵ"] = 4300
	JY.Person[501]["������"] = 280
	JY.Person[501]["������"] = 250
	JY.Person[501]["�Ṧ"] = 300
	JY.Person[501]["�ȼ�"] = 30
	JY.Person[501]["�书1"] = 151
	JY.Person[501]["�츳�⹦1"] = 151
	JY.Person[501]["����"] = 100
	JY.Person[501]["��������"] = 200
	JY.Person[501]["��ѧ��ʶ"] = 100
	JY.Person[501]["���һ���"] = 1	
	
	JY.Person[507]["ͷ�����"] = 93
	JY.Person[507]["�������ֵ"] = 920
	JY.Person[507]["�������ֵ"] = 4300
	JY.Person[507]["������"] = 280
	JY.Person[507]["������"] = 250
	JY.Person[507]["�Ṧ"] = 300
	JY.Person[507]["�ȼ�"] = 30
	JY.Person[507]["�书1"] = 151
	JY.Person[507]["�츳�⹦1"] = 151
	JY.Person[507]["����"] = 100
	JY.Person[507]["��������"] = 200
	JY.Person[507]["��ѧ��ʶ"] = 100	
	
	JY.Person[513]["ͷ�����"] = 93
	JY.Person[513]["�������ֵ"] = 920
	JY.Person[513]["�������ֵ"] = 4300
	JY.Person[513]["������"] = 280
	JY.Person[513]["������"] = 250
	JY.Person[513]["�Ṧ"] = 300
	JY.Person[513]["�ȼ�"] = 30
	JY.Person[513]["�书1"] = 151
	JY.Person[513]["�츳�⹦1"] = 151
	JY.Person[513]["����"] = 100
	JY.Person[513]["��������"] = 200
	JY.Person[513]["��ѧ��ʶ"] = 100
	
	JY.Person[514]["ͷ�����"] = 93
	JY.Person[514]["�������ֵ"] = 920
	JY.Person[514]["�������ֵ"] = 4300
	JY.Person[514]["������"] = 280
	JY.Person[514]["������"] = 250
	JY.Person[514]["�Ṧ"] = 300
	JY.Person[514]["�ȼ�"] = 30
	JY.Person[514]["�书1"] = 151
	JY.Person[514]["�츳�⹦1"] = 151
	JY.Person[514]["����"] = 100
	JY.Person[514]["��������"] = 200
	JY.Person[514]["��ѧ��ʶ"] = 100
	
   JY.Person[628]["����ֽ�"] = 1	
   JY.Person[637]["����ֽ�"] = 1
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
	--ѡ���Ѷ�
	JY.Base["�Ѷ�"] = JYMsgBox("��ѡ����Ϸ�Ѷ�", "����Ʒע��˼���͹滮�����Ǹ���ע��SL��*���Գɳ�����ֱ��׷���޵��Ǻ����ĵ����顣*���ˡ�׼���������ѡ�������Ѷȡ�*���ģ������Ѷ��㹻�ͣ�����������������*��׷���������С������ɶȵ�����ң�*�Ƽ�ѡ�����Ż�ڶ��Ѷȡ�*������Ϊ׷����ս����ѡ���˸��Ѷȣ�*�ǵ������Լ����ý���ʮ�˴���׼����*", MODEXZ2, 6, 35)
	ClsN()
	
--ѡ��������ǳ���
	local player_type = JYMsgBox("����ѡ��", "ѡ������Ҫ������ģʽ*", {"����","��׼","����"}, 3, 225)
	ClsN()

	JY.Person[0]["����"]=CC.NewPersonName;
		  
	JY.Person[0]["�������ֵ"] = 50
	JY.Person[0]["�������ֵ"] = 100
	JY.Person[0]["����"] = JY.Person[0]["�������ֵ"]
	JY.Person[0]["����"] = JY.Person[0]["�������ֵ"]
	JY.Person[0]["������"] = 30
	JY.Person[0]["������"] = 30
	JY.Person[0]["�Ṧ"] = 30
	JY.Person[0]["ҽ������"] = 30
	JY.Person[0]["�ö�����"] = 30
	JY.Person[0]["�ⶾ����"] = 30
	JY.Person[0]["��������"] = 0
	JY.Person[0]["ȭ�ƹ���"] = 30
	JY.Person[0]["ָ������"] = 30
	JY.Person[0]["��������"] = 30
	JY.Person[0]["ˣ������"] = 30
	JY.Person[0]["�������"] = 30
	JY.Person[0]["��������"] = 30
	
	--��׼����+��������
	if player_type == 1 then	
		--��������
			ClsN()
			--�������ǵ���ͼ
			JY.Person[0]["ͷ�����"] = 355
			local T_ani = {
				{0, 0, 0}, 
				{0, 0, 0}, 
				{10, 8, 6}, 
				{0, 0, 0}, 
				{0, 0, 0}}
			for i = 1, 5 do
				JY.Person[0]["���ж���֡��" .. i] = T_ani[i][1]
				JY.Person[0]["���ж����ӳ�" .. i] = T_ani[i][3]
				JY.Person[0]["�书��Ч�ӳ�" .. i] = T_ani[i][2]
			end
			
			local gender;
			
			gender = JYMsgBox("��ѡ��", "��ѡ����������Ա� ", {"��", "Ů"}, 2, 291)
			
			--Ů���ǳ�ʼ��
			if gender == 2 then
				JY.Person[0]["�Ա�"] = 1
				JY.Person[0]["���"] = "����"
				JY.Person[0]["���2"] = "Ѿͷ"
				JY.Person[0]["ͷ�����"] = 368
				local f_ani = {
					{0, 0, 0}, 
					{0, 0, 0}, 
					{21, 19, 17}, 
					{0, 0, 0}, 
					{0, 0, 0}}
				for i = 1, 5 do
					JY.Person[0]["���ж���֡��" .. i] = f_ani[i][1]
					JY.Person[0]["���ж����ӳ�" .. i] = f_ani[i][3]
					JY.Person[0]["�书��Ч�ӳ�" .. i] = f_ani[i][2]
				end
			end
			
			ClsN()
			
			JY.Person[0]["����"] = InputNum("��������",1,100);

			ClsN()
			
			JY.Base["����"] = 1
			JY.Person[0]["����"] = "�޾Ʋ���"
			JY.Person[0]["������"] = 40
			JY.Person[0]["������"] = 40
			JY.Person[0]["�Ṧ"] = 40
			JY.Person[0]["ȭ�ƹ���"] = 50
			JY.Person[0]["ָ������"] = 50
			JY.Person[0]["��������"] = 50
			JY.Person[0]["ˣ������"] = 50
			JY.Person[0]["�������"] = 50
            JY.Person[0]["��ɫָ��"] = 1
			ClsN()
			say("�������é®֮ǰ���Ҿ�������һ�ѡ�",347,0,"л����");
	         ClsN()
	         say("ѡ��һ������Ҫǿ���Ķ��Ѱɡ�",347,0,"л����");
	ClsN()
	local k = CC.PersonExit;
	local menu = {}	
	for i = 1, 59 do
		local kfname = JY.Person[CC.PersonExit[i][1]]["����"]
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
	local r = ShowMenu2(menu, #menu, 4, 5, CC.ScreenW/2-CC.DefaultFont*10-20, nexty, 0, 0, 1, 0, CC.DefaultFont, C_ORANGE, C_WHITE,"�õ�ǿ������")
	
	if r > 0 then
	    local k = CC.PersonExit[r][1]
	    JY.Person[k]["�۽�����"] = 1
	end
			ClsN()
			
		--��׼����
		elseif player_type == 2 then
			ClsN()
			
			local gender;
			
			gender = JYMsgBox("��ѡ��", "��ѡ����������Ա� ", {"��", "Ů"}, 2, 291)
			
			--Ů���ǳ�ʼ��
			if gender == 2 then
				JY.Person[0]["�Ա�"] = 1
				JY.Person[0]["���"] = "����"
				JY.Person[0]["���2"] = "Ѿͷ"
				JY.Person[0]["ͷ�����"] = 303
				local f_ani = {
				{0, 0, 0}, 
				{9, 2, 3}, 
				{8, 3, 4}, 
				{8, 3, 4}, 
				{9, 5, 6}}
				for i = 1, 5 do
					JY.Person[0]["���ж���֡��" .. i] = f_ani[i][1]
					JY.Person[0]["���ж����ӳ�" .. i] = f_ani[i][3]
					JY.Person[0]["�书��Ч�ӳ�" .. i] = f_ani[i][2]
				end
			end
			
			ClsN()
			
			JY.Person[0]["����"] = InputNum("��������",1,100);

			ClsN()
			
			--ѡ��ϵ
			local TF = JYMsgBox("��ѡ�����ǵ��츳����", TFXZSAY1, TFE, 9, 291)
--			local TF = newselect()
			--�Ǳ���
			SetS(10, 0, 6, 0, 1)
			if TF == 1 then         --ȭ
				SetS(4, 5, 5, 5, 1)
				JY.Person[0]["ȭ�ƹ���"] = 40
				JY.Base["��׼"] = 1
			elseif TF == 2 then     --ָ
				JY.Person[0]["ָ������"] = 40
				JY.Base["��׼"] = 2
			elseif TF == 3 then     --��
				SetS(4, 5, 5, 5, 2)
				JY.Person[0]["��������"] = 40
				JY.Base["��׼"] = 3			
			elseif TF == 4 then     --��
				SetS(4, 5, 5, 5, 3)
				JY.Person[0]["ˣ������"] = 40
				JY.Base["��׼"] = 4
			elseif TF == 5 then		 --�� 
				SetS(4, 5, 5, 5, 4)
				JY.Person[0]["�������"] = 40
				JY.Base["��׼"] = 5
			elseif TF == 6 then		 --���
				JY.Person[0]["�������ֵ"] = 500
				JY.Person[0]["����"] = 500
				SetS(4, 5, 5, 5, 5)
				JY.Base["��׼"] = 6
			elseif TF == 7 then		 --����
				JY.Person[0]["Ʒ��"] = 100
				JY.Person[0]["ȭ�ƹ���"] = 40
				JY.Person[0]["ָ������"] = 40
				JY.Person[0]["��������"] = 40
				JY.Person[0]["ˣ������"] = 40
				JY.Person[0]["�������"] = 40
				SetS(4, 5, 5, 5, 6)
				JY.Base["��׼"] = 7
			elseif TF == 8 then		 --ҽ��
				JY.Person[0]["ҽ������"] = 200
				JY.Person[0]["�ö�����"] = 200
				JY.Person[0]["�ⶾ����"] = 200
				SetS(4, 5, 5, 5, 7)
				JY.Base["��׼"] = 8
			elseif TF == 9 then		 --����
				JY.Base["��׼"] = 9
				JY.Person[0]["�ö�����"] = 300
				JY.Person[0]["�ⶾ����"] = 300
			end
			ClsN()
			say("�������é®֮ǰ���Ҿ�������һ�ѡ�",347,0,"л����");
	         ClsN()
	         say("ѡ��һ����ϲ�����츳�ڹ��ɡ�",347,0,"л����");
	if instruct_11(0,188) == true then
	ClsN()
	local k = JY.Wugong;
	local menu = {}	
	for i = 1, 180 do
		local kfname = k[i]["����"]
		if string.len(kfname) == 8 then
			kfname = kfname.."  "
		elseif string.len(kfname) == 6 then
			kfname = kfname.."    "
		elseif string.len(kfname) == 4 then
			kfname = kfname.."      "
		end
		menu[i] = {kfname,nil,2}
		if k[i]["�书����"] == 6  then
			menu[i][3] = 1
		end
	end
	local nexty = CC.ScreenH/2-CC.DefaultFont*4 + CC.SingleLineHeight
	local r = ShowMenu2(menu, #menu, 4, 5, CC.ScreenW/2-CC.DefaultFont*10-20, nexty, 0, 0, 1, 0, CC.DefaultFont, C_ORANGE, C_WHITE,"�õ��츳�ڹ�")
	
	if r > 0 then
		SetTianNei(0, r)
	end
	else
	ClsN()
		TalkEx("Ҳ�У���Ҳ���Լ����뷨��",347,0,"л����") 
		instruct_0()
	end	
			ClsN()
	--��������
	else
		lib.LoadPNG(1, 1000 * 2 , 0 , 0, 1)
		
	    local menu = {}
		for i = 1, JY.PersonNum - 1 do
			menu[#menu + 1] = {JY.Person[i]["����"], nil, JY.Person[i]["����ֽ�"], i}
		end
		
		--�޾Ʋ������ֳ�һ���˵���������ʾ����ѡ��
		local clone_choice = ShowMenu3(menu,#menu,8,15,CC.MainMenuX+CC.Fontsmall*1-13,CC.MainMenuY+CC.Fontsmall*3+10,CC.Fontsmall, C_GOLD, C_WHITE)
	
		ClsN()
		
		JY.Base["����"] = clone_choice
		
		JY.Person[0]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[0]["ͷ�����"]=JY.Person[clone_choice]["ͷ�����"]
		JY.Person[0]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[0]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[0]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[0]["���"]=JY.Person[clone_choice]["���"]
		JY.Person[0]["�Ա�"]=JY.Person[clone_choice]["�Ա�"]

		JY.Person[0]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[0]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[0]["����"]=JY.Person[clone_choice]["����"]
		JY.Person[0]["��Ʒ"]=JY.Person[clone_choice]["��Ʒ"]

		for i=1,5 do
			JY.Person[0]["���ж���֡��" .. i]=JY.Person[clone_choice]["���ж���֡��" .. i]
			JY.Person[0]["���ж����ӳ�" .. i]=JY.Person[clone_choice]["���ж����ӳ�" .. i]
			JY.Person[0]["�书��Ч�ӳ�" .. i]=JY.Person[clone_choice]["�书��Ч�ӳ�" .. i]
		end
		
		--���빥�������25
		JY.Person[0]["������"]=limitX(JY.Person[clone_choice]["������"]/4,25)
		JY.Person[0]["������"]=limitX(JY.Person[clone_choice]["������"]/4,25)
		JY.Person[0]["�Ṧ"]=limitX(JY.Person[clone_choice]["�Ṧ"]/4,25)
		--ҽ���ö��ⶾ���30
		JY.Person[0]["ҽ������"]=limitX(JY.Person[clone_choice]["ҽ������"],30)
		JY.Person[0]["�ö�����"]=limitX(JY.Person[clone_choice]["�ö�����"],30)
		JY.Person[0]["�ⶾ����"]=limitX(JY.Person[clone_choice]["�ⶾ����"],30)

		JY.Person[0]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[0]["ȭ�ƹ���"]=JY.Person[clone_choice]["ȭ�ƹ���"]
		JY.Person[0]["ָ������"]=JY.Person[clone_choice]["ָ������"]
		JY.Person[0]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[0]["ˣ������"]=JY.Person[clone_choice]["ˣ������"]
		JY.Person[0]["�������"]=JY.Person[clone_choice]["�������"]
		--������������30
		JY.Person[0]["��������"]=limitX(JY.Person[clone_choice]["��������"],30)

		JY.Person[0]["��ѧ��ʶ"]=JY.Person[clone_choice]["��ѧ��ʶ"]
		JY.Person[0]["��������"]=JY.Person[clone_choice]["��������"]
		JY.Person[0]["���һ���"]=JY.Person[clone_choice]["���һ���"]
	
		for i=1,12 do
			JY.Person[0]["�书" .. i]=JY.Person[clone_choice]["�书" .. i]
			JY.Person[0]["�书�ȼ�" .. i]=JY.Person[clone_choice]["�书�ȼ�" .. i]
		end

		for i=1,4 do
			JY.Person[0]["Я����Ʒ" .. i]=JY.Person[clone_choice]["Я����Ʒ" .. i]
			JY.Person[0]["Я����Ʒ����" .. i]=JY.Person[clone_choice]["Я����Ʒ����" .. i]
		end
		
		for i=1,4 do
			JY.Person[0]["�츳�⹦"..i]=JY.Person[clone_choice]["�츳�⹦"..i]
		end
		
		JY.Person[0]["�츳�ڹ�"]=JY.Person[clone_choice]["�츳�ڹ�"]
		JY.Person[0]["�츳�Ṧ"]=JY.Person[clone_choice]["�츳�Ṧ"]
		JY.Person[0]["����ֽ�"]=JY.Person[clone_choice]["����ֽ�"]
		JY.Person[0]["���2"]=JY.Person[clone_choice]["���2"]
		JY.Person[0]["��ɫָ��"] = JY.Person[clone_choice]["��ɫָ��"]
		JY.Person[0]["������"] = JY.Person[clone_choice]["������"]
		JY.Person[0]["ǹ������"] = JY.Person[clone_choice]["ǹ������"]
		for i=1,6 do
			JY.Person[0]["����" .. i]=JY.Person[clone_choice]["����" .. i]
		end	
		
		--�������л��޷�����
		if JY.Base["����"] == 77 then
			JY.Person[0]["��ɫָ��"] = 0	
		end
		
		--���������̳�ʼ����ֵ
		if JY.Base["����"] == 76 then
			JY.Person[0]["ȭ�ƹ���"]=30
			JY.Person[0]["ָ������"]=30
			JY.Person[0]["��������"]=30
			JY.Person[0]["ˣ������"]=30
			JY.Person[0]["�������"]=30
		end
		
		--���������ʼ20ȭ
		if JY.Base["����"] == 55 then
			JY.Person[0]["ȭ�ƹ���"]=20
		end
		
		--����¼����ʼ����ֵ���
		if JY.Base["����"] == 75 then
			JY.Person[0]["ȭ�ƹ���"]=100
			JY.Person[0]["ָ������"]=60
			JY.Person[0]["��������"]=60
			JY.Person[0]["ˣ������"]=60
			JY.Person[0]["�������"]=60
		end

		if JY.Base["����"] == 69 then
		    local wcywg = JYMsgBox("��ѡ��", "�Ƿ񿪳���������", {"����","��","��"}, 3, 69)
			if wcywg == 1 then
		       setWG(26)
			elseif wcywg == 2 then
		       setWG(80) 
	        end
			ClsN()
		end
	
		if JY.Base["����"] == 60 then
		    local wcywg = JYMsgBox("��ѡ��", "�Ƿ����������ȴ����", {"��","��"}, 2, 60)
			if wcywg == 1 then
		       setWG(81)
			   awakening(0,1)
JY.Person[0]["�书2"] = 81
JY.Person[0]["�书�ȼ�2"] = 999
			   ClsN()
			   instruct_2(244,1)
	        end
			ClsN()
		end

		if JY.Base["����"] == 655 then
		    local wcywg = JYMsgBox("��ѡ��", "�Ƿ�������Ѫ��צ", {"��","��"}, 2, 60)
			if wcywg == 1 then
		       setWG(134)
	        end
			ClsN()
		end

	
		--��������������ѡ���⹦
		if JY.Base["����"] == 129 then
			local wcywg = JYMsgBox("��ѡ��", "��ѡ����ĳ�ʼ�⹦", {"ȫ�潣��","һ��ָ"}, 2, 129)
			if wcywg == 1 then
				JY.Person[0]["�书1"]=39
				JY.Person[0]["�书�ȼ�1"]=999
			elseif wcywg == 2 then
				JY.Person[0]["�书1"]=17
				JY.Person[0]["�书�ȼ�1"]=999
			end
			JY.Person[0]["�书2"]=100
			JY.Person[0]["�书�ȼ�2"]=999
			JY.Person[0]["�书3"]=0
			JY.Person[0]["�书�ȼ�3"]=0
			ClsN()
		end
		
		--������ǧ��ͷ�����
		if JY.Base["����"] == 617 then
			JY.Person[0]["ͷ�����"]=353
			JY.Person[0]["���ж���֡��3"]=24
			JY.Person[0]["���ж����ӳ�3"]=22
			JY.Person[0]["�书��Ч�ӳ�3"]=22
		end

		if JY.Base["����"] == 455 then
			JY.Person[0]["���˾���"]=1
		end
		
		if JY.Base["����"] == 637 then
			setNG(107)
			setWG(11)
		end		
		
		--���������ʼ��
		if JY.Base["����"] == 58 then
			JY.Person[0]["������"]=30
			JY.Person[0]["������"]=30
			JY.Person[0]["�Ṧ"]=30
			JY.Person[0]["ȭ�ƹ���"]=50
			JY.Person[0]["ָ������"]=30
			JY.Person[0]["��������"]=50
			JY.Person[0]["�������"]=10
			JY.Person[0]["�书1"]=42
			JY.Person[0]["�书�ȼ�1"]=999
			JY.Person[0]["�书2"]=95
			JY.Person[0]["�书�ȼ�2"]=900
			JY.Person[0]["�书3"]=0
			JY.Person[0]["�书�ȼ�3"]=0
			JY.Person[0]["�츳�ڹ�"]=95
			JY.Person[0]["�츳�⹦1"]=42
			JY.Person[0]["�츳�⹦2"]=0
			JY.Scene[18]["��������"] = 0
			JY.Scene[19]["��������"] = 1
			JY.Scene[101]["��������"] = 1
			JY.Scene[36]["��������"] = 1
			JY.Scene[28]["��������"] = 1
			JY.Scene[93]["��������"] = 1
			JY.Scene[105]["��������"] = 1
			null(18, 6)
			null(70, 87)
			addevent(70, 95, 0, 4188, 3, 0)
		end

		if JY.Base["����"] == 606 then
        local wcywg = JYMsgBox("��ѡ��", "�Ƿ���������������", {"��","��"}, 2, 606)
			if wcywg == 1 then
		       setWG(49)
	        end
			ClsN()
		end
		
		JY.Person[0]["����"] = InputNum("��������",1,100);

		ClsN()	
	end
	 
	--ѡ����������
	local nl = JYMsgBox("��ѡ��", "��Ҫ�������Ե�����", {"����", "����", "����"}, 3, 261)
	if nl == 1 then
		JY.Person[0]["��������"] = 0
	elseif nl == 2 then
		JY.Person[0]["��������"] = 1
	else
		JY.Person[0]["��������"] = 2
	end
	
	--�������
	if JY.Base["��׼"] == 6 then
		if JY.Person[0]["��������"] == 0 then
			SetS(112,0,0,0,0)
		elseif JY.Person[0]["��������"] == 1 then
			SetS(112,0,0,0,1)
		else
			SetS(112,0,0,0,2)
		end
		JY.Person[0]["��������"] = 2
	end

	ClsN();
	ShowScreen()
	
	--���������ʼ��
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
		
		--�з��ĳ�ʼ��
		if r == 0 then
			for i = 1, CC.Kungfunum do
				if JY.Person[p]["�书" .. i] > 0 then
					if p < 191 then
						--JY.Person[p]["�书�ȼ�" .. i] = 999    --BOSS�书��Ϊ��
					else
						--����10���ļӵ�10��
						if JY.Person[p]["�书�ȼ�" .. i] < 900 then
							JY.Person[p]["�书�ȼ�" .. i] = 900
						end
					end
				else
					break;
				end
			end
		
			--��������200�ļӵ�200
			if JY.Person[p]["�������ֵ"] < 200 then
				JY.Person[p]["�������ֵ"] = 200
				JY.Person[p]["����"] = JY.Person[p]["�������ֵ"]
			end
			
			--��������200�ļӵ�200
			if JY.Person[p]["�������ֵ"] < 200 then
				JY.Person[p]["�������ֵ"] = 200
				JY.Person[p]["����"] = JY.Person[p]["�������ֵ"]
			end
			
			--����Ѫ�������������Ѷ�ϵ�����
			local dif_factor;
			--��1����2
			if JY.Base["�Ѷ�"] < 3 then
				dif_factor = 2;
			--��3����4����5
			elseif JY.Base["�Ѷ�"] > 2 and JY.Base["�Ѷ�"] < 6 then
				dif_factor = 3;
			--��6
			else
				dif_factor = 4;
			end
			
			JY.Person[p]["Ѫ������"] = dif_factor
			
			--ľ׮Ѫ��������
			if p == 591 then
				JY.Person[p]["Ѫ������"] = 1
			end
			
			--����ˮ���������Ϊ1Ѫ
			if p == 600 then
				JY.Person[p]["�������ֵ"] = 1
				JY.Person[p]["����"] = JY.Person[p]["�������ֵ"]
				JY.Person[p]["Ѫ������"] = 1
			end
		end
	end
	
	--�޾Ʋ���������һЩ��ʼ���趨
	
	--��ɽ��ɽл����
	instruct_3(80, 17, 1, 0, 4105, 0, 0, 4133*2, 4133*2, 4133*2, 0, -2, -2)
	
	--�Ħ����ͼ
	instruct_3(16, 10, -2,-2,-2,-2,-2,4153*2,4153*2,4153*2,-2,-2,-2)
	
	--��������ͼ
	instruct_3(62,4,0,0,0,0,0,9238,9238,9238,0,0,0); 
	
	--ؤ����ؤ��ͼ
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

--�޾Ʋ����������ж�����
function JLSD(s1, s2, dw)
    local pid = WAR.Person[WAR.CurID]["������"]
	local d = 0
	local pd = 0
	local s = math.random(100+d)
	local s3 = math.random(100+d)
	local chance_up = 0;
	--�۽���Ӯ�����ά��������+6
	if dw == 0 and JY.Person[606]["�۽�����"] == 1 then
		chance_up = 3
	end
	--������ڶ����У�����+20
	if inteam(dw) == false then
		chance_up = JY.Base["�Ѷ�"]+4
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
 
	if force_ID(dw)  then----����ǿ��
	chance_up = chance_up + 15
	end
 
 	if WAR.Person[WAR.CurID]["�������"]>50 and math.random(10,60)<30 then
	   pd = 1
	end
 
	--�ж��Ƿ�ɹ�
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

--��Ϸ��ѭ��
function Game_Cycle()
    lib.Debug("Start game cycle");

    while JY.Status ~=GAME_END and JY.Status ~=GAME_START do
		if JY.Restart == 1 then
			break
		end
        local t1=lib.GetTime();

	    JY.Mytick=JY.Mytick+1;    --20�������޻����������Ǳ�Ϊվ��״̬
		if JY.Mytick%20==0 then
            JY.MyCurrentPic=0;
		end

        if JY.Mytick%1000==0 then
            JY.MYtick=0;
        end

        if JY.Status==GAME_FIRSTMMAP then  --�״���ʾ�����������µ�����������ͼ��������ʾ��Ȼ��ת��������ʾ
			CleanMemory()
			lib.ShowSlow(20, 1)
			JY.MmapMusic = 57
			JY.Status = GAME_MMAP
			Init_MMap()
			lib.DrawMMap(JY.Base["��X"], JY.Base["��Y"], GetMyPic())
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

function Game_MMap()      --����ͼ
	if JY.Restart == 1 then
		return
	end

    local direct = -1;
    local keypress, ktype, mx, my = lib.GetKey();
	--�ȼ����ϴβ�ͬ�ķ����Ƿ񱻰���
    for i = VK_RIGHT,VK_UP do
        if i ~= CC.PrevKeypress and lib.GetKeyState(i) ~=0 then
			keypress = i
		end
	end 
    --������ϴβ�ͬ�ķ���δ�����£��������ϴ���ͬ�ķ����Ƿ񱻰���
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
		elseif keypress == VK_H then		--��hֱ�ӻؼ�
			My_Enter_SubScene(70, 35, 31, 2);
			return;
		--�޾Ʋ�����ȫ�׿�ݼ� 7-30
		elseif keypress == VK_S then	--�浵
			Menu_SaveRecord()
			if JY.Status ~= GAME_MMAP  then
				return ;
			end
		elseif keypress == VK_L then	--����
			Menu_ReadRecord()
			if JY.Status ~= GAME_MMAP  then
				return ;
			end
		elseif keypress == VK_Z then	--״̬
			Cls()
			Menu_Status()
			--Duiwumb()
		elseif keypress == VK_E then	--��Ʒ
			Cls()
			Menu_Thing()
		elseif keypress == VK_F1 then	--��	
			Cls()
			My_ChuangSong_Ex()
			if JY.Status ~= GAME_MMAP then
				return;
			end
		elseif keypress == VK_F3 then	--������λ
			Cls()
			Menu_TZDY()
		elseif keypress == VK_F4 then	--����
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
		mx = math.modf(mx)+JY.Base["��X"];
		my = math.modf(my)+ JY.Base["��Y"]
				
		--����ƶ�
		if ktype == 2 then
			if lib.GetMMap(mx, my, 3) > 0 then				--����н������ж��Ƿ�ɽ���
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
		
							i=5;		--�˳�ѭ��
							break;
						end
					end
				end
			else
				CC.MMapAdress[0]= nil;
			end
		--������
		elseif ktype == 3 then
			if CC.MMapAdress[0] ~= nil then
				mx = CC.MMapAdress[3] - JY.Base["��X"];
				my = CC.MMapAdress[4] - JY.Base["��Y"];
				CC.MMapAdress[0]= nil;
			else
				AutoMoveTab = {[0] = 0}
				mx = mx - JY.Base["��X"]
				my = my - JY.Base["��Y"]
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


    local x,y;              --���շ����Ҫ���������
	local CanMove = function(nd, nnd)
		local nx, ny = JY.Base["��X"] + CC.DirectX[nd + 1], JY.Base["��Y"] + CC.DirectY[nd + 1]
		if nnd ~= nil then
			nx, ny = nx + CC.DirectX[nnd + 1], ny + CC.DirectY[nnd + 1]
		end
		if CC.hx == nil and ((lib.GetMMap(nx, ny, 3) == 0 and lib.GetMMap(nx, ny, 4) == 0) or CanEnterScene(nx, ny) ~= -1) then
			return true
		else
			return false
		end
	end
    if direct ~= -1 then   --�����˹���
        AddMyCurrentPic();         --����������ͼ��ţ�������·Ч��
        x=JY.Base["��X"]+CC.DirectX[direct+1];
        y=JY.Base["��Y"]+CC.DirectY[direct+1];
        JY.Base["�˷���"]=direct;
		if JY.WalkCount == 1 then
			lib.Delay(90)
		end
    else
        x=JY.Base["��X"];
        y=JY.Base["��Y"];

    end

	if direct~=-1 then
		JY.SubScene=CanEnterScene(x,y);   --�ж��Ƿ�����ӳ���
	end

    if lib.GetMMap(x,y,3)==0 and lib.GetMMap(x,y,4)==0 then     --û�н��������Ե���
        JY.Base["��X"]=x;
        JY.Base["��Y"]=y;
    end
    JY.Base["��X"]=limitX(JY.Base["��X"],10,CC.MWidth-10);           --�������겻�ܳ�����Χ
    JY.Base["��Y"]=limitX(JY.Base["��Y"],10,CC.MHeight-10);

    if CC.MMapBoat[lib.GetMMap(JY.Base["��X"],JY.Base["��Y"],0)]==1 then
	    JY.Base["�˴�"]=1;
	else
	    JY.Base["�˴�"]=0;
	end

    lib.DrawMMap(JY.Base["��X"],JY.Base["��Y"],GetMyPic());             --�滭����ͼ

	--��ǰXY������ʾ
    if CC.ShowXY==1 then
	    DrawString(10,CC.ScreenH-60,string.format("%s %d %d","���ͼ",JY.Base["��X"],JY.Base["��Y"]) ,C_GOLD,CC.Fontsmall);
	end
	
	DrawTimer();		--���·���̬��ʾ
	JYZTB();			--���ϽǼ�����Ϣ
		
		
	--��ʾ���ָ�еĳ�������
	if CC.MMapAdress[0] ~= nil then
		DrawStrBox(CC.MMapAdress[1]+10,CC.MMapAdress[2],JY.Scene[CC.MMapAdress[0]]["����"],C_GOLD,CC.DefaultFont);
	end
		
    ShowScreen();

    if JY.SubScene >= 0 then          --�����ӳ���
        CleanMemory();
		lib.UnloadMMap();
        lib.PicInit();
        lib.ShowSlow(20,1)

		JY.Status=GAME_SMAP;
        JY.MmapMusic=-1;

        JY.MyPic=GetMyPic();
        JY.Base["��X1"]=JY.Scene[JY.SubScene]["���X"]
        JY.Base["��Y1"]=JY.Scene[JY.SubScene]["���Y"]

        Init_SMap(1);
		return
    end
end

--������·
function walkto(xx,yy,x,y,flag)
	local x,y
	AutoMoveTab={[0]=0}
	if JY.Status==GAME_SMAP  then
		x=x or JY.Base["��X1"]
		y=y or JY.Base["��Y1"]
	elseif JY.Status==GAME_MMAP then
		x=x or JY.Base["��X"]
		y=y or JY.Base["��Y"]
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
				--�޾Ʋ�����һ�����۵�ϸ���޸ģ��Զ������¼���վλ���ȼ�
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

function GetMyPic()      --�������ǵ�ǰ��ͼ
    local n;
	if JY.Status==GAME_MMAP and JY.Base["�˴�"]==1 then
		if JY.MyCurrentPic >=4 then
			JY.MyCurrentPic=0
		end
	else
		if JY.MyCurrentPic >6 then
			JY.MyCurrentPic=1
		end
	end

	if JY.Base["�˴�"]==0 then
		if JY.Person[0]["�Ա�"] == 0 then
			n=CC.MyStartPicM+JY.Base["�˷���"]*7+JY.MyCurrentPic;
		else
			n=CC.MyStartPicF+JY.Base["�˷���"]*7+JY.MyCurrentPic;
		end
	else
	    n=CC.BoatStartPic+JY.Base["�˷���"]*4+JY.MyCurrentPic;
	end
	return n;
end

--���ӵ�ǰ������·����֡, ����ͼ�ͳ�����ͼ��ʹ��
function AddMyCurrentPic()
    JY.MyCurrentPic=JY.MyCurrentPic+1;
end

--�����Ƿ�ɽ�
--id ��������
--x,y ��ǰ����ͼ����
--���أ�����id��-1��ʾû�г����ɽ�
function CanEnterScene(x,y)         --�����Ƿ�ɽ�
    for id = 0,JY.SceneNum-1 do
		local scene=JY.Scene[id];
		if (x==scene["�⾰���X1"] and y==scene["�⾰���Y1"]) or
		   (x==scene["�⾰���X2"] and y==scene["�⾰���Y2"]) then
			local e=scene["��������"];
			if e==0 then        --�ɽ�
				return id;
			elseif e==1 then    --���ɽ�
				return -1
			end
		end
	end
    return -1;
end

--���˵�
function MMenu()
    local menu={{"����",Menu_Teaminfo,1},
	            {"��Ʒ",Menu_Thing,1},
				{"ҽ��",Menu_Doctor,1},
	            {"�ⶾ",Menu_DecPoison,1},
	            {"���",Menu_PersonExit,1},
	            {"ϵͳ",Menu_System,1},
                {"����", Menu_MP, 1}, 
				{"����", JingMai_testShowJMLayout, 1}, 
				};

    ShowMenu(menu,8,0,CC.MainMenuX,CC.MainMenuY,0,0,1,1,CC.DefaultFont,C_RED, C_ORANGE)
end

--ϵͳ�Ӳ˵�
function Menu_System()
	local menu = {
	{"��ȡ����", Menu_ReadRecord, 1}, 
	{"�������", Menu_SaveRecord, 1}, 
	{"�ر�����", Menu_SetMusic, 1}, 
	{"�ر���Ч", Menu_SetSound, 1}, 
	{"��Ʒ����", Menu_WPZL, 1}, 
	--{"ϵͳ����", Menu_Help, 1},
	{"�ҵĴ���", Menu_MYDIY, 1},
	{"�뿪��Ϸ", Menu_Exit2, 1}
	}
	if JY.EnableMusic == 0 then
		menu[3][1] = "������"
	end
	if JY.EnableSound == 0 then
		menu[4][1] = "����Ч"
	end
	local r = ShowMenu(menu, #menu, 0, CC.MainSubMenuX, CC.MainSubMenuY, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r == 0 then
		return 0
	elseif r < 0 then
		return 1
	end
end

function Menu_MP() --���ɲ˵��������
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
		
		DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, "Ҫ�鿴�ĸ�����", C_WHITE, CC.DefaultFont)
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
			local r3 = JYMsgBox(CC.SKILLNAME[r2][i], CC.SKILLINFO[r2][i], {"����", "ֹͣ"}, 2, 220)
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
	dofile(CONFIG.ScriptPath.."DIY.lua");	--�y
end

function Menu_Help()
	--��ʱȡ��
	--[[
	local title = "ϵͳ����";
	local str ="װ��˵�����鿴����װ����˵����"
						.."*�书˵�����鿴�����书��˵����"
						.."*���鹥�ԣ�����������÷����Լ���Ϸ�����ԡ�"
	local btn = {"װ��˵��","�书˵��","���鹥��"};
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

--���ֿ���
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

--��Ч����
function Menu_SetSound()
	if JY.EnableSound == 0 then
		JY.EnableSound = 1
	else
		JY.EnableSound = 0
	end
	return 1
end

--����˵�
function Menu_Teaminfo()
	local menu = {
		{"״̬�鿴", Menu_Status, 1}, 
		{"��������", Menu_TZDY, 1}}
	
	ShowMenu(menu, 2, 0, CC.MainSubMenuX, CC.MainSubMenuY, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
end

--��Ʒ�˵�
function Menu_Thing()
	local menu = {
	{"ȫ����Ʒ", nil, 1}, 
	{"������Ʒ", nil, 1}, 
	{"�������", nil, 1}, 
	{"�书����", nil, 1}, 
	{"�鵤��ҩ", nil, 1}, 
	{"���˰���", nil, 1}}
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
			local id = JY.Base["��Ʒ" .. i + 1]
			if id >= 0 then
				if r == 1 then
					thing[i] = id
					thingnum[i] = JY.Base["��Ʒ����" .. i + 1]
				else
					if JY.Thing[id]["����"] == r - 2 then
						thing[num] = id
						thingnum[num] = JY.Base["��Ʒ����" .. i + 1]
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

--��Ʒ����
function Menu_WPZL()
	local function swap(a, b) 
		JY.Base["��Ʒ" .. a], JY.Base["��Ʒ" .. b] = JY.Base["��Ʒ" .. b], JY.Base["��Ʒ" .. a]
		JY.Base["��Ʒ����" .. a], JY.Base["��Ʒ����" .. b] = JY.Base["��Ʒ����" .. b], JY.Base["��Ʒ����" .. a]
	end
	
	local flag = 0;
	for i=1, CC.MyThingNum do
        flag = 0;
        for j=1, CC.MyThingNum-i+1 do
             if JY.Base["��Ʒ"..j] > -1 and JY.Base["��Ʒ" .. j+1] > -1 then				--���������Ʒ��Ч
				local wg1 = JY.Thing[JY.Base["��Ʒ"..j]]["�����书"];
				local wg2 = JY.Thing[JY.Base["��Ʒ"..j+1]]["�����书"];                           
				if wg2 < 0 then								--���������书�ĸ��ݱ������
					if wg1 > 0 or  (wg1 < 0 and JY.Base["��Ʒ"..j] > JY.Base["��Ʒ"..j+1])  then                
						swap(j, j+1);
						flag = 1;
					end   
                elseif wg1 > 0 then							--�������书�ĸ��������������������ͬ���ٸ����书10����������                         
					if JY.Wugong[wg1]["�书����"] > JY.Wugong[wg2]["�书����"] or (JY.Wugong[wg1]["�书����"] == JY.Wugong[wg2]["�书����"] and JY.Wugong[wg1]["������10"] > JY.Wugong[wg2]["������10"]) then
						swap(j, j+1);
						flag = 1;
					end
				end
			end
		end
		if flag == 0 then									--���һ������û���κεĽ������϶������Ѿ��ź����ˣ�ֱ���˳�
			break;
		end
	end
	Cls()
	DrawStrBoxWaitKey("�����������", C_WHITE, CC.DefaultFont)
end

--���̼�����Ʒ�˵�
function MenuDSJ()
	local menu = {
	{"ȫ����Ʒ", nil, 0}, 
	{"������Ʒ", nil, 0}, 
	{"�������", nil, 1}, 
	{"�书����", nil, 1}, 
	{"�鵤��ҩ", nil, 1}, 
	{"���˰���", nil, 1}}
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
			local id = JY.Base["��Ʒ" .. i + 1]
			if id >= 0 then
				if r == 1 then
					thing[i] = id
					thingnum[i] = JY.Base["��Ʒ����" .. i + 1]  
				else
					if JY.Thing[id]["����"] == r - 2 then
						thing[num] = id
						thingnum[num] = JY.Base["��Ʒ����" .. i + 1]
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

--����ǿ����Ʒ�˵�
function MenuTJQH()
	local thing = {}
	local thingnum = {}
	for i = 0, CC.MyThingNum - 1 do
		thing[i] = -1
		thingnum[i] = 0
	end
	local num = 0
	for i = 0, CC.MyThingNum - 1 do
		local id = JY.Base["��Ʒ" .. i + 1]
		if id >= 0 then
			if JY.Thing[id]["����"] == 1 then
				thing[num] = id
				thingnum[num] = JY.Base["��Ʒ����" .. i + 1]
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

--��Ӫ����
function Menu_HYZB()
	if JY.SubScene ~= 25 then
		JY.SubScene = 70
		JY.Base["��X1"] = 8
		JY.Base["��Y1"] = 28
		JY.Base["��X"] = 358
		JY.Base["��Y"] = 235
	end
end

--�޾Ʋ������°�X�˵�
function Menu_Exit()      --�뿪�˵�
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
	{"�뿪��Ϸ", nil, 1}, 
	{"���ر���", nil, 1},
	{"������Ϸ", nil, 2}}
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

--�뿪�˵�
function Menu_Exit2()
    Cls();
    if DrawStrBoxYesNo(-1,-1,"�Ƿ����Ҫ�뿪��Ϸ(Y/N)?",C_WHITE,CC.DefaultFont) == true then
        JY.Status =GAME_END;
    end
    return 1;
end

--�������
function Menu_SaveRecord()
	Cls();
	DrawStrBox(-1,CC.ScreenH*1/6-20,"�������",LimeGreen,CC.Fontbig,C_GOLD);
	DrawStrBox(104,CC.ScreenH*1/6+26,string.format("%-6s %-4s %-10s %-4s %-4s %-4s %-10s","�浵��", "����", "����", "�Ѷ�", "����", "����", "λ��"),C_ORANGE,CC.DefaultFont,C_GOLD);
	local r = SaveList();
    if r>0 then
        DrawStrBox(CC.MainSubMenuX2,CC.MainSubMenuY,"���Ժ�......",C_WHITE,CC.DefaultFont);
        ShowScreen();
        SaveRecord(r);
        Cls();
	end
    return 0;
end

--��ȡ����
function Menu_ReadRecord()
	Cls();
	DrawStrBox(-1,CC.ScreenH*1/6-20,"��ȡ����",LimeGreen,CC.Fontbig,C_GOLD);
	DrawStrBox(104,CC.ScreenH*1/6+26,string.format("%-6s %-4s %-10s %-4s %-4s %-4s %-10s","�浵��", "����", "����", "�Ѷ�", "����", "����", "λ��"),C_ORANGE,CC.DefaultFont,C_GOLD);
	local r = SaveList();
	if r < 1 then
		return 0;
	end
    	
	Cls();
	DrawStrBox(-1,CC.StartMenuY,"���Ժ�...",C_GOLD,CC.DefaultFont);
	ShowScreen();
	local result = LoadRecord(r);
	if result ~= nil then
		return 0;
	end
	--�ӳ���
	if JY.Base["����"] ~= -1 then
		if JY.SubScene < 0 then
			CleanMemory()
			lib.UnloadMMap()
		end
		lib.PicInit()
		lib.ShowSlow(20, 1)
		JY.Status = GAME_SMAP
		JY.SubScene = JY.Base["����"]
		JY.MmapMusic = -1
		JY.MyPic = GetMyPic()
		Init_SMap(1)
	--���ͼ
	else
		JY.SubScene = -1
		JY.Status = GAME_FIRSTMMAP
	end
    return 1;
end

--״̬�Ӳ˵�
function Menu_Status()
	--�޾Ʋ�������״̬�¶�ӦX��
	local xcor = CC.MainSubMenuX +2*CC.MenuBorderPixel+4*CC.DefaultFont+5
	if JY.Status == GAME_WMAP then
		xcor = CC.MainSubMenuX + 15
	end
    DrawStrBox(xcor,CC.MainSubMenuY,"Ҫ����˭��״̬",LimeGreen,CC.DefaultFont,C_GOLD);
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

--��Ӳ˵�
function Menu_PersonExit()
	DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, "Ҫ��˭���", C_WHITE, CC.DefaultFont)
	local nexty = CC.MainSubMenuY + CC.SingleLineHeight
	local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
	if r == 1 then
		DrawStrBoxWaitKey("��Ǹ��û������Ϸ���в���ȥ", C_GOLD, CC.DefaultFont, nil, LimeGreen)
	else
		if JY.SubScene == 82 then
			do return end
		end
	end
	if r > 0 and JY.SubScene == 55 and JY.Base["����" .. r] == 35 then
		do return end
	end
	if r > 1 then
		local personid = JY.Base["����" .. r]
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

--����ѡ������˵�
function SelectTeamMenu(x,y)
	local menu={};
	for i=1,CC.TeamNum do
        menu[i]={"",nil,0};
		local id=JY.Base["����" .. i]
		if id>=0 then
            if JY.Person[id]["����"]>0 then
                menu[i][1]=JY.Person[id]["����"];
                menu[i][3]=1;
            end
		end
	end
    return ShowMenu(menu,CC.TeamNum,0,x,y,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
end

--���㵱ǰ���Ѹ���
function GetTeamNum()
    local r=CC.TeamNum;
	for i=1,CC.TeamNum do
	    if JY.Base["����" .. i]<0 then
		    r=i-1;
		    break;
		end
    end
	return r;
end

--��������
function psx(id,str) 
    return JY.Person[id][str]
end

---��ʾ����״̬
-- ���Ҽ���ҳ�����¼�������
function ShowPersonStatusA()
	local r = New_Team()
	--local r = Team()
	if r == 1 then
       PersonStatus(r)
	end

end



---��ʾ����״̬
-- ���Ҽ���ҳ�����¼�������
function ShowPersonStatus(teamid)
	local page = 1
	local pagenum = 3
	if JY.Status == GAME_WMAP then
	    if WAR.Person[teamid]["�ҷ�"] == false then
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
		local id = JY.Base["����" .. teamid]
		local sp = JY.Person[id]
		--�츳ID
		local tfid;
		--����
		if id == 0 then
			--����
			if JY.Base["��׼"] > 0 then
				tfid = 280 + JY.Base["��׼"]
			--����
			elseif JY.Base["����"] > 0 then
				tfid = 290
			--����
			else
				tfid = JY.Base["����"]
				--����Ԭ��־
				if JY.Base["����"] == 54 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "54-1"
				elseif JY.Base["����"] == 1 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "1-1"
				elseif JY.Base["����"] == 2 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "2-1"
				elseif JY.Base["����"] == 3 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "3-1"
				elseif JY.Base["����"] == 4 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "4-1"
				elseif JY.Base["����"] == 26 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "26-1"
				elseif JY.Base["����"] == 47 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "47-1"
				elseif JY.Base["����"] == 48 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "48-1"
				elseif JY.Base["����"] == 49 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "49-1"
				elseif JY.Base["����"] == 72 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "72-1"
				elseif JY.Base["����"] == 103 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "103-1"
				elseif JY.Base["����"] == 38 and JY.Person[id]["���˾���"] >= 1 then
					if JY.Person[id]["���˾���"] < 2 then
					tfid = "38-1"
					else
					tfid = "38-2"
					end
				end
			end
		--����
		else
			tfid = id
			--����Ԭ��־
			if id == 54 and JY.Person[id]["���˾���"] >= 1 then
				tfid = "54-1"
				elseif id == 1 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "1-1"
				elseif id == 2 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "2-1"
				elseif id == 3 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "3-1"
				elseif id == 4 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "4-1"
				elseif id == 26 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "26-1"
				elseif id == 47 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "47-1"
				elseif id == 48 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "48-1"
				elseif id == 49 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "49-1"
				elseif id == 72 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "72-1"
				elseif id == 103 and JY.Person[id]["���˾���"] >= 1 then
					tfid = "103-1"
				elseif id == 38 and JY.Person[id]["���˾���"] >= 1 then
					if JY.Person[id]["���˾���"] < 2 then
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
		--�޾Ʋ������ڶ�ҳ�ķ�ҳ�����ж���Ҫ���˶���
		local max_row = -17;
		if TFJS[tfid] ~= nil then
			max_row = max_row + #TFJS[tfid]
		end
		if id == 0 then
			max_row = max_row + #ZJZSJS
		end
		--AI����ѡ��Ĭ��ֵ��ȡ
		local AI_s2 = {sp["��Ϊģʽ"],sp["����ʹ��"],sp["�����ڹ�"],sp["�����Ṧ"],sp["�Ƿ��ҩ"],sp["������ֵ"],sp["������ֵ"],sp["������ֵ"],sp["�����Զ�"]}
		local yxsy = {}
		local yxsynum = 0
		yxsy[0] = 0
		for j = 1, CC.Kungfunum do
			if sp["�书"..j] == 0 then
				break
			end
			--�⹦������ѡ��ת
			if JY.Wugong[sp["�书"..j]]["�书����"] <= 5 and sp["�书"..j] ~= 43 then
				yxsynum = yxsynum + 1
				yxsy[yxsynum] = sp["�书"..j]
			end
		end
		local zyng = {}
		local zyngnum = 0
		zyng[0] = 0
		for j = 1, CC.Kungfunum do
			if sp["�书"..j] == 0 then
				break
			end
			if JY.Wugong[sp["�书"..j]]["�书����"] == 6 then
				--�����������
				if id == 0 and JY.Base["��׼"] == 6 then
					if sp["�书"..j] == JY.Person[id]["�츳�ڹ�"]  then
					
					else
						zyngnum = zyngnum + 1
						zyng[zyngnum] = sp["�书"..j]
					end
				else
					zyngnum = zyngnum + 1
					zyng[zyngnum] = sp["�书"..j]
				end
			end
		end
		local zyqg = {}
		local zyqgnum = 0
		zyqg[0] = 0
		for j = 1, CC.Kungfunum do
			if sp["�书"..j] == 0 then
				break
			end
			if JY.Wugong[sp["�书"..j]]["�书����"] == 7 then
				zyqgnum = zyqgnum + 1
				zyqg[zyqgnum] = sp["�书"..j]
			end
		end
		--״̬���涯����ʾ��97��
		lib.PicLoadFile(string.format(CC.FightPicFile[1],JY.Person[id]["ͷ�����"]),
		string.format(CC.FightPicFile[2],JY.Person[id]["ͷ�����"]), 97)
		local m = 0
		local dl = 0
		for j=1,5 do
			if JY.Person[id]['���ж���֡��'..j]>0 then
				if j>1 then
					m=j
					break;
				end
				dl=dl+JY.Person[id]['���ж���֡��'..j]*4
			end
		end
		dl=dl+JY.Person[id]['���ж���֡��'..m]*3
		ShowPersonStatus_sub(id, page, istart, tfid, max_row, nil, AI_s1, AI_s2, AI_menu_selected,AniFrame,dl)
		ShowScreen()
		local keypress, ktype, mx, my = WaitKey()
		lib.Delay(CC.Frame)
		--ktype  1�����̣�2������ƶ���3:��������4������Ҽ���5������м���6�������ϣ�7��������
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
					--ս���в����ڴ��л���������
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
					--ս���в����ڴ��л���������
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
					JY.Person[id]["��Ϊģʽ"] = JY.Person[id]["��Ϊģʽ"] - 1
					if JY.Person[id]["��Ϊģʽ"] < 1 then
						JY.Person[id]["��Ϊģʽ"] = 4
					end
				elseif AI_menu_selected == 2 then
					if WG_num > 0 then
						WG_num = WG_num - 1
						JY.Person[id]["����ʹ��"] = yxsy[WG_num]
					end
				elseif AI_menu_selected == 3 then
					if NG_num > 0 then
						NG_num = NG_num - 1
						JY.Person[id]["�����ڹ�"] = zyng[NG_num]
					end
				elseif AI_menu_selected == 4 then
					if QG_num > 0 then
						QG_num = QG_num - 1
						JY.Person[id]["�����Ṧ"] = zyqg[QG_num]
					end
				elseif AI_menu_selected == 5 then
					JY.Person[id]["�Ƿ��ҩ"] = JY.Person[id]["�Ƿ��ҩ"] - 1
					if JY.Person[id]["�Ƿ��ҩ"] < 1 then
						JY.Person[id]["�Ƿ��ҩ"] = 2
					end
				elseif AI_menu_selected == 6 then
					JY.Person[id]["������ֵ"] = JY.Person[id]["������ֵ"] - 1
					if JY.Person[id]["������ֵ"] < 1 then
						JY.Person[id]["������ֵ"] = 3
					end
				elseif AI_menu_selected == 7 then
					JY.Person[id]["������ֵ"] = JY.Person[id]["������ֵ"] - 1
					if JY.Person[id]["������ֵ"] < 1 then
						JY.Person[id]["������ֵ"] = 3
					end
				elseif AI_menu_selected == 8 then
					JY.Person[id]["������ֵ"] = JY.Person[id]["������ֵ"] - 1
					if JY.Person[id]["������ֵ"] < 1 then
						JY.Person[id]["������ֵ"] = 3
					end
				elseif AI_menu_selected == 9 then
					JY.Person[id]["�����Զ�"] = JY.Person[id]["�����Զ�"] - 1
					if JY.Person[id]["�����Զ�"] < 1 then
						JY.Person[id]["�����Զ�"] = 2
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
					JY.Person[id]["��Ϊģʽ"] = JY.Person[id]["��Ϊģʽ"] + 1
					if JY.Person[id]["��Ϊģʽ"] > 4 then
						JY.Person[id]["��Ϊģʽ"] = 1
					end
				elseif AI_menu_selected == 2 then
					if WG_num < yxsynum then
						WG_num = WG_num + 1
						JY.Person[id]["����ʹ��"] = yxsy[WG_num]
					end
				elseif AI_menu_selected == 3 then
					if NG_num < zyngnum then
						NG_num = NG_num + 1
						JY.Person[id]["�����ڹ�"] = zyng[NG_num]
					end
				elseif AI_menu_selected == 4 then
					if QG_num < zyqgnum then
						QG_num = QG_num + 1
						JY.Person[id]["�����Ṧ"] = zyqg[QG_num]
					end
				elseif AI_menu_selected == 5 then
					JY.Person[id]["�Ƿ��ҩ"] = JY.Person[id]["�Ƿ��ҩ"] + 1
					if JY.Person[id]["�Ƿ��ҩ"] > 2 then
						JY.Person[id]["�Ƿ��ҩ"] = 1
					end	
				elseif AI_menu_selected == 6 then
					JY.Person[id]["������ֵ"] = JY.Person[id]["������ֵ"] + 1
					if JY.Person[id]["������ֵ"] > 3 then
						JY.Person[id]["������ֵ"] = 1
					end	
				elseif AI_menu_selected == 7 then
					JY.Person[id]["������ֵ"] = JY.Person[id]["������ֵ"] + 1
					if JY.Person[id]["������ֵ"] > 3 then
						JY.Person[id]["������ֵ"] = 1
					end	
				elseif AI_menu_selected == 8 then
					JY.Person[id]["������ֵ"] = JY.Person[id]["������ֵ"] + 1
					if JY.Person[id]["������ֵ"] > 3 then
						JY.Person[id]["������ֵ"] = 1
					end	
				elseif AI_menu_selected == 9 then
					JY.Person[id]["�����Զ�"] = JY.Person[id]["�����Զ�"] + 1
					if JY.Person[id]["�����Զ�"] > 2 then
						JY.Person[id]["�����Զ�"] = 1
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
		if AniFrame == JY.Person[id]['���ж���֡��'..m] then
			AniFrame = 0
		end
		teamid = limitX(teamid, 1, teamnum)
		page = limitX(page, 1, pagenum)
	end
end

--�޾Ʋ���������״̬��
--case��nil=���������else�ӵ�
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
  
	--�޾Ʋ�����������ʾ
	local function DrawAttrib(str, color1, color2)
		if str == "ʵս" and p[str] >= 500 then
		    if wglw(id,52)>1 and JY.Person[id]["ʵս"] < 1000 then
			DrawString(x1 + size*2 -15, y1 + h * i, string.format("%5d", p[str]), color2, size)
			else
			DrawString(x1 + size*4 -27, y1 + h * i, string.format("%s", "��"), C_RED, size)
			end		
		else
			DrawString(x1 + size*2 -15, y1 + h * i, string.format("%5d", p[str]), color2, size)
		end
		if str == "��ѧ��ʶ" then
			str = "�䳣"
		elseif str == "�������" then	
			str = "����"
		elseif str == "��������" then	
			str = "����"
		end
		DrawString(x1, y1 + h * i, string.sub(str, 1, 4), color1, size)
		--�����������⽣ϵ����ʾ
		if str == "��������" and WuyueJF(id) then
			DrawString(x1+size*4+10, y1 + h * i, "+ 50", LimeGreen, size)
		end	
		--ս�����¼ӳ�
		if JY.Status == GAME_WMAP then
			if str == "ҽ������" then
				for k,v in pairs(CC.AddDoc) do
					if match_ID(id, v[1]) then
						for wid = 0, WAR.PersonNum - 1 do
							if match_ID(WAR.Person[wid]["������"], v[2]) and WAR.Person[wid]["����"] == false then
								DrawString(x1+size*4+10, y1 + h * i, "+ "..v[3], LimeGreen, size)
								--break
							end
						end
					end
				end
			end
			if str == "�ö�����" then
				for k,v in pairs(CC.AddPoi) do
					if match_ID(id, v[1]) then
						for wid = 0, WAR.PersonNum - 1 do
							if match_ID(WAR.Person[wid]["������"], v[2]) and WAR.Person[wid]["����"] == false then
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
		--����ͼ
		lib.LoadPNG(1, 1007 * 2 , 0 , 0, 1)

		local hid = nil
		--����
		if id == 0 and JY.Base["����"] == 0 then
			--����
			if JY.Base["��׼"] > 0 then
				if p["�Ա�"] == 0 then
					hid = 546 + JY.Base["��׼"]
				else
					hid = 555 + JY.Base["��׼"]
				end
			--����
			else
				if p["�Ա�"] == 0 then
					hid = 290
				else
					hid = 368
				end
			end
		--�������ǺͶ���
		else
			hid = p["ͷ�����"]
			if p["ͷ�����"] == 217 then
			hid = 389
			end
			if p["ͷ�����"] == 93 then
			   if (id == 0 and JY.Base["����"] == 507) or id == 507 then
			   hid = 206
			   end
			end
			   if (id == 0 and JY.Base["����"] == 646) or id == 646 then
			   hid = 584
			   end
		end
		local headw, headh = lib.GetPNGXY(1, hid*2)
		local headx = (size*9 - headw) / 3
		local heady = (h * 6 - headh) / 6

		--������
		local bodyw,  bodyh = lib.GetPNGXY(97, hid*2)
		local bodyx = (size*9 - bodyw) / 3
		local bodyy = (h * 6 - bodyh) / 6
		
	   lib.LoadPNG(90, hid * 2 ,x1 + bodyx/2,y1 + bodyy/2,1)
       lib.LoadPNG(90, 1002 * 2 ,0 , 0, 1)
-------------------------------
		y1 = y1 - 8
		i = 5
		--����
		--DrawString(x1-40, y1 + h * i-160,"����", M_Black, size)
		DrawString(x1 + size * 13+20, y1 + h * (i)-165, p["����"], C_CYGOLD, size)		
		--�ȼ�
		--DrawString(x1-40, y1 + h * i-160,"�ȼ�", C_BLACK, size)
	if MPPD(id) ~= 0 then
		local mptype, mpdj = MPDISPLAY(id)
		if mptype ~= nil then
            if MPPD(id) == 5 and match_ID(id,66) then
			DrawString(x1 + size * 5+10 , y1 + h * (i)-160, "��".."��˹����ʥŮ".."��", M_Red, size*0.8)
			elseif MPPD(id) == 5 then
			if (id == 0 and JY.Base["����"] == 0 and MPDJ(id) > 4 ) then
			DrawString(x1 + size * 5+10 , y1 + h * (i)-160, "��".."���̴���ʹ��".."��", C_GOLD, size*0.8)
			else
			DrawString(x1 + size * 5+10, y1 + h * (i)-160, "��"..mptype..mpdj.."��", M_DeepSkyBlue, size*0.8)
			end
			else
			DrawString(x1 + size * 5+10, y1 + h * (i)-160, "��"..mptype..mpdj.."��", M_DeepSkyBlue, size*0.8)
			end
		else
			DrawString(x1 + size * 5+10, y1 + h * (i)-160, "��������ʿ��", C_ORANGE, size*0.8)
		end
	else
		DrawString(x1 + size * 5+10, y1 + h * (i)-160, "��������ʿ��", C_ORANGE, size*0.8)
	end		
		DrawString(x1 + size * 17+25, y1 + h * (i)-160, p["�ȼ�"], C_CYGOLD, size*0.9)
		DrawString(x1 + size * 17+50, y1 + h * (i)-160, "��", C_CYGOLD, size*0.9)		
		i = i + 1	


		--����
		--DrawString(x1, y1 + h * i, "���� �� ���� ��", Violet, size)
		--i = i + 1
		--DrawString(x1, y1 + h * (i), "�츳��", LimeGreen, size)
		--DrawString(x1-40, y1 + h * i-160,"�츳��", M_Black, size)
	  
		--�����츳
		if id == 0 then
			local main_tf;
			--����
			if JY.Base["��׼"] > 0 then
				main_tf = ZJTF[JY.Base["��׼"]]
			--����
			elseif JY.Base["����"] > 0 then
				main_tf = " "
			--����
			elseif JY.Base["����"] > 0 then
				if RWTFLB[p["����"]] ~= nil then
					main_tf = RWTFLB[p["����"]]
				end
			end
			if main_tf ~= nil then
				DrawString(x1-7, y1 + h * (i)-142, main_tf, C_CYGOLD, size*0.8)
			end
		end

		--��ͨ��ɫ�츳
		if id ~= 0 and RWTFLB[id] ~= nil then
			DrawString(x1-7, y1 + h * (i)-142,RWTFLB[id], C_CYGOLD, size*0.8)
		end
	  
	--�ƺ�
		--i = i + 1
		--DrawString(x1-40, y1 + h * i-160, "�ƺţ�", C_BLACK, size)
		
		local size1 = size *0.8		
		--���ǳƺ�
		if id == 0 then
			local main_ch;

			--����
			if JY.Base["��׼"] > 0 then
				if p["�������"] == 0 then
					main_ch = "����СϺ��"
				else
					main_ch = "����֮����"
				end
			--����
			elseif JY.Base["����"] > 0 then
				main_ch = " "
			--����
			elseif JY.Base["����"] > 0 then
				if RWWH[JY.Base["����"]] ~= nil and JY.Base["����"] ~= 35 and JY.Base["����"] ~= 38 and JY.Base["����"] ~= 49 then
					main_ch = RWWH[JY.Base["����"]]
				elseif JY.Base["����"] == 35 then
					if JY.Person[id]["���˾���"] >= 2 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["35"], C_CYGOLD, size1)
					elseif JY.Person[id]["���˾���"] >= 1 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH[35], C_CYGOLD, size1)
					end
				elseif JY.Base["����"] == 38 then
					if JY.Person[id]["���˾���"] >= 2 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["38-2"], C_CYGOLD, size1)	
					elseif JY.Person[id]["���˾���"] >= 1 then
						DrawString(x1-7, y1 + h * (i)-100, RWWH["38"], C_CYGOLD, size1)
					else
						DrawString(x1-7, y1 + h * (i)-100, RWWH[38], C_CYGOLD, size1)
					end
				elseif JY.Base["����"] == 49 then
					if JY.Person[id]["���˾���"] >= 1 then
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
		
		--�����˳ƺ�
		if RWWH[id] ~= nil and id ~= 35 and id ~= 38 and id ~= 49 then
			DrawString(x1-7, y1 + h * (i)-100, RWWH[id], C_CYGOLD, size1)
		end

		--�����
		if id == 35 then
			if JY.Person[id]["���˾���"] >= 2 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["35"], C_CYGOLD, size1)
			elseif JY.Person[id]["���˾���"] >= 1 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH[35], C_CYGOLD, size1)
			end
		end

		--����
		if id == 49 then
			if JY.Person[id]["���˾���"] >= 1 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["49"], C_CYGOLD, size1)
			else
				DrawString(x1-7, y1 + h * (i)-100, RWWH[49], C_CYGOLD, size1)
			end
		end
	  
		--ʯ����
		if id == 38 then

			if JY.Person[id]["���˾���"] >= 2 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["38-2"], C_CYGOLD, size1)
			elseif JY.Person[id]["���˾���"] >= 1 then
				DrawString(x1-7, y1 + h * (i)-100, RWWH["38"], C_CYGOLD, size1)
			else
				DrawString(x1-7, y1 + h * (i)-100, RWWH[38], C_CYGOLD, size1)
			end
		end
	  
		--����
		DrawString(x1-7, y1 + h * (i)-70, "����", C_CYGOLD, size1)
		DrawString(x1+size*2-7, y1 + h * (i)-70, p["����"], C_CYGOLD, size1)

        local ii = 0
        local diyx,diyy = CC.ThingPicWidth/2,CC.ThingPicHeight/2
        local ax,ay = x1, y1 + h * i + diyy * ii
        local s = 2
        ax = x1 - size
        ay = y1 + h * i + diyy * ii
		
		--����������
		i = i + 1
		if p["����"] > -1 then
			lib.PicLoadCache(2, p["����"] * 2, diyx/5+ax*8+30, diyy/4+ax*3-80, 1)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3-80, JY.Thing[p["����"]]["����"], C_CYGOLD, size*0.8)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3-80+size*0.7, "LV"..JY.Thing[p["����"]]["װ���ȼ�"], M_DeepSkyBlue, size*0.7)
		end
		i = i + 1
		if p["����"] > -1 then
			lib.PicLoadCache(2, p["����"] * 2, diyx/5+ax*8+30, diyy/4+ax*3+83-63, 1)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3+20, JY.Thing[p["����"]]["����"], C_CYGOLD, size*0.8)
			DrawString( diyx/5+ax*8+32, diyy/4+ax*3+20+size*0.7, "LV"..JY.Thing[p["����"]]["װ���ȼ�"], M_Red, size*0.7)
		end		
		if p["��Ʒ"] > -1 then
		 lib.PicLoadCache(2, p["��Ʒ"] * 2, diyx/5+ax*8+30, diyy/4+ax*3+166-45, 1)
		DrawString( diyx/5+ax*8+32, diyy/4+ax*3+121, JY.Thing[p["��Ʒ"]]["����"], C_CYGOLD, size*0.8)
		DrawString( diyx/5+ax*8+32, diyy/4+ax*3+121+size*0.7, "LV"..JY.Thing[p["��Ʒ"]]["װ���ȼ�"], M_Orange, size*0.7)
		end	
		
					
--�ڶ��п�ʼD
	---------------------------------------------------------------------		
		i = 0
		x1 = dx + size + 1-20
		y1 = size*2-30+280
	    local color = nil
		if p["���˳̶�"] < 33 then
			color = RGB(236, 200, 40)
		elseif p["���˳̶�"] < 66 then
			color = RGB(244, 128, 32)
		else
			color = RGB(232, 32, 44)
		end
		i = i + 1
		--DrawString(x1, y1 + h * (i), "����", C_BLACK, size)
		DrawString(x1 + 2 * size-202, y1 + h * (i)*3+9, string.format("%5d", p["����"]), C_CYGOLD, size*0.7)
		DrawString(x1 + 4 * size-208, y1 + h * (i)*3+13, "/", C_CYGOLD, size*0.6)
		if p["�ж��̶�"] == 0 then
			color = RGB(252, 148, 16)
		elseif p["�ж��̶�"] < 50 then
			color = RGB(120, 208, 88)
		else
			color = RGB(56, 136, 36)
		end
		DrawString(x1 + 4*size-212, y1 + h * (i)*3+9, string.format("%5s", p["�������ֵ"]), C_CYGOLD, size*0.7)
		local nl = nil
		if p["��������"] == 0 then
			color = RGB(208, 152, 208)
			nl = "(��)"
		elseif p["��������"] == 1 then
			color = RGB(236, 200, 40)
			nl = "(��)"
		else
			color =MilkWhite
			nl = "(����)"
		end
		--���������ɫ
		if JY.Base["��׼"] == 6  and id == 0 then
			color = M_Plum
			nl = "(���)"
		end
		--DrawString(x1, y1 + h * (i), "����", C_BLACK, size)
		DrawString(x1 + 2 * size-202,  y1 + h * (i)*3+33, string.format("%5d", p["����"]), color, size*0.7)
		DrawString(x1 + 4 * size-208, y1 + h * (i)*3+35, "/", color, size*0.6)
		DrawString(x1 + 4*size-202, y1 + h * (i)*3+33, string.format("%5d", p["�������ֵ"]), color, size*0.7)
		DrawString(x1 + 4*size-150, y1 + h * (i)*3+33, nl, color, size*0.7)			
--------------------------------------------
		i = 0
		x1 = dx + size + 1-20
		y1 = size*2-30
		
		--װ�����ӵ�����
		local str_gain, def_gain, agi_gain = 0, 0, 0
		if p["����"] > -1 then
			if JY.Thing[p["����"]]["�ӹ�����"] > 0 then
				str_gain = str_gain + JY.Thing[p["����"]]["�ӹ�����"]*10 + JY.Thing[p["����"]]["�ӹ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["����"]]["�ӹ�����"] < 0 then
				str_gain = str_gain + JY.Thing[p["����"]]["�ӹ�����"]*10 - JY.Thing[p["����"]]["�ӹ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			end
			if JY.Thing[p["����"]]["�ӷ�����"] > 0 then
				def_gain = def_gain + JY.Thing[p["����"]]["�ӷ�����"]*10 + JY.Thing[p["����"]]["�ӷ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["����"]]["�ӷ�����"] < 0 then
				def_gain = def_gain + JY.Thing[p["����"]]["�ӷ�����"]*10 - JY.Thing[p["����"]]["�ӷ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			end
			if JY.Thing[p["����"]]["���Ṧ"] > 0 then
				agi_gain = agi_gain + JY.Thing[p["����"]]["���Ṧ"]*10 + JY.Thing[p["����"]]["���Ṧ"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["����"]]["���Ṧ"] < 0 then
				agi_gain = agi_gain + JY.Thing[p["����"]]["���Ṧ"]*10 - JY.Thing[p["����"]]["���Ṧ"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			end
		end
		if p["����"] > -1 then
			if JY.Thing[p["����"]]["�ӹ�����"] > 0 then
				str_gain = str_gain + JY.Thing[p["����"]]["�ӹ�����"]*10 + JY.Thing[p["����"]]["�ӹ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["����"]]["�ӹ�����"] < 0 then
				str_gain = str_gain + JY.Thing[p["����"]]["�ӹ�����"]*10 - JY.Thing[p["����"]]["�ӹ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			end
			if JY.Thing[p["����"]]["�ӷ�����"] > 0 then
				def_gain = def_gain + JY.Thing[p["����"]]["�ӷ�����"]*10 + JY.Thing[p["����"]]["�ӷ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["����"]]["�ӷ�����"] < 0 then
				def_gain = def_gain + JY.Thing[p["����"]]["�ӷ�����"]*10 - JY.Thing[p["����"]]["�ӷ�����"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			end
			if JY.Thing[p["����"]]["���Ṧ"] > 0 then
				agi_gain = agi_gain + JY.Thing[p["����"]]["���Ṧ"]*10 + JY.Thing[p["����"]]["���Ṧ"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["����"]]["���Ṧ"] < 0 then
				agi_gain = agi_gain + JY.Thing[p["����"]]["���Ṧ"]*10 - JY.Thing[p["����"]]["���Ṧ"]*(JY.Thing[p["����"]]["װ���ȼ�"]-1)*2
			end
		end
		if p["��Ʒ"] > -1 then
			if JY.Thing[p["��Ʒ"]]["�ӹ�����"] > 0 then
				str_gain = str_gain + JY.Thing[p["��Ʒ"]]["�ӹ�����"]*10 + JY.Thing[p["��Ʒ"]]["�ӹ�����"]*(JY.Thing[p["��Ʒ"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["��Ʒ"]]["�ӹ�����"] < 0 then
				str_gain = str_gain + JY.Thing[p["��Ʒ"]]["�ӹ�����"]*10 - JY.Thing[p["��Ʒ"]]["�ӹ�����"]*(JY.Thing[p["��Ʒ"]]["װ���ȼ�"]-1)*2
			end
			if JY.Thing[p["��Ʒ"]]["�ӷ�����"] > 0 then
				def_gain = def_gain + JY.Thing[p["��Ʒ"]]["�ӷ�����"]*10 + JY.Thing[p["��Ʒ"]]["�ӷ�����"]*(JY.Thing[p["��Ʒ"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["��Ʒ"]]["�ӷ�����"] < 0 then
				def_gain = def_gain + JY.Thing[p["��Ʒ"]]["�ӷ�����"]*10 - JY.Thing[p["��Ʒ"]]["�ӷ�����"]*(JY.Thing[p["��Ʒ"]]["װ���ȼ�"]-1)*2
			end
			if JY.Thing[p["��Ʒ"]]["���Ṧ"] > 0 then
				agi_gain = agi_gain + JY.Thing[p["��Ʒ"]]["���Ṧ"]*10 + JY.Thing[p["��Ʒ"]]["���Ṧ"]*(JY.Thing[p["��Ʒ"]]["װ���ȼ�"]-1)*2
			elseif JY.Thing[p["��Ʒ"]]["���Ṧ"] < 0 then
				agi_gain = agi_gain + JY.Thing[p["��Ʒ"]]["���Ṧ"]*10 - JY.Thing[p["��Ʒ"]]["���Ṧ"]*(JY.Thing[p["��Ʒ"]]["װ���ȼ�"]-1)*2
			end
		end

	local tmp1, tmp2, tmp3 = 0, 0, 0 --������
	local tmp4, tmp5, tmp6, tmp7 = 0, 0, 0, 0 --ҽ���ⰵ
	local tmpa, tmpb, tmpc, tmpd, tmpe = 0, 0, 0, 0, 0 --ȭ������
	

	tmp1 = tmp1 + MPAttrib(id, 1)
	tmp2 = tmp2 + MPAttrib(id, 2)
	tmp3 = tmp3 + MPAttrib(id, 3)
	tmp4 = tmp4 + MPAttrib(id, 4)
	tmp5 = tmp5 + MPAttrib(id, 5)
	tmp6 = tmp6 + MPAttrib(id, 6)
	tmp7 = tmp7 + MPAttrib(id, 7)
	
		if JY.Status == GAME_WMAP then
	
		--ս�����¼ӳ� 
		if JY.Status == GAME_WMAP then
		local gj = 0
		if PersonKF(id,108) then
		 gj = math.modf (JY.Person[id]["������"]*0.3)
		   str_gain = str_gain +gj
		 end
		local fy = 0
		if PersonKF(id,108) then 
		 fy = math.modf(JY.Person[id]["������"]*0.3)
		   def_gain = def_gain +fy
		 end
	    --����ͩ���ҷ�������Խ�࣬�˺�Խ��    
		if match_ID(id, 74) then
		 local hqtgj= 0
			for j = 0, WAR.PersonNum - 1 do
				if WAR.Person[j]["����"] == false and WAR.Person[j]["�ҷ�"] == WAR.Person[i]["�ҷ�"] then
				 def_gain =  def_gain+10
			end		
	    end	
	end	
end		 
		local qg = 0
		if PersonKF(id,108) then
		 qg = math.modf(JY.Person[id]["�Ṧ"]*0.3)
		   agi_gain = agi_gain +qg
		 end		 		 
			--���ѹ������ӳ�
			for i,v in pairs(CC.AddAtk) do
				if match_ID(id, v[1]) then
					for wid = 0, WAR.PersonNum - 1 do
						if match_ID(WAR.Person[wid]["������"], v[2]) and WAR.Person[wid]["����"] == false then
							str_gain = str_gain + v[3]
						end
					end
				end
			end
			--���ѷ������ӳ�
			for i,v in pairs(CC.AddDef) do
				if match_ID(id, v[1]) then
					for wid = 0, WAR.PersonNum - 1 do
						if match_ID(WAR.Person[wid]["������"], v[2]) and WAR.Person[wid]["����"] == false then
							def_gain = def_gain + v[3]
						end
					end
				end
			end
			--�����Ṧ�ӳ�
			for i,v in pairs(CC.AddSpd) do
				if match_ID(id, v[1]) then
					for wid = 0, WAR.PersonNum - 1 do
						if match_ID(WAR.Person[wid]["������"], v[2]) and WAR.Person[wid]["����"] == false then
							agi_gain = agi_gain + v[3] 
						end
					end
				end
			end
		end

	str_gain = str_gain + tmp1	
	def_gain = def_gain + tmp2
	agi_gain = agi_gain + tmp3
	local bz1 = "��"
	local bz2 = "��"
	local bz3 = "��"
		--DrawAttrib("������", C_BLACK, PinkRed)
		DrawString(x1 - size * 8+15, y1*19+17, p["������"], C_CYGOLD, size*0.7)	
		if str_gain <= -1 then
			str_gain = -str_gain
			bz1 = "��"		
		end	
		DrawString(x1 - size * 8+50, y1*19+17, bz1, M_Yellow, size*0.7)
		DrawString(x1 - size * 8+70,  y1*19+17, str_gain, C_CYGOLD, size*0.7)			
		
		--DrawAttrib("������", C_BLACK, PinkRed)
		DrawString(x1 - size * 8+15, y1*19+40, p["������"], C_CYGOLD, size*0.7)		

		if def_gain <= -1 then
		   def_gain = -def_gain
           bz2 = "��"				
		end	
	    DrawString(x1 - size * 8+50, y1*19+40, bz2 ,  M_Yellow, size*0.7)
		DrawString(x1 - size * 8+70, y1*19+40, def_gain, C_CYGOLD, size*0.7)
		
		DrawString(x1 - size * 8+15, y1*19+65, p["�Ṧ"], C_CYGOLD, size*0.7)		
		--DrawAttrib("�Ṧ", C_BLACK, PinkRed)
		if agi_gain <= -1 then
		agi_gain = -(agi_gain)
		 bz3 = "��"		
		end
		DrawString(x1 - size * 8+50,y1*19+65, bz3,  M_Yellow, size*0.7)	
			DrawString(x1 - size * 8+70, y1*19+65, agi_gain, C_CYGOLD, size*0.7)	
		local aay = 10
		--��������
		DrawString(x1 - size * 8+15, y1*19+100, p["ȭ�ƹ���"], C_CYGOLD, size*0.7)
		DrawString(x1 - size * 8+15, y1*19+112+aay, p["ָ������"], C_CYGOLD, size*0.7)	
		DrawString(x1 - size * 8+15, y1*19+134+aay, p["��������"], C_CYGOLD, size*0.7)	
		DrawString(x1 - size * 8+15, y1*19+155+aay, p["ˣ������"], C_CYGOLD, size*0.7)	
		DrawString(x1 - size * 8+15, y1*19+178+aay, p["�������"], C_CYGOLD, size*0.7)	
					
		--DrawAttrib("ȭ�ƹ���", C_BLACK, C_CYGOLD)
		--DrawAttrib("ָ������", C_BLACK, C_CYGOLD)
		--DrawAttrib("��������", C_BLACK, C_CYGOLD)
		--DrawAttrib("ˣ������", C_BLACK, C_CYGOLD)
		--DrawAttrib("�������", C_BLACK, C_CYGOLD)
		--DrawAttrib("��������", C_BLACK, C_CYGOLD)
	   

	   --����������
      
	  local a3i =x1 - size * 8+10
		local a3x = size*6

		DrawString(a3i+a3x,y1*19+97, Person_LJ(id), C_CYGOLD, size*0.7)
		DrawString(a3i+a3x, y1*19+118, Person_BJ(id), C_CYGOLD, size*0.7)
		DrawString(a3i+a3x, y1*19+130+aay, p["��������"], C_CYGOLD, size*0.7)	
		DrawString(a3i+a3x, y1*19+153+aay, p["��������"], C_CYGOLD, size*0.7)	
		DrawString(a3i+a3x, y1*19+175+aay, p["�ⶾ����"], C_CYGOLD, size*0.7)
		if tmp6 > -1 then
		DrawString(a3i+a3x+35, y1*19+175+aay, "�� " , M_Red, size*0.7)
		DrawString(a3i+a3x+55, y1*19+175+aay, tmp6, C_CYGOLD, size*0.7)		
		else
			tmp6 = -tmp6
			DrawString(a3i+a3x+35, y1*19+175+aay, "�� " , M_DarkOliveGreen, size*0.7)
			DrawString(a3i+a3x+55, y1*19+175+aay, tmp6, C_CYGOLD, size*0.7)			
		end			
	--DrawString(x1 + size * 4 + 75, y1 + h * (i), "����", C_BLACK, size)	
	--DrawString(x1, y1 + h * (i), "����", C_BLACK, size)
	--	DrawAttrib("�ⶾ����", C_BLACK, C_CYGOLD)
	--	DrawAttrib("��������", C_BLACK, C_CYGOLD)
	--	DrawAttrib("��������", C_BLACK, C_CYGOLD)			
		--i = 0
		--x1 = dx + size + 1-20+180
		--y1 = size*2-30  
	--	DrawAttrib("ҽ������", C_BLACK, C_CYGOLD)
	--	DrawAttrib("�ö�����", C_BLACK, C_CYGOLD)
    --   DrawAttrib("��ս", C_BLACK, C_CYGOLD)
	local aay=size*5
     DrawString(x1 - size * 2+10, y1*19+17,p["ҽ������"], C_CYGOLD, size*0.7)
		if tmp4 > -1 then
		DrawString(x1 - size * 2+10+35, y1*19+17, "�� " , M_Red, size*0.7)
		DrawString(x1 - size * 2+10+55, y1*19+17, tmp4, C_CYGOLD, size*0.7)		
		else
			tmp4 = -tmp4
			DrawString(x1 - size * 2+10+35, y1*19+17, "�� " , M_DarkOliveGreen, size*0.7)
			DrawString(x1 - size * 2+10+55, y1*19+17, tmp4, C_CYGOLD, size*0.7)			
		end		
     DrawString(x1 - size * 2+10, y1*19+40, p["�ö�����"], C_CYGOLD, size*0.7)	
	 	if tmp5 > -1 then
		DrawString(x1 - size * 2+10+35, y1*19+40, "�� " , M_Red, size*0.7)
		DrawString(x1 - size * 2+10+55, y1*19+40, tmp5, C_CYGOLD, size*0.7)		
		else
			tmp5 = -tmp5
			DrawString(x1 - size * 2+10+35, y1*19+40, "�� " , M_DarkOliveGreen, size*0.7)
			DrawString(x1 - size * 2+10+55, y1*19+40, tmp5, C_CYGOLD, size*0.7)			
		end	
     DrawString(x1 - size * 2+10, y1*19+64, p["��������"], C_CYGOLD, size*0.7)	
	 	if tmp7 > -1 then
		DrawString(x1 - size * 2+10+35, y1*19+64, "�� " , M_Red, size*0.7)
		DrawString(x1 - size * 2+10+55, y1*19+64, tmp7, C_CYGOLD, size*0.7)		
		else
			tmp7 = -tmp7
			DrawString(x1 - size * 2+10+35, y1*19+64, "�� " , M_DarkOliveGreen, size*0.7)
			DrawString(x1 - size * 2+10+55, y1*19+64, tmp7, C_CYGOLD, size*0.7)			
		end		 
		--������
    local jqz = 0
	local jqz0 = 8
	local jqz1 = 0
	local jqz3 = 0
	local x = JY.Person[id]["�Ṧ"]
	local jqz2 = 0
    local y = JY.Person[id]["����"]	
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
	--DrawString(x1, y1 + h * (i), "����", C_BLACK, size)
	--DrawString(x1 + size*3-2 , y1 + h * (i),jqz, C_CYGOLD, size)
	--	DrawAttrib("��ѧ��ʶ", C_BLACK, C_CYGOLD)
	--	DrawAttrib("ʵս", C_BLACK, C_CYGOLD)		

	DrawString(x1 + size*4 , y1*19+17,p["��ѧ��ʶ"], C_CYGOLD, size*0.7)
    DrawString(x1 + size*4 , y1*19+39,p["ʵս"], C_CYGOLD, size*0.7)
	DrawString(x1 + size*4 , y1*19+60,jqz, C_CYGOLD, size*0.7)	
		--����
		--DrawString(x1 + size * 4 + 75, y1 + h * (i), "����", C_BLACK, size)
     local hb = nil
	if p["���һ���"] == 1 then
		hb = "��"
		else
		hb = "��"
		end
	DrawString(x1 + size*4 , y1*19+96, hb, C_CYGOLD, size*0.7)
	
	DrawString(x1+size+10 , y1*19+96+70, "����", C_CYGOLD, size*0.7)
	local thingid = p["������Ʒ"]
		if thingid > 0 then
			--lib.PicLoadCache(2, p["������Ʒ"] * 2, x1 + size*4, y1*19+96-100, 1)
            DrawString(x1 + size * 3, y1*19+96+70, JY.Thing[thingid]["����"], M_DeepSkyBlue, size*0.7)			
			i = i + 1
			local n = TrainNeedExp(id)
			if n < math.huge then
				DrawString(x1 + size * 4-40, y1*19+96+90, string.format("%5d/%5d", p["��������"], n), C_CYGOLD, size*0.7)
			else
				DrawString(x1 + size * 4-40,  y1*19+96+90, string.format("%5d/===", p["��������"]), C_CYGOLD, size*0.7)
			end
		else
	--DrawString(x1 + size * 6 + 108, y1 + h * (i), hb, PinkRed, size)
	--DrawString(x1 + size*4 , y1*19+60, "����", C_CYGOLD, size*0.7)


		--[[�ж����ң�100-����
		local hb = 0 
		local zyjl = 80 - p["����"]
		if zyjl < 0 then
			zyjl = 0
		end
		local zyjl = 0
		--�ܲ�ͨ100%
		if id == 64 then
			zyjl = 100
          end
		--����80%
		if id == 55 then
			zyjl = 80
          end
		--С��Ů70%
		if id == 59 then
			zyjl = 70
          end			
		--���������Ѻ�70%
		if id == 631 and p["���˾���"] > 0 then
			zyjl = 70
          end
		--�ܲ�֧ͨ����ɺ�����+20%
		if id == 0 and JY.Person[64]["Ʒ��"] == 80 then
			zyjl = zyjl + 20
          end	
        if p["���һ���"] == 1 then
		   hb = zyjl
		  end]]
 	 

		--���� ����
		
---------------------------------------------------------
	--	DrawString(x1, y1 + h * (i), "����", C_BLACK, size)
	--	DrawString(x1 + size * 2 + 10, y1 + h * (i), p["����"], PinkRed, size)
	--	DrawString(x1 + size * 4 + 75, y1 + h * (i), "����", C_BLACK, size)
	--	DrawString(x1 + size * 6 + 108, y1 + h * (i), p["��������"], PinkRed, size)
	--	i = i + 1


		--���ˣ��ж�
		--i = i + 1
		--DrawString(x1, y1 + h * (i), "����", C_BLACK, size)
		--DrawString(x1 + size * 2 + 10, y1 + h * (i), p["���˳̶�"], PinkRed, size)
		--DrawString(x1 + size * 4 + 75, y1 + h * (i), "�ж�", C_BLACK, size)
		--DrawString(x1 + size * 6 + 108, y1 + h * (i), p["�ж��̶�"], M_Olive, size)

		

	  --����ֵ
	  i = i + 1
		DrawString(x1-130, y1 + 12*h * (i)-40, "����", C_CYGOLD, size*0.8)
		local kk = nil
		if p["�ȼ�"] >= 30 then
			kk = "   ="
		else
			kk = 2 * (p["����"] - CC.Exp[p["�ȼ�"] - 1])
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
		
		--�ȼ�
		DrawString(x1-size *4, y1 + 12*h * (i)-40, kk, C_CYGOLD, size*0.8)
		local tmp = nil
		if CC.Level <= p["�ȼ�"] then
			tmp = "="
		else
			tmp = 2 * (CC.Exp[p["�ȼ�"]] - CC.Exp[p["�ȼ�"] - 1])
		end
		DrawString(x1-size *2, y1 + 12*h * (i)-40, "/" .. tmp, C_CYGOLD, size*0.8)
		end
---------------------------------------------------------------
		--�����п�ʼ
		x1 = dx*2 - size*2-30
		y1 = size*2+30
		i = 0

		
		local T = {"һ", "��", "��", "��", "��", "��", "��", "��", "��", "ʮ", "��"}
	    local SortingNum = {"01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"} 	
		for j = 1, CC.Kungfunum do
			i = i + 1
			local wugong = p["�书" .. j]
			if wugong > 0 then
				lib.LoadPNG(1, 1005 * 2 , x1 -38, y1 + h * (i), 1)
				DrawString(x1 -34, y1 + h * (i)+5, SortingNum[j], C_WHITE, CC.FontSMALL)
				local level = math.modf(p["�书�ȼ�" .. j] / 100) + 1
				if p["�书�ȼ�" .. j] == 999 then
					level = 11
				end
				DrawString(x1, y1 + h * (i), string.format("%s", JY.Wugong[wugong]["����"]), M_Orange, size*0.9)
				if p["�书�ȼ�" .. j] > 900 then
					lib.SetClip(x1, y1 + h * 1, x1 + size + string.len(JY.Wugong[wugong]["����"]) * size * (p["�书�ȼ�" .. j] - 900) / 200, y1 + h * (i) + h*0.8)
					DrawString(x1, y1 + h * (i), string.format("%s", JY.Wugong[wugong]["����"]), M_Orange, size*0.9)
					lib.SetClip(0, 0, 0, 0)
				end
				--�ȼ�
				DrawString(x1 + size * 6 -6+75, y1 + h * (i), T[level], C_CYGOLD, size*0.9)
				--����
				local nl = nil
		        nl = math.modf((level + 3) / 2) * JY.Wugong[wugong]["������������"]
				DrawString(x1 + size * 6 -6, y1 + h * (i), nl, C_CYGOLD, size*0.9)
				--������ؼ�����ʾ�ؼ�
				if secondary_wugong(wugong) then
					DrawString(x1 + size * 8 -14+90, y1 + h * (i), "�ؼ�", M_PaleGreen, size*0.9)
				--������ǣ�����ʾ�书����
				else
					--����
					local wugongwl = get_skill_power(id, wugong, level)
					--�����츳���⹦����ɫ
					if Given_WG(id, wugong) or Given_NG(id, wugong) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), PinkRed, size*0.9)
					--�������������ɫ
					elseif wugong >= 30 and wugong <= 34 and WuyueJF(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)
					--�����黭�����ɫ
					elseif (wugong == 73 or wugong == 72 or wugong == 84 or wugong == 142) and QinqiSH(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)
					--�һ����������ɫ
					elseif (wugong == 12 or wugong == 18 or wugong == 38) and TaohuaJJ(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)
					--�������������ɫ
					elseif (wugong == 3 or wugong == 9 or wugong == 5 or wugong == 21 or wugong == 118) and ZiqiTL(id) then
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), LightPurple, size*0.9)						
					else
						DrawString(x1 + size * 8 -13+90, y1 + h * (i), string.format("%4d",wugongwl), RGB(208, 152, 208), size*0.9)
					end
				end
			end
		end
		i = 17

		if p["�츳�ڹ�"] ~= 0 then
		    local T = {"�ͽ�", "�н�", "�߽�", "����"}
			local str = ""
			if nglw(id,p["�츳�ڹ�"])<1 then
			str = "δ����"
			else
			str = T[nglw(id,p["�츳�ڹ�"])]
			end
			DrawString(x1+60-9+30, y1 + h * 17-8, JY.Wugong[p["�츳�ڹ�"]]["����"].."."..str, TG_Red_Bright, size*0.6)
			i = i + 1
		end
		if p["�츳�Ṧ"] ~= 0 then
			local T = {"����", "����"}
			local str = ""
			if qglw(id,p["�츳�Ṧ"])<1 then
			str = "δ����"
			else
			str = T[qglw(id,p["�츳�Ṧ"])]
			end
			DrawString(x1 + size*5-10+80+30, y1 + h * 17-8, JY.Wugong[p["�츳�Ṧ"]]["����"].."."..str, M_DeepSkyBlue, size*0.6)
			i = i + 1
		end
		if p["�츳�⹦1"] ~= 0 then
			local T = {"�ͽ�", "�н�", "�߽�"}
			local str = ""
			if wglw(id,p["�츳�⹦1"])<1 then
			str = "δ����"
			else
			str = T[wglw(id,p["�츳�⹦1"])]
			end
			DrawString(x1+60-9+30, y1 + h * 18-13, JY.Wugong[p["�츳�⹦1"]]["����"].."."..str, C_GOLD, size*0.6)
			i = i + 1
		end
		if p["�츳�⹦2"] ~= 0 then
			local T = {"�ͽ�", "�н�", "�߽�"}
			local str = ""
			if wglw(id,p["�츳�⹦2"])<1 then
			str = "δ����"
			else
			str = T[wglw(id,p["�츳�⹦2"])]
			end
			DrawString(x1 + size*5-10+80+30, y1 + h * 18-13, JY.Wugong[p["�츳�⹦2"]]["����"].."."..str, C_GOLD, size*0.6)
		end
		
		x1 = dx - size *3 -10
		i = 19
		if case == nil then
			if JY.Status ~= GAME_WMAP then
				DrawString(x1-size*5, y1 + h * (i)+2, "���¼����� ������ʾ�����츳 ESC�˳�", M_PaleTurquoise, size*0.7)
			else
				DrawString(x1-size*5, y1 + h * (i)+2, "���¼����� ������ʾ�����츳 ESC�˳�", Snow3, size*0.7)
			end
		else
			DrawString(x1-size*5, y1 + h * (i)+2, "���¼�ѡ������ ���Ҽ�����/���� �س���ȷ�ϼӵ�", Snow3, size*0.7)
		end
	--������ʾ
		if dl then
			lib.PicLoadCache(97,(dl+AniFrame)*2,diyx/5+ax*2,diyy/4+ax*5+130) 	
		end
-------------------------------------
--������ʾ ��	
		x1 = dx-450
		y1 = size*2+360
		i = 3
        size = CC.FontSmall4*0.7	
DrawAttrib("������", C_WSTM, C_WSTM)
DrawAttrib("������", C_WSTM, C_WSTM)
DrawAttrib("�Ṧ", C_WSTM, C_WSTM)

DrawAttrib("ȭ�ƹ���", C_WSTM, C_WSTM)
DrawAttrib("ָ������", C_WSTM, C_WSTM)
DrawAttrib("��������", C_WSTM, C_WSTM)
DrawAttrib("ˣ������", C_WSTM, C_WSTM)
DrawAttrib("�������", C_WSTM, C_WSTM)
DrawAttrib("��������", C_WSTM, C_WSTM)
DrawAttrib("�ⶾ����", C_BLACK, C_CYGOLD)
DrawAttrib("��������", C_BLACK, C_CYGOLD)
DrawAttrib("��������", C_BLACK, C_CYGOLD)
DrawAttrib("ҽ������", C_WHITE, C_GOLD)
DrawAttrib("�ö�����", C_BLACK, C_CYGOLD)
DrawAttrib("��ѧ��ʶ", C_BLACK, C_CYGOLD)
DrawAttrib("ʵս", C_BLACK, C_CYGOLD)
------------------------------------------------
	--�ڶ�ҳ
elseif page == 2 then
		local y2 = y1
		lib.LoadPNG(1, 1006 * 2 , 0 , 0, 1)
		--���·��ļ�ͷ��ʾ
		if istart > 1 then
			DrawString(x1-size*2-7, y1+h, "��", C_CYGOLD, size)
		end
		if istart < max_row then
			DrawString(x1-size*2-7, y1+18*h+12, "��", C_CYGOLD, size)
		end
		local function strcolor_switch(s)
			local Color_Switch={{"��",PinkRed},{"��",C_GOLD},{"��",C_BLACK},{"��",C_WHITE},{"��",C_ORANGE},{"��",LimeGreen},{"��",M_DeepSkyBlue},{"��",Violet}}
			for i = 1, 8 do
				if Color_Switch[i][1] == s then
					return Color_Switch[i][2]
				end
			end
		end
		x1 = x1 - size
		DrawString(x1+size*14+20, y1-13, p["����"], C_CYGOLD, size)
		DrawString(x1+size*7, y1+23, "���¼���� ��������״̬ҳ�� ��������AI�趨 ESC�˳�", C_CYGOLD, size*0.6)
		local row = 1
		if TFJS[tfid] ~= nil then
			y2 = y2 + 53
			for i = istart, #TFJS[tfid] do
				local tfstr = TFJS[tfid][i]
				--������ʾ����
				if row < 20 then
					if string.sub(tfstr,1,2) == "��" then
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
		--���Ƕ�����ʾ
		if id == 0 then
			if TFJS[tfid] == nil then
				y2 = y2 + 13
			end
			for i = 1, #ZJZSJS do
				local zjstr = ZJZSJS[i]
				--������ʾ����
				if row < 20 then
					if string.sub(zjstr,1,2) == "��" then
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
	--AI�趨ҳ��
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
		DrawString(x1+size*13+7+20, y1-13, p["����"], C_CYGOLD, size)
	--	DrawString(x1+size*5, y1+23, "���¼���� ��������״̬ҳ�� ��������AI�趨 ESC�˳�", C_CYGOLD, size*0.6)

		y1 = y1 + h * 3
		local AI_s1_name = {"��Ϊģʽ","����ʹ��","�����ڹ�","�����Ṧ","�Ƿ��ҩ","������ֵ","������ֵ","������ֵ","����AI"}
		for j = 1, 9 do
			local color = LimeGreen
			if AI_s1 == j then
				color = C_GOLD
				DrawString(x1-size-2+10, y1 + h * (j-1)*2, "��", color, size*0.9)
			end
			if JY.Status == GAME_WMAP and (j == 3 or j == 4) then
				color = M_DimGray
			end
			DrawString(x1+10, y1 + h * (j-1)*2, AI_s1_name[j], color, size*0.9)
		end
		local AI_1_s2_name = {"�Զ�����","�Զ�����","ԭ����Ϣ","������Ϣ"}
		for j = 1, 4 do
			local color = C_WHITE
			if AI_s2[1] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_1_s2_name[j], color, size*0.9)
		end
		i = i + 2
		if p["����ʹ��"] == 0 then
			DrawString(x1+h*5, y1 + h * (i), "δ�趨", C_WHITE, size*0.9)
		else
			DrawString(x1+h*5, y1 + h * (i), JY.Wugong[p["����ʹ��"]]["����"], C_ORANGE, size*0.9)
		end
		i = i + 2
		if p["�����ڹ�"] == 0 then
			DrawString(x1+h*5, y1 + h * (i), "δ�趨", wg_color1, size*0.9)
		else
			DrawString(x1+h*5, y1 + h * (i), JY.Wugong[p["�����ڹ�"]]["����"], wg_color2, size*0.9)
		end
		i = i + 2
		if p["�����Ṧ"] == 0 then
			DrawString(x1+h*5, y1 + h * (i), "δ�趨", wg_color1, size*0.9)
		else
			DrawString(x1+h*5, y1 + h * (i), JY.Wugong[p["�����Ṧ"]]["����"], wg_color2, size*0.9)
		end
		i = i + 2
		local AI_5_s2_name = {"��","��"}
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
		local AI_9_s2_name = {"��","��"}
		for j = 1, 2 do
			local color = C_WHITE
			if AI_s2[9] == j then
				color = C_ORANGE
			end
			DrawString(x1+h*5*j, y1 + h * (i), AI_9_s2_name[j], color, size*0.9)
		end
		
		if AI_menu_selected == 1 or AI_menu_selected > 4 then
			DrawString(x1+h*5*(AI_s2[AI_menu_selected])-h, y1 + h * (AI_menu_selected-1)*2+2, "��", C_ORANGE, size*0.99)
		end
		
		if AI_menu_selected > 1 and AI_menu_selected < 5 then
			DrawString(x1+h*4, y1 + h * (AI_menu_selected-1)*2+2, "��", C_ORANGE, size*0.99)
			DrawString(x1+h*9+12, y1 + h * (AI_menu_selected-1)*2+2, "��", C_ORANGE, size*0.9)
		end

		x1 = dx - size *5 -15
		y1 = size*2
		i = 19
		if AI_menu_selected > 0 then
			x1 = dx - 15
			DrawString(x1+size*2, y1, "���Ҽ�ѡ�� �س�/ESC��ȷ��", C_CYGOLD, size*0.6)
		else
			DrawString(x1+size*2, y1, "���¼�ѡ�� �س���ȷ�� ���������츳ҳ�� ESC�˳�", C_CYGOLD, size*0.6)
		end
	end
end

--�������������ɹ���Ҫ�ĵ���
--id ����id
function TrainNeedExp(id)         --��������������Ʒ�ɹ���Ҫ�ĵ���
    local thingid=JY.Person[id]["������Ʒ"];
	local r =0;
	if thingid >= 0 then
        if JY.Thing[thingid]["�����书"] >=0 then
            local level=0;          --�˴���level��ʵ��level-1������û���书�r������һ����һ���ġ�
			for i =1,CC.Kungfunum do               -- ���ҵ�ǰ�Ѿ������书�ȼ�
			    if JY.Person[id]["�书" .. i]==JY.Thing[thingid]["�����书"] then
                    level=math.modf(JY.Person[id]["�书�ȼ�" .. i] /100);
					break;
                end
            end
			if level <9 then
                r=math.modf((5-math.modf(JY.Person[id]["����"]/25))*JY.Thing[thingid]["�辭��"]*(level+1)*0.5);
			else
                r=math.huge;
			end
		else
            r=(5-math.modf(JY.Person[id]["����"]/25))*JY.Thing[thingid]["�辭��"];
		end
	end
    return r;
end

--ҽ�Ʋ˵�
function Menu_Doctor()       --ҽ�Ʋ˵�
    DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"˭Ҫʹ��ҽ��",C_WHITE,CC.DefaultFont);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;
    DrawStrBox(CC.MainSubMenuX,nexty,"ҽ������",C_ORANGE,CC.DefaultFont);

	local menu1={};
	for i=1,CC.TeamNum do
        menu1[i]={"",nil,0};
		local id=JY.Base["����" .. i]
        if id >=0 then
            if JY.Person[id]["ҽ������"]>=20 then
                 menu1[i][1]=string.format("%-10s%4d",JY.Person[id]["����"],JY.Person[id]["ҽ������"]);
                 menu1[i][3]=1;
            end
        end
	end

    local id1,id2;
	nexty=nexty+CC.SingleLineHeight;
    local r=ShowMenu(menu1,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);

    if r >0 then
	    id1=JY.Base["����" .. r];
        Cls(CC.MainSubMenuX,CC.MainSubMenuY,CC.ScreenW,CC.ScreenH);
        DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"Ҫҽ��˭",C_WHITE,CC.DefaultFont);
        nexty=CC.MainSubMenuY+CC.SingleLineHeight;

		local menu2={};
		for i=1,CC.TeamNum do
			menu2[i]={"",nil,0};
			local id=JY.Base["����" .. i]
			if id>=0 then
				 menu2[i][1]=string.format("%-10s%4d/%4d",JY.Person[id]["����"],JY.Person[id]["����"],JY.Person[id]["�������ֵ"]);
				 menu2[i][3]=1;
			end
		end

		local r2=ShowMenu(menu2,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE,C_WHITE);

		if r2 >0 then
	        id2=JY.Base["����" .. r2];
            local num=ExecDoctor(id1,id2);
			if num>0 then
                AddPersonAttrib(id1,"����",-2);
			end
            DrawStrBoxWaitKey(string.format("%s �������� %d",JY.Person[id2]["����"],num),C_ORANGE,CC.DefaultFont);
		end
	end

	Cls();
    return 0;
end

--�ⶾ
function Menu_DecPoison()         --�ⶾ
    DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"˭Ҫ���˽ⶾ",C_WHITE,CC.DefaultFont);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;
    DrawStrBox(CC.MainSubMenuX,nexty,"�ⶾ����",C_ORANGE,CC.DefaultFont);

	local menu1={};
	for i=1,CC.TeamNum do
        menu1[i]={"",nil,0};
		local id=JY.Base["����" .. i]
        if id>=0 then
            if JY.Person[id]["�ⶾ����"]>=20 then
                 menu1[i][1]=string.format("%-10s%4d",JY.Person[id]["����"],JY.Person[id]["�ⶾ����"]);
                 menu1[i][3]=1;
            end
        end
	end

    local id1,id2;
 	nexty=nexty+CC.SingleLineHeight;
    local r=ShowMenu(menu1,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);

    if r >0 then
	    id1=JY.Base["����" .. r];
         Cls(CC.MainSubMenuX,CC.MainSubMenuY,CC.ScreenW,CC.ScreenH);
        DrawStrBox(CC.MainSubMenuX,CC.MainSubMenuY,"��˭�ⶾ",C_WHITE,CC.DefaultFont);
		nexty=CC.MainSubMenuY+CC.SingleLineHeight;

        DrawStrBox(CC.MainSubMenuX,nexty,"�ж��̶�",C_WHITE,CC.DefaultFont);
	    nexty=nexty+CC.SingleLineHeight;

		local menu2={};
		for i=1,CC.TeamNum do
			menu2[i]={"",nil,0};
			local id=JY.Base["����" .. i]
			if id>=0 then
				 menu2[i][1]=string.format("%-10s%5d",JY.Person[id]["����"],JY.Person[id]["�ж��̶�"]);
				 menu2[i][3]=1;
			end
		end

		local r2=ShowMenu(menu2,CC.TeamNum,0,CC.MainSubMenuX,nexty,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
		if r2 >0 then
	        id2=JY.Base["����" .. r2];
            local num=ExecDecPoison(id1,id2);
            DrawStrBoxWaitKey(string.format("%s �ж��̶ȼ��� %d",JY.Person[id2]["����"],num),C_ORANGE,CC.DefaultFont);
		end
	end
    Cls();
    ShowScreen();
    return 0;
end

--�ⶾ
--id1 �ⶾid2, ����id2�ж����ٵ���
function ExecDecPoison(id1,id2)     --ִ�нⶾ
    local add=JY.Person[id1]["�ⶾ����"];
    local value=JY.Person[id2]["�ж��̶�"];

    if value > add+20 then
        return 0;
	end

	if WAR.POISON2[id2]~=nil and JY.Status == GAME_WMAP  then
       return 0;
	end

 	add=limitX(math.modf(add/3)+Rnd(10)-Rnd(10),0,value);
    return -AddPersonAttrib(id2,"�ж��̶�",-add);
end


--��ʾ��Ʒ�˵�
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

	local w=CC.ThingPicWidth*xnum+(xnum-1)*CC.ThingGapIn+2*CC.ThingGapOut;  --������
	local h=CC.ThingPicHeight*ynum+(ynum-1)*CC.ThingGapIn+2*CC.ThingGapOut; --��Ʒ���߶�

	local dx=(CC.ScreenW-w)/2;
	local dy=(CC.ScreenH-h-2*(CC.ThingFontSize+2*CC.MenuBorderPixel+8))/2-CC.ThingFontSize-11;

	local y1_1,y1_2,y2_1,y2_2,y3_1,y3_2;                  --���ƣ�˵����ͼƬ��Y����

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
				local id=y*xnum+x+xnum*cur_line         --��ǰ��ѡ����Ʒ
				local boxcolor;
				--ѡ����Ʒ��ɫ
				if x==cur_x and y==cur_y then
					boxcolor=S_Yellow;
					if thing[id]>=0 then
						cur_thing=thing[id];
						local str=JY.Thing[thing[id]]["����"];
						--װ���ȼ���ʾ
						if JY.Thing[thing[id]]["װ������"] > -1 then
							str = str .." LV."..JY.Thing[thing[id]]["װ���ȼ�"]
						end
						if JY.Thing[thing[id]]["����"]==1 or JY.Thing[thing[id]]["����"]==2 then
							if JY.Thing[thing[id]]["ʹ����"] >=0 then
								str=str .. "(" .. JY.Person[JY.Thing[thing[id]]["ʹ����"]]["����"] .. ")";
							end
						end
						str=string.format("%s X %d",str,thingnum[id]);
						local str2=JY.Thing[thing[id]]["��Ʒ˵��"];
						if thing[id]==182 then
							str2=str2..string.format('(��%3d,%3d)',JY.Base['��X'],JY.Base['��Y'])
						end
						DrawString(dx+CC.ThingGapOut,y1_1+CC.MenuBorderPixel,str,C_GOLD,CC.ThingFontSize);
						DrawString(dx+CC.ThingGapOut,y2_1+CC.MenuBorderPixel,str2,C_ORANGE,CC.ThingFontSize);
						local myfont=CC.FontSmall
						local mx, my = dx + 4 * myfont, y3_2 + 2
						local myflag=0
						local myThing=JY.Thing[thing[id]]
								
						--��Ʒ˵����ʾ
						local function drawitem(ss,str,news)
							local color = C_GOLD
							local mys
							if str==nil then
								mys=ss
							elseif myThing[ss]~=0 then
								if news==nil then
									if myflag==0 then
										--�޾Ʋ�����װ������ֵ��ȼ��仯
										if myThing["װ������"] > -1 then
											local attr_gain = 0;
											if myThing[ss] > 0 then
												attr_gain = myThing[ss]*10 + myThing[ss]*(myThing["װ���ȼ�"]-1)*2
											elseif myThing[ss] < 0 then
												attr_gain = myThing[ss]*10 - myThing[ss]*(myThing["װ���ȼ�"]-1)*2
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
								--������ɫ
								if myThing[ss]==1 and ss=="����������" then
									color = RGB(236, 200, 40)
								elseif myThing[ss]==2 and ss=="����������" then
									color = RGB(236, 236, 236)
								end
							elseif myThing[ss]==0 and ss=="����������" then
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
					  
						--����̩̹��ͬ�����϶�
						if myThing["�����书"] > 0 then
							local kfname = "ϰ��:" .. JY.Wugong[myThing["�����书"]]["����"]
							DrawString(mx+CC.MenuBorderPixel, my+CC.MenuBorderPixel, kfname, C_GOLD, myfont)
							mx = mx + myfont * string.len(kfname) / 2 + 12
						end
								
						if myThing['����']>0 then
							drawitem('������','����')
							drawitem('���������ֵ','������ֵ')
							drawitem('���ж��ⶾ','�ж�')
							drawitem('������','����')
							if myThing['�ı���������']==2 then
								drawitem('�������Ա�Ϊ����')
							end
							drawitem('������','����')
							drawitem('���������ֵ','������ֵ')
							drawitem('�ӹ�����','����')
							drawitem('���Ṧ','�Ṧ')
							drawitem('�ӷ�����','����')
							drawitem('��ҽ������','ҽ��')
							drawitem('���ö�����','�ö�')
							drawitem('�ӽⶾ����','�ⶾ')
							drawitem('�ӿ�������','����')
							drawitem('��ȭ�ƹ���','ȭ��')
							drawitem('��ָ������','ָ��')
							drawitem('����������','����')
							drawitem('��ˣ������','ˣ��')
							drawitem('���������','����')
							drawitem('�Ӱ�������','����')
							drawitem('����ѧ��ʶ','�䳣')
							drawitem('��Ʒ��','Ʒ��')
							drawitem('�ӹ�������','����',{[0]='��','��'})
							drawitem('�ӹ�������','����')
							
							--����װ�������ӳ�
							for i,v in ipairs(CC.ExtraOffense) do
								if v[1] == thing[id] then
									DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,"����ǿ��:"..JY.Wugong[v[2]]["����"].."+"..v[3],PinkRed,myfont)
								end
							end
							
							if mx~=dx or my~=y3_2+2 then
								DrawString(dx+CC.MenuBorderPixel, y3_2 + 2+CC.MenuBorderPixel, " Ч��:", LimeGreen, myfont)
							end
						end
						
						--װ������ؼ���
						if myThing['����']==1 or myThing['����']==2 then
							if mx~=dx then
								mx=dx+4*myfont
								my=my+myfont+3
							end
							myflag=1
							local my2=my
							if myThing['����������']>-1 then
								drawitem('����:'..JY.Person[myThing['����������']]['����'])
							end
							drawitem('����������','����',{[0]='��','��','����'})
							drawitem('������','����')
							drawitem('�蹥����','����')
							drawitem('���Ṧ','�Ṧ')
							drawitem('���ö�����','�ö�')
							drawitem('��ҽ������','ҽ��')
							drawitem('��ⶾ����','�ⶾ')
							drawitem('��ȭ�ƹ���','ȭ��')
							drawitem('��ָ������','ָ��')
							drawitem('����������','����')
							drawitem('��ˣ������','ˣ��')
							drawitem('���������','����')
							drawitem('�谵������','����')
							--��ת����ʾ
							if thing[id] == 118 then
								local exstr = "��ϵ����ֵ֮��>=120 "
								local mylen = myfont * string.len(exstr) / 2 + 12
								DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,exstr,C_GOLD,myfont)
								mx=mx+mylen
							end
							--��������ʾ
							if thing[id] == 176 then
								local exstr = "����/ˣ��/������һ��>=70 "
								local mylen = myfont * string.len(exstr) / 2 + 12
								DrawString(mx+CC.MenuBorderPixel,my+CC.MenuBorderPixel,exstr,C_GOLD,myfont)
								mx=mx+mylen
							end
							drawitem('������','����')
							drawitem('�辭��','��������')
							if mx~=dx or my~=my2 then
								DrawString(dx+CC.MenuBorderPixel,my2+CC.MenuBorderPixel,' ����:',LimeGreen,myfont)
							end
						end
						
						--��Ч˵��
						if myThing['�Ƿ���Ч'] == 1 and (WPTX[thing[id]][myThing['װ���ȼ�']] ~= nil or myThing['װ������'] == -1) then
							if mx~=dx then
								mx=dx+4*myfont
								my=my+myfont+3
							end
							local my2=my
							if mx~=dx or my~=my2 then
								DrawString(dx+CC.MenuBorderPixel,my2+CC.MenuBorderPixel,' ��Ч:',C_RED,myfont)
							end
							if myThing['װ������'] > -1 then
								DrawString(dx+CC.MenuBorderPixel+myfont*4,my2+CC.MenuBorderPixel, WPTX[thing[id]][myThing['װ���ȼ�']], M_DeepSkyBlue,myfont)
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
				--�޾Ʋ������޸�ѡ���
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
		
		DrawString(CC.ScreenW-220,CC.ScreenH-40, "��F1�鿴��ϸ˵��", C_ORANGE,CC.Fontsmall)

		ShowScreen();
  	
		local keypress, ktype, mx, my = WaitKey(1)
		lib.Delay(CC.Frame);
		if keypress==VK_ESCAPE or ktype == 4 then
			cur_thing=-1;
			break;
		elseif keypress==VK_RETURN or keypress==VK_SPACE then
			break;
		--������Ʒ������˵��
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


--��������������
function Game_SMap()         --��������������
	if JY.Restart == 1 then
		return
	end
	
    DrawSMap();	
	--�޾Ʋ������·���ʾ
	if CC.ShowXY==1 then
        DrawString(10,CC.ScreenH-60,string.format("%s %d %d",JY.Scene[JY.SubScene]["����"],JY.Base["��X1"],JY.Base["��Y1"]) ,C_GOLD,CC.Fontsmall);
	end
		
	DrawTimer();
	
	JYZTB();
	
    ShowScreen();
    lib.SetClip(0, 0, 0, 0)
  
	local d_pass=GetS(JY.SubScene,JY.Base["��X1"],JY.Base["��Y1"],3);   --��ǰ·���¼�
	if d_pass>=0 then
		if d_pass ~=JY.OldDPass then     --�����ظ�����
			EventExecute(d_pass,3);       --·�������¼�
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
	local isout=0;                --�Ƿ���������
	if (JY.Scene[JY.SubScene]["����X1"] ==JY.Base["��X1"] and JY.Scene[JY.SubScene]["����Y1"] ==JY.Base["��Y1"]) or
		(JY.Scene[JY.SubScene]["����X2"] ==JY.Base["��X1"] and JY.Scene[JY.SubScene]["����Y2"] ==JY.Base["��Y1"]) or
		(JY.Scene[JY.SubScene]["����X3"] ==JY.Base["��X1"] and JY.Scene[JY.SubScene]["����Y3"] ==JY.Base["��Y1"]) then
		isout=1;
	end
	--�������ͼ
	if isout == 1 then
		--�޾Ʋ������޸���ֱ�ӷɽ�������������ڵ������������
		if JY.Base["��X"] == JY.Scene[JY.SubScene]["�⾰���X1"] and JY.Base["��Y"] == JY.Scene[JY.SubScene]["�⾰���Y1"] then
			--ѩɽҪ��������
			if JY.SubScene == 2 then
				JY.Base["��Y"] = JY.Base["��Y"] + 1
			--�츮Ҫ��������
			elseif JY.SubScene == 92 then
				JY.Base["��X"] = JY.Base["��X"] + 1
			else
				if JY.Base["�˷���"] == 0 then
					JY.Base["��Y"] = JY.Base["��Y"] - 1
				elseif JY.Base["�˷���"] == 1 then
					JY.Base["��X"] = JY.Base["��X"] + 1
				elseif JY.Base["�˷���"] == 2 then
					JY.Base["��X"] = JY.Base["��X"] - 1
				elseif JY.Base["�˷���"] == 3 then
					JY.Base["��Y"] = JY.Base["��Y"] + 1
				end
			end
		end
		--���̵ص�Ҫ��������
		if JY.SubScene == 13 then
			JY.Base["��X"] = 68
			JY.Base["��Y"] = 397
		end
		--�ɹŰ�Ҫ��������
		if JY.SubScene == 6 then
			JY.Base["��X"] = 49
			JY.Base["��Y"] = 111
		end
		JY.Status = GAME_MMAP
		lib.PicInit()
		CleanMemory()
		JY.MmapMusic = JY.Scene[JY.SubScene]["��������"]
		--���û�����ó������ֵĻ�
		if JY.MmapMusic < 0 then
			JY.MmapMusic = 25
		end
		Init_MMap()
		JY.SubScene = -1
		JY.oldSMapX = -1
		JY.oldSMapY = -1
		lib.DrawMMap(JY.Base["��X"], JY.Base["��Y"], GetMyPic())
		lib.GetKey()
		lib.ShowSlow(20,0)
		return
	end
    --�Ƿ���ת����������
    if JY.Scene[JY.SubScene]["��ת����"] >= 0 and JY.Base["��X1"] == JY.Scene[JY.SubScene]["��ת��X1"] and JY.Base["��Y1"] == JY.Scene[JY.SubScene]["��ת��Y1"] then
		local OldScene = JY.SubScene
		JY.SubScene = JY.Scene[JY.SubScene]["��ת����"]
		lib.ShowSlow(20, 1)
		if JY.Scene[OldScene]["�⾰���X1"] ~= 0 then
			JY.Base["��X1"] = JY.Scene[JY.SubScene]["���X"]
			JY.Base["��Y1"] = JY.Scene[JY.SubScene]["���Y"]
		else
			JY.Base["��X1"] = JY.Scene[JY.SubScene]["��ת��X2"]
			JY.Base["��Y1"] = JY.Scene[JY.SubScene]["��ת��Y2"]
		end
		Init_SMap(1)
		return 
	end

    local x,y;
    local direct = -1;
    local keypress, ktype, mx, my = lib.GetKey();
	--�ȼ����ϴβ�ͬ�ķ����Ƿ񱻰���
    for i = VK_RIGHT,VK_UP do
        if i ~= CC.PrevKeypress and lib.GetKeyState(i) ~=0 then
			keypress = i
		end
	end 
    --������ϴβ�ͬ�ķ���δ�����£��������ϴ���ͬ�ķ����Ƿ񱻰���
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
		elseif keypress==VK_SPACE or keypress==VK_RETURN then       --�ո񴥷��¼�
			if JY.Base["�˷���"]>=0 then
				local d_num=GetS(JY.SubScene,JY.Base["��X1"]+CC.DirectX[JY.Base["�˷���"]+1],JY.Base["��Y1"]+CC.DirectY[JY.Base["�˷���"]+1],3);
				if d_num>=0 then
					EventExecute(d_num,1);
					EventExecute(d_num,2);		--�y
				end
			end
		--�޾Ʋ�����ȫ�׿�ݼ� 7-30
	    elseif keypress == VK_S then	--�浵
			Menu_SaveRecord()
	    elseif keypress == VK_L then	--����
			Menu_ReadRecord()
		elseif keypress == VK_Z then	--״̬
			Cls()
			Menu_Status()
			--Duiwumb()
		elseif keypress == VK_E then	--��Ʒ
			Cls()
			Menu_Thing()
		elseif keypress == VK_F3 then	--������λ
			Cls()
			Menu_TZDY()
		elseif keypress == VK_F4 then	--����
			Cls()		
			Menu_WPZL()
		end
	elseif ktype == 3 then
	    AutoMoveTab = {[0]=0}
	    local x0 = JY.Base["��X1"]
		local y0 = JY.Base["��Y1"]
		
		local px=x0
		local py=y0
		if CONFIG.Zoom == 100 then
			--�޾Ʋ����������ڵ�ͼ�߽��Զ�Ѱ·���������
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
		
		if CONFIG.Zoom ~= 100 then		--�޾Ʋ�������֪��ʲôë�����������Ӿ�����ë��
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
	
	--�޾Ʋ������б���¼����꣬���Զ��ߵ�ǰ��һ��Żᴥ���¼�
	if CC.AutoMoveEvent[1] ~= 0 and 
	(JY.Base["��X1"] - 1 == CC.AutoMoveEvent[1] or JY.Base["��X1"] + 1 == CC.AutoMoveEvent[1] or JY.Base["��Y1"] - 1 == CC.AutoMoveEvent[2] or JY.Base["��Y1"] + 1 == CC.AutoMoveEvent[2]) then
		CC.AutoMoveEvent[0] = 1;		--�����������¼�
	end
    
    if AutoMoveTab[0] ~= 0 then			--����Զ��߶�
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
        x=JY.Base["��X1"]+CC.DirectX[direct+1];
        y=JY.Base["��Y1"]+CC.DirectY[direct+1];
        JY.Base["�˷���"]=direct;
		if JY.WalkCount == 1 then
			lib.Delay(90)
		end
    else
        x=JY.Base["��X1"];
        y=JY.Base["��Y1"];
    end

    JY.MyPic=GetMyPic();
    DtoSMap();
    if SceneCanPass(x,y)==true then          --�µ���������߹�ȥ
        JY.Base["��X1"]=x;
        JY.Base["��Y1"]=y;
    end

    JY.Base["��X1"]=limitX(JY.Base["��X1"],1,CC.SWidth-2);
    JY.Base["��Y1"]=limitX(JY.Base["��Y1"],1,CC.SHeight-2);
    
	--һЩ�µ��¼�
	NEvent(keypress)
end

--��������(x,y)�Ƿ����ͨ��
--����true,���ԣ�false����
function SceneCanPass(x,y)  --��������(x,y)�Ƿ����ͨ��
    local ispass=true;        --�Ƿ����ͨ��

    if GetS(JY.SubScene,x,y,1)>0 then     --������1����Ʒ������ͨ��
        ispass=false;
    end

    local d_data=GetS(JY.SubScene,x,y,3);     --�¼���4
    if d_data>=0 then
        if GetD(JY.SubScene,d_data,0)~=0 then  --d*����Ϊ����ͨ��
            ispass=false;
        end
    end

    if CC.SceneWater[GetS(JY.SubScene,x,y,0)] ~= nil then   --ˮ�棬���ɽ���
        ispass=false;
    end
    return ispass;
end

function DtoSMap()          ---D*�е��¼����ݸ��Ƶ�S*�У�ͬʱ������Ч����
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
				if p3<=p1 then     --������ֹͣ
					if JY.Mytick %100 > delay then
						p3=p3+1;
					end
				else
					if JY.Mytick % 4 ==0 then      --4�����Ķ�������һ��
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


function DrawSMap()         --�泡����ͼ
	local x0=JY.SubSceneX+JY.Base["��X1"]-1;    --��ͼ���ĵ�
    local y0=JY.SubSceneY+JY.Base["��Y1"]-1;

    local x=limitX(x0,12,45)-JY.Base["��X1"];
    local y=limitX(y0,12,45)-JY.Base["��Y1"];
	
	if CONFIG.Zoom == 100 then
		lib.DrawSMap(JY.SubScene,JY.Base["��X1"],JY.Base["��Y1"],x,y,JY.MyPic)
	else
		lib.DrawSMap(JY.SubScene,JY.Base["��X1"],JY.Base["��Y1"],JY.SubSceneX,JY.SubSceneY,JY.MyPic)
	end
end


-- ��ȡ��Ϸ����
-- id=0 �½��ȣ�=1/2/3 ����
--�������Ȱ����ݶ���Byte�����С�Ȼ���������Ӧ��ķ������ڷ��ʱ�ʱֱ�Ӵ�������ʡ�
--����ǰ��ʵ����ȣ����ļ��ж�ȡ�ͱ��浽�ļ���ʱ�������ӿ졣�����ڴ�ռ������
function LoadRecord(id)       -- ��ȡ��Ϸ����
    local zipfile=string.format('data/save/Save_%d',id)
    
    if id ~= 0 and ( existFile(zipfile) == false) then
		QZXS("�˴浵���ݲ�ȫ�����ܶ�ȡ����ѡ�������浵�����¿�ʼ");
		return -1;
	end
    
    Byte.unzip(zipfile, 'r.grp','d.grp','s.grp')

    local t1=lib.GetTime();

    --��ȡR*.idx�ļ�
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
	
    --��ȡR*.grp�ļ�
    JY.Data_Base=Byte.create(idx[1]-idx[0]);              --��������
    Byte.loadfile(JY.Data_Base,grpFile,idx[0],idx[1]-idx[0]);

    --���÷��ʻ������ݵķ����������Ϳ����÷��ʱ�ķ�ʽ�����ˡ������ðѶ���������ת��Ϊ����Լ����ʱ��Ϳռ�
	local meta_t={
	    __index=function(t,k)
	        return GetDataFromStruct(JY.Data_Base,0,CC.Base_S,k);
		end,

		__newindex=function(t,k,v)
	        SetDataFromStruct(JY.Data_Base,0,CC.Base_S,k,v);
	 	end
	}
    setmetatable(JY.Base,meta_t);


    JY.PersonNum=math.floor((idx[2]-idx[1])/CC.PersonSize);   --����

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

    JY.ThingNum=math.floor((idx[3]-idx[2])/CC.ThingSize);     --��Ʒ
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

    JY.SceneNum=math.floor((idx[4]-idx[3])/CC.SceneSize);     --����
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

    JY.WugongNum=math.floor((idx[5]-idx[4])/CC.WugongSize);     --�书
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

    JY.ShopNum=math.floor((idx[6]-idx[5])/CC.ShopSize);     --�����̵�
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
		if JY.Base["��Ʒ" .. i] < 0 then
			break;
		end
		if JY.Base["��Ʒ" .. i] == 174 then
			JY.GOLD = JY.Base["��Ʒ����" .. i]
			break;
		end
	end
	
	--��ȡ��Ŀ��Ϣ
	if existFile(CC.CircleFile) then
		local file = io.open(CC.CircleFile, "rb");
		local str = "";
		--Alungky ��ȡǰ���ʼ����Ŀ��Ϣ
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
	
	--Ԥ����Ŀ��Ϣ
	if id == 0 then
		SetS(53, 0, 1, 5, CC.CircleNum);
	end
   
	os.remove('r.grp')
	os.remove('d.grp')
	os.remove('s.grp')
end

-- д��Ϸ����
-- id=0 �½��ȣ�=1/2/3 ����
function SaveRecord(id)         -- д��Ϸ����

	--�ж��Ƿ����ӳ�������
	if JY.Status == GAME_SMAP then
      JY.Base["����"] = JY.SubScene
    else
      JY.Base["����"] = -1
    end
	
    --��ȡR*.idx�ļ�
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
    --дR*.grp�ļ�
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
-----------------------------------ͨ�ú���-------------------------------------------

function filelength(filename)         --�õ��ļ�����
    local inp=io.open(filename,"rb");
    local l= inp:seek("end");
	inp:close();
    return l;
end

--��S������, (x,y) ���꣬level �� 0-5
function GetS(id,x,y,level)       --��S������
	return lib.GetS(id,x,y,level);
end

--дS��
function SetS(id,x,y,level,v)       --дS��
	lib.SetS(id,x,y,level,v);
end

--��D*
--sceneid ������ţ�
--id D*���
--Ҫ���ڼ�������, 0-10
function GetD(Sceneid,id,i)          --��D*
    return lib.GetD(Sceneid,id,i);
end

--дD��
function SetD(Sceneid,id,i,v)         --дD��
	lib.SetD(Sceneid,id,i,v);
end

--�����ݵĽṹ�з�������
--data ����������
--offset data�е�ƫ��
--t_struct ���ݵĽṹ����jyconst���кܶඨ��
--key  ���ʵ�key
function GetDataFromStruct(data,offset,t_struct,key)  --�����ݵĽṹ�з������ݣ�����ȡ����
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

function SetDataFromStruct(data,offset,t_struct,key,v)  --�����ݵĽṹ�з������ݣ���������
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

--����t_struct ����Ľṹ�����ݴ�data�����ƴ��ж�����t��
function LoadData(t,t_struct,data)        --data�����ƴ��ж�����t��
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

--����t_struct ����Ľṹ������д��data Byte�����С�
function SaveData(t,t_struct,data)      --����д��data Byte�����С�
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

--����x�ķ�Χ
function limitX(x,minv,maxv)
	if x<minv then
	    x=minv;
	end
	if maxv ~= nil and x>maxv then
	    x=maxv;
	end
	return x
end

function RGB(r,g,b)          --������ɫRGB
	return r*65536+g*256+b;
end

function GetRGB(color)      --������ɫ��RGB����
    color=color%(65536*256);
    local r=math.floor(color/65536);
    color=color%65536;
    local g=math.floor(color/256);
    local b=color%256;
    return r,g,b
end

--�ȴ���������
function WaitKey(flag)
	--ktype  1�����̣�2������ƶ���3:��������4������Ҽ���5������м���6�������ϣ�7��������
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

--����һ���������İ�ɫ�����Ľǰ���
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

--����һ���������İ�ɫ�����Ľǰ���
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

--��ʾ��Ӱ�ַ���
function DrawString(x,y,str,color,size)         --��ʾ��Ӱ�ַ���
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

--��ʾ������ַ���
--(x,y) ���꣬�����Ϊ-1,������Ļ�м���ʾ
function DrawStrBox(x,y,str,color,size,boxcolor)         --��ʾ������ַ���
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

--�޾Ʋ��������Ӷ���ɫת����֧��
function DrawStrBox3(x, y, s, color, size, flag)         --��ʾ������ַ���
    local ll=#s -flag*2;
    local w=size*ll/2+2*CC.MenuBorderPixel;
	local h=size+2*CC.MenuBorderPixel;
	local function strcolor_switch(s)
		local Color_Switch={{"��",C_RED},{"��",C_GOLD},{"��",C_BLACK},{"��",C_WHITE},{"��",C_ORANGE}}
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
	
	--�޾Ʋ�����������ɫ 7-31
    DrawBox(x,y,x+w-1,y+h-1,LimeGreen);
	local space = 0;
	while string.len(s) >= 1 do
		local str
		str=string.sub(s,1,1)
		if string.byte(s,1,1) > 127 then		--�жϵ�˫�ַ�
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

--��ʾ��ѯ��Y/N��������Y���򷵻�true, N�򷵻�false
--(x,y) ���꣬�����Ϊ-1,������Ļ�м���ʾ
--��Ϊ�ò˵�ѯ���Ƿ�
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
	{"ȷ��/��", nil, 1}, 
	{"ȡ��/��", nil, 2}}
	local r = ShowMenu(menu, 2, 0, x + w - 4 * size - 2 * CC.MenuBorderPixel, y + h + CC.MenuBorderPixel, 0, 0, 1, 0, CC.DefaultFont, C_ORANGE, C_WHITE)
	if r == 1 then
		return true
	else
		return false
	end
end

--��ʾ�ַ������ȴ��������ַ���������ʾ����Ļ�м�
function DrawStrBoxWaitKey(s,color,size,flag,boxcolor)
	if JY.Restart == 1 then
		return
	end
    lib.GetKey();
    Cls();
	--�޾Ʋ������ֿ�����
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
	until lib.GetTime()-ttt>300		--�y
    --WaitKey();
end

--���� [0 , i-1] �����������
function Rnd(i)           --�����
    local r=math.random(i);
    return r-1;
end

--�����������ԣ���������ֵ���ƣ���Ӧ�����ֵ���ơ���Сֵ������Ϊ0
--id ����id
--str�����ַ���
--value Ҫ���ӵ�ֵ��������ʾ����
--����1,ʵ�����ӵ�ֵ
--����2���ַ�����xxx ����/���� xxxx��������ʾҩƷЧ��
function AddPersonAttrib(id, str, value)
	local oldvalue = JY.Person[id][str]
	local attribmax = math.huge
	if str == "����" then
		attribmax = JY.Person[id]["�������ֵ"]
	elseif str == "����" then
		attribmax = JY.Person[id]["�������ֵ"]
	elseif CC.PersonAttribMax[str] ~= nil then
		attribmax = CC.PersonAttribMax[str]
	end
	
	--�٤�ܳ˼����������ֵ
	if str == "���˳̶�" then
		if Curr_NG(id, 169) then
			attribmax = 60
		elseif PersonKF(id, 169) then
			attribmax = 80
		end
	end

	if str == "�������ֵ" then
		local p_zz = JY.Person[id]["����"];
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
		--������ɨ�أ�ʯ���죬�����ӣ�����9999
		if match_ID(id, 53) or match_ID(id, 114) or match_ID(id, 38) or match_ID(id, 116) then
			attribmax = 9999
		end
		--ѧһ���ڹ�����1500��������
		if Num_of_Neigong(id) == 1 then
			attribmax = attribmax + 1500
		--ѧ�����ڹ�����3000��������
		elseif Num_of_Neigong(id) == 2 then
			attribmax = attribmax + 3000
		--ѧ���������ڹ�����4500��������
		elseif Num_of_Neigong(id) > 2 then
			attribmax = attribmax + 4500
		end
		if match_ID(id,75) then --����δ��ÿѧһ���ڹ���������+200
		local tg = Num_of_Neigong(id)
		attribmax = attribmax + math.modf(tg * 200)
	    end
		--ѧ�б�ڤ�����ǣ�+300
		for i = 1, CC.Kungfunum do
			if JY.Person[id]["�书" .. i] == 85 or JY.Person[id]["�书" .. i] == 88 then
				attribmax = attribmax + 300
				break
			end
		end
		--������������
		if match_ID(id, 58) then
			attribmax = attribmax - JY.Person[300]["����"] * 1000
		end
		--��������2999������9999
		if attribmax < 2999 then
			attribmax = 2999
		end
		if attribmax > 9999 then
			attribmax = 9999
		end
		attribmax = math.modf(attribmax * MPAttrib(id, 9))
	end
 
	if str == "�������ֵ" then
	   if isteam(id) and id ~= 0 then
	   attribmax = math.modf((attribmax + JY.Base["��������"]*150)* MPAttrib(id, 8))
	   end
	   attribmax = math.modf(attribmax * MPAttrib(id, 8))
	end
 
	--�����أ������֣����ѹã��ö�500
	if str == "�ö�����" and (match_ID(id, 2) or match_ID(id, 83) or match_ID(id, 17)) then
		attribmax = 500
		if match_ID_awakened(id,2,1) and JY.Person[2]["�۽�����"] == 2 then
		attribmax = 750
		end
		if match_ID_awakened(id,17,1) then
		attribmax = 750
		end
	end
	--����ˣ��ö�400
	if str == "�ö�����" and match_ID(id, 25) then
		attribmax = 400
	end

	if str == "Ʒ��"  then
		attribmax = 100
	end	


	
	--����ţ��ƽһָ��ѦĽ��ҽ��500
	if str == "ҽ������" and (match_ID(id, 16) or match_ID(id, 28) or match_ID(id, 45)) then
		attribmax = 500
		if match_ID_awakened(id,16,1) or match_ID_awakened(id,28,1) or match_ID_awakened(id,45,1) then
		attribmax = 900
		end
	end
	--����ʯ��������ҽ��400
	if str == "ҽ������" and (match_ID(id, 85) or match_ID(id, 2)) then
		attribmax = 400
		if match_ID_awakened(id,2,1) and JY.Person[2]["�۽�����"] == 1 then
		attribmax = 750
		end
	end
	--����ҽ����ҽ���ö��ⶾ����400
	if (str == "ҽ������" or str == "�ö�����" or str == "�ⶾ����") and id == 0 and JY.Base["��׼"] == 8 then
		attribmax = 400
	end
	--�����������ö��ⶾ����500
	if (str == "�ö�����" or str == "�ⶾ����") and id == 0 and JY.Base["��׼"] == 9 then
		attribmax = 500
	end
	--�ֻ���ҽ���ö�����300
	if (str == "ҽ������" or str == "�ö�����") and match_ID(id, 4) then
		attribmax = 300
		if match_ID_awakened(id,4,1) and JY.Person[4]["�۽�����"] == 1 and str == "ҽ������" then
		attribmax = 750
		end
		if match_ID_awakened(id,4,1) and JY.Person[4]["�۽�����"] == 2 and str == "�ö�����" then
		attribmax = 750
		end
	end
	if str == "�ö�����" and wglw(id, 9)>=1 then
		attribmax = attribmax + 200*wglw(id, 9)
	end
	
	if str == "ʵս"  then
		attribmax = 500
		if wglw(id,52)>1 then
		attribmax = 1000
		end
	end	

	if str == "����" and JY.Status == GAME_WMAP and value<0  then
	    for i = 0, WAR.PersonNum - 1 do
		    if id == WAR.Person[i]["������"] and WAR.Person[i]["����"]>0  then
			   if WAR.Person[i]["����"]+value>0   then
			      WAR.Person[i]["����"] = WAR.Person[i]["����"]+value
			      value = 0
			   else
			      value = WAR.Person[i]["����"]+value
				  WAR.Person[i]["����"] = 0
			   end
			end
	   end
	   if nglw(id,160)>=1 and Curr_NG(id,160) then
	      str = "����"
		  value = -value
	   end
	end		
	local newvalue = limitX(oldvalue + value, 0, attribmax)
	JY.Person[id][str] = newvalue
	local add = newvalue - oldvalue
	local showstr = ""
	if add > 0 then
		showstr = string.format("%s ���� %d", str, add)
	elseif add < 0 then
		showstr = string.format("%s ���� %d", str, -add)
	end
	return add, showstr
end

--����midi
function PlayMIDI(id)             --����midi
    JY.CurrentMIDI=id;
    if JY.EnableMusic==0 then
        return ;
    end
    if id>=0 then
        lib.PlayMIDI(string.format(CC.MIDIFile,id+1));
    end
end

--������Чatk***
function PlayWavAtk(id)             --������Чatk***
    if JY.EnableSound==0 then
        return ;
    end
    if id>=0 then
        lib.PlayWAV(string.format(CC.ATKFile,id));
    end
end

--������Чe**
function PlayWavE(id)              --������Чe**
    if JY.EnableSound==0 then
        return ;
    end
    if id>=0 then
        lib.PlayWAV(string.format(CC.EFile,id));
    end
end

function PlayWavOgg(id)             --������Чatk***
    if JY.EnableSound==0 then
        return ;
    end
    if id>=0 then
        lib.PlayWAV(string.format(CC.OGGFile,id));
    end
end

--flag =0 or nil ȫ��ˢ����Ļ
--1 ��������εĿ���ˢ��
function ShowScreen(flag)
	if JY.Darkness == 0 then
		if flag == nil then
			flag = 0
		end
		lib.ShowSurface(flag)
	end
end

--ͨ�ò˵�����
-- menuItem ��ÿ���һ���ӱ�����Ϊһ���˵���Ķ���
--          �˵����Ϊ  {   ItemName,     �˵��������ַ���
--                          ItemFunction, �˵����ú��������û����Ϊnil
--                          Visible       �Ƿ�ɼ�  0 ���ɼ� 1 �ɼ�, 2 �ɼ�����Ϊ��ǰѡ���ֻ����һ��Ϊ2��
--                                        ������ֻȡ��һ��Ϊ2�ģ�û�����һ���˵���Ϊ��ǰѡ���
--                                        ��ֻ��ʾ���ֲ˵�������´�ֵ��Ч��
--                                        ��ֵĿǰֻ�����Ƿ�˵�ȱʡ��ʾ������
--                       }
--          �˵����ú���˵����         itemfunction(newmenu,id)
--
--       ����ֵ
--              0 �������أ������˵�ѭ�� 1 ���ú���Ҫ���˳��˵��������в˵�ѭ��
--
-- numItem      �ܲ˵������
-- numShow      ��ʾ�˵���Ŀ������ܲ˵���ܶ࣬һ����ʾ���£�����Զ����ֵ
--                =0��ʾ��ʾȫ���˵���

-- (x1,y1),(x2,y2)  �˵���������ϽǺ����½����꣬���x2,y2=0,������ַ������Ⱥ���ʾ�˵����Զ�����x2,y2
-- isBox        �Ƿ���Ʊ߿�0 �����ƣ�1 ���ơ������ƣ�����(x1,y1,x2,y2)�ľ��λ��ư�ɫ���򣬲�ʹ�����ڱ����䰵
-- isEsc        Esc���Ƿ������� 0 �������ã�1������
-- Size         �˵��������С
-- color        �����˵�����ɫ����ΪRGB
-- selectColor  ѡ�в˵�����ɫ,
--;
-- ����ֵ  0 Esc����
--         >0 ѡ�еĲ˵���(1��ʾ��һ��)
--         <0 ѡ�еĲ˵�����ú���Ҫ���˳����˵�����������˳����˵�

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
	--�޾Ʋ�����ս����ݼ�ʱ���ж�
	local In_Battle = false;
	if JY.Status == GAME_WMAP and numItem >= 13 and menuItem[13][1] == "�Զ�" then
		In_Battle = true
	end
	--�޾Ʋ�����ս���˵��ж�
	local In_Tactics = false;
	if JY.Status == GAME_WMAP and numItem >= 3 and menuItem[3][1] == "�ȴ�" then
		In_Tactics = true
	end
	--�޸�ս���˵�����Ա���ʾ��ݼ�
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
		--��ݼ���ʾ��ʾ
		if In_Battle == true then
			if newMenu[i][1] == "����" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "A", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "�˹�" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "G", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "ս��" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "S", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "�ö�" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "V", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "�ⶾ" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "Q", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "ҽ��" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "F", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "��Ʒ" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "E", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "״̬" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "Z", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "��Ϣ" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "R", LimeGreen, CC.FontSmall)
			elseif newMenu[i][2] == War_TgrtsMenu then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "T", LimeGreen, CC.FontSmall)
			end
		end
		if In_Tactics == true then
			if newMenu[i][1] == "����" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "P", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "����" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "D", LimeGreen, CC.FontSmall)
			elseif newMenu[i][1] == "�ȴ�" then
				DrawString(x1 + CC.MenuBorderPixel + size*2, y1 + CC.MenuBorderPixel + (i - start) * (size + CC.RowPixel) +2, "W", LimeGreen, CC.FontSmall)
			end
		end
	  end

		ShowScreen()

		local keyPress, ktype, mx, my = WaitKey(1)
		lib.Delay(CC.Frame)
	  
		if keyPress==VK_ESCAPE or ktype == 4 then
			--Esc �� �˳�
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
			if newNumItem < current +start then                --Alungky �޸�������ʱ��������BUG
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
			elseif current < num then                --Alungky �޸�������ʱ��������BUG
				start = 1
			end
		--�޾Ʋ�����ս����ݼ�
		--����
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
		--1-9ֱ�ӹ���
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
		--�˹�
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
		--ս��
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
		--�ö�
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
		--�ⶾ
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
		--ҽ��
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
		--��Ʒ
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
		--״̬
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
		--��Ϣ
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
		--��ɫָ��
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
		--C�鿴
		elseif In_Battle == true and keyPress == VK_C then
			local r=MapWatch();
			ClsN();
			lib.LoadSur(surid,0,0);
			if isBox==1 then
				DrawBox(x1,y1,x1+w,y1+h,C_WHITE);
			end
		--����
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
		--����
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
		--�ȴ�
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
			if ktype == 2 or ktype == 3 then			--ѡ��
				if mx >= x1 and mx <= x1 + w and my >= y1 and my <= y1 + h then
					current = start + math.modf((my - y1 - CC.MenuBorderPixel) / (size + CC.RowPixel))
					mk = true;
				end
			end
			--ѡ��ȷ��
			if  keyPress==VK_SPACE or keyPress==VK_RETURN or ktype == 5 or (ktype == 3 and mk) then
				if newMenu[current][2]==nil then
					returnValue=newMenu[current][4];
					break;
				elseif newMenu[current][2] == SelectNeiGongMenu then
					local id = WAR.Person[WAR.CurID]["������"]
					--�˹���������
					if JY.Person[id]["����"] < 2000 then
						DrawStrBoxWaitKey("�������㣬�޷��˹�",C_RED,CC.DefaultFont,nil,LimeGreen)
					--�˹���������
					elseif JY.Person[id]["����"] < 20 then
						DrawStrBoxWaitKey("�������㣬�޷��˹�",C_RED,CC.DefaultFont,nil,LimeGreen)
					else
						local r=newMenu[current][2](newMenu,current); 
						--���������˵�ȫ������20��Ϊ�ж�����
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
					local id = WAR.Person[WAR.CurID]["������"]
					--�˹���������
					if JY.Person[id]["����"] < 20 then
						DrawStrBoxWaitKey("�������㣬�޷��˹�",M_DeepSkyBlue,CC.DefaultFont,nil,LimeGreen)
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
					local r=newMenu[current][2](newMenu,current);               --���ò˵�����
			
					--�޾Ʋ�������дһ������ķ����߼�����Ӧ�˹�
					if r==1 then
						returnValue= -newMenu[current][4];
						break;
					--���������˵�ȫ������20��Ϊ�ж�����
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

--����������ShowMenuһ������һЩ�ر�Ľ�������˵��
--menu ÿ����������ֵ��1���ƣ�2ִ�к�����3��ʾ��ʽ(0��ɫ��ѡ��1������ʾ��2����ʾ, 3��ɫ����ѡ��)
--itemNum �˵��ĸ�����ͨ���ڵ��õ�ʱ�� #menu�Ϳ�����
--numShow ÿ����ʾ�Ĳ˵�����
--showRow һ��������ʾ������������������ʾ�˵������ﲻ��һ������������������Զ���Ӧ���ֵ
--str �Ǳ�������֣���nil����ʾ
--ѡ����
function ShowMenu2(menu,itemNum,numShow,showRow,x1,y1,x2,y2,isBox,isEsc,size,color,selectColor, str, selIndex)     --ͨ�ò˵�����
    local w=0;
    local h=0;   --�߿�Ŀ��
    local i,j=0,0;
    local col=0;     --ʵ�ʵ���ʾ�˵���
    local row=0;
    
    lib.GetKey();
    Cls();
    
    --��һ���µ�table
    local menuItem = {};
    local numItem = 0;                --��ʾ������
    
    --�ѿ���ʾ�Ĳ��ַŵ���table
    for i,v in pairs(menu) do
		if v[3] ~= 2 then
			numItem = numItem + 1;
			menuItem[numItem] = {v[1],v[2],v[3],i};                --ע���4��λ�ã�����i��ֵ
		end
    end
    
    --����ʵ����ʾ�Ĳ˵�����
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

    --����߿�ʵ�ʿ��
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

    local start=0;             --��ʾ�ĵ�һ��

    local curx = 1;          --��ǰѡ����
    local cury = 0;
    local current = curx + cury*numShow;
    
    --Ĭ����ѡ��
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
				local drawColor=color;           --���ò�ͬ�Ļ�����ɫ
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

		if keyPress==VK_ESCAPE or ktype == 4 then                  --Esc �˳�
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
			if ktype == 2 or ktype == 3 then			--ѡ��
				--�޾Ʋ������Ӹ��߼��ж���ֹ����
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
					local r=menuItem[current][2](menuItem,current);               --���ò˵�����
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
        
	--����ֵ�������ȡ��4��λ�õ�ֵ
	if returnValue > 0 then
		return menuItem[returnValue][4]
	else
		return returnValue
	end
end

------------------------------------------------------------------------------------
--------------------------------------��Ʒʹ��---------------------------------------
--��Ʒʹ��ģ��
--��ǰ��Ʒid
--����1 ʹ������Ʒ�� 0 û��ʹ����Ʒ��������ĳЩԭ����ʹ��
function UseThing(id)
	return DefaultUseThing(id);
end

--ȱʡ��Ʒʹ�ú�����ʵ��ԭʼ��ϷЧ��
--id ��Ʒid
function DefaultUseThing(id)                --ȱʡ��Ʒʹ�ú���
    if JY.Thing[id]["����"]==0 then
        return UseThing_Type0(id);
    elseif JY.Thing[id]["����"]==1 then
        return UseThing_Type1(id);
    elseif JY.Thing[id]["����"]==2 then
        return UseThing_Type2(id);
    elseif JY.Thing[id]["����"]==3 then
        return UseThing_Type3(id);
    elseif JY.Thing[id]["����"]==4 then
        return UseThing_Type4(id);
    end
end

--������Ʒ�������¼�
function UseThing_Type0(id)
	--�ϲ�����
	if id == 286 then
		local jyzj = 0
		for j=1, CC.MyThingNum do
			if JY.Base["��Ʒ" .. j] == 287 then
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
			if JY.Base["��Ʒ" .. j] == 286 then
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
		local x=JY.Base["��X1"]+CC.DirectX[JY.Base["�˷���"]+1];
		local y=JY.Base["��Y1"]+CC.DirectY[JY.Base["�˷���"]+1];
        local d_num=GetS(JY.SubScene,x,y,3)
        if d_num>=0 then
            JY.CurrentThing=id;
            EventExecute(d_num,2);       --��Ʒ�����¼�
            JY.CurrentThing=-1;
			return 1;
		else
		    return 0;
        end
    end
end


--�ж�һ�����Ƿ����װ��������һ����Ʒ
--���� true����������false����
function CanUseThing(id, personid)
	local str = ""
	--�����̣���������ؼ�
	if match_ID(personid, 76) and JY.Thing[id]["����"] == 2 then
		return true
	--�������ר����Ʒ
	elseif JY.Thing[id]["����������"] >= 0 and personid == 0 and JY.Thing[id]["����������"] == JY.Base["����"] then
		return true
	--����ѧʥ��
	elseif id == 70 and (personid == 0 or MPPD(personid)== 5) then
		return true
	elseif id == 114 and (personid == 0 or JY.Base["��׼"] == 3) then --������ѧ���¾Ž�
		return true
	--���촩װ��
	elseif match_ID(personid, 104) and JY.Thing[id]["װ������"] >= 0 then
		return true
	--�½���������������
	elseif match_ID(personid, 655) and JY.Thing[id]["װ������"] >= 0 and JY.Thing[id]["����������"]>0 then
		return true
	--��֤ѧ��ղ�����
	elseif match_ID(personid, 149) and id == 265 then
		return true
	elseif MPPD(personid, 2) and id == 295 then
		return true
	else
		if JY.Thing[id]["����������"] >= 0 and JY.Thing[id]["����������"] ~= personid then
			return false
		end
		if JY.Thing[id]["����������"] ~= 2 and JY.Person[personid]["��������"] ~= 2 and JY.Thing[id]["����������"] ~= JY.Person[personid]["��������"] then
			local cond = 1
			--���ڿ�����������ѧϰ
			if JY.Thing[id]["�����书"] == JY.Person[personid]["�츳�ڹ�"] then
				cond = 2
			--����ѧ������������
			elseif id == 86 and personid == 0 then
				cond = 2
			elseif (id == 141 and wglw(personid,35)>2 and PersonKF(personid, 35)) or (id == 126 and wglw(personid,61)>2 and PersonKF(personid, 61)) then	
				cond = 2
			end
			--����Ҳ������������ѧϰ
			for i = 1, 4 do
				if JY.Thing[id]["�����书"] == JY.Person[personid]["�츳�⹦"..i] then
					cond = 2
					break
				end
			end
			if cond == 1 then
				return false
			end
		end
		if JY.Person[personid]["�������ֵ"] < JY.Thing[id]["������"] then
			return false
		end
		if JY.Person[personid]["������"] < JY.Thing[id]["�蹥����"] then
			return false
		end
		if JY.Person[personid]["�Ṧ"] < JY.Thing[id]["���Ṧ"] then
			return false
		end
		if JY.Person[personid]["�ö�����"] < JY.Thing[id]["���ö�����"] then
			return false
		end
		if JY.Person[personid]["ҽ������"] < JY.Thing[id]["��ҽ������"] then
			return false
		end
		if JY.Person[personid]["�ⶾ����"] < JY.Thing[id]["��ⶾ����"] then
			return false
		end

		--ѧ��С���๦������ֵ����+10��
		local lv = 0;
		if PersonKF(personid, 98) then
			lv = 10
		end
		
		--���Ǻͷɷ�ѧ�罣������-40����Ϊ60��
		if id == 117 and (personid == 0 or personid == 92) and PersonKF(personid, 67) then
			lv = lv + 40
		end
		
		if id == 141 and wglw(personid,35)>2 and PersonKF(personid, 35) then
			lv = lv + 70
		end
	
		if id == 126 and wglw(personid,61)>2 and PersonKF(personid, 61) then
			lv = lv + 50
		end
	
		--���Ǻͷɷ�ѧ����������-80����Ϊ60��
		if id == 136 and (personid == 0 or personid == 92) and PersonKF(personid, 44) then
			lv = lv + 80
		end
		
		if JY.Thing[id]["��ȭ�ƹ���"]>0 and PersonKF(personid,184) then
		   lv = lv + 20
		end
		
		--�һ�������ѧϰ����֮һ��ʣ���������������-10���ɵ���
		if id == 95 or id == 101 or id == 123 then
			for i = 1, CC.Kungfunum do
				if JY.Person[personid]["�书" .. i] == 12 or JY.Person[personid]["�书" .. i] == 18 or JY.Person[personid]["�书" .. i] == 38 then
					lv = lv + 10
				end
			end
		end
		
		if JY.Person[personid]["ȭ�ƹ���"] + lv < JY.Thing[id]["��ȭ�ƹ���"] then
			return false
		end
		if JY.Person[personid]["ָ������"] + lv < JY.Thing[id]["��ָ������"] then
			return false
		end
		if JY.Person[personid]["��������"] + lv  < JY.Thing[id]["����������"] then
			return false
		end
		if JY.Person[personid]["ˣ������"] + lv  < JY.Thing[id]["��ˣ������"] then
			return false
		end
		if JY.Person[personid]["�������"] + lv < JY.Thing[id]["���������"] then
			return false
		end
		
		if JY.Person[personid]["��������"] < JY.Thing[id]["�谵������"] then
			return false
		end

		if JY.Thing[id]["������"] >= 0 then
			if JY.Thing[id]["������"] > JY.Person[personid]["����"] then
				return false;
			end
		else
			if -JY.Thing[id]["������"] < JY.Person[personid]["����"] then
				return false;
			end 
		end
	end
	  
	--��ת����
	if id == 118 then
		local R = JY.Person[personid]
		local wp = R["ȭ�ƹ���"] + R["ָ������"] + R["��������"] + R["ˣ������"] + R["�������"]
		if wp < 120 then
			return false
		end
	end
	--��������
	if id == 176 then
		local R = JY.Person[personid]
		if R["��������"] >= 70 then
			return true
		elseif R["ˣ������"] >= 70 then
			return true
		elseif R["�������"] >= 70 then
			return true
		else
			return false
		end
	end
	return true
end

--ҩƷʹ��ʵ��Ч��
--id ��Ʒid��
--personid ʹ����id
--����ֵ��0 ʹ��û��Ч������Ʒ����Ӧ�ò��䡣1 ʹ����Ч������ʹ�ú���Ʒ����Ӧ��-1
function UseThingEffect(id, personid, amount)
	--��ʹ��������Ĭ��Ϊʹ��1��
	if amount == nil then
		amount = 1
	end
	local str = {}
	str[0] = string.format("ʹ�� %s �� %d", JY.Thing[id]["����"], amount)
	local strnum = 1
	local addvalue = nil
	if JY.Thing[id]["������"] > 0 then
		local add = JY.Thing[id]["������"] - math.modf(JY.Thing[id]["������"] * JY.Person[personid]["���˳̶�"] / 200) + Rnd(5)
		--����ţ�ڶӣ���ҩЧ��Ϊ1.3��
		if JY.Status == GAME_WMAP and inteam(personid) and (inteam(16) or JY.Base["����"] == 16) then
			for w = 0, WAR.PersonNum - 1 do
				if match_ID(WAR.Person[w]["������"], 16) and WAR.Person[w]["����"] == false and WAR.Person[w]["�ҷ�"] then
					add = math.modf(add * 1.3)
					break;
				end
			end
		end
		if add <= 0 then
			add = 5 + Rnd(5)
		end

		add = math.modf(add)
		
		--�鰲ͨ�����˳�ҩ����Ѫ������Ѫ
		if JY.Status == GAME_WMAP then
			for w = 0, WAR.PersonNum - 1 do
				if match_ID(WAR.Person[w]["������"], 71) and WAR.Person[w]["����"] == false and WAR.Person[w]["�ҷ�"] ~= WAR.Person[WAR.CurID]["�ҷ�"] then
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
		
		--���˳�ҩЧ���ӱ�
		if not inteam(personid) then
			add = add * 2;
		end
		
		if JY.Status == GAME_WMAP then
			WAR.Person[WAR.CurID]["���˵���"] = AddPersonAttrib(personid, "���˳̶�", -math.modf(add / 8))
		end

		addvalue, str[strnum] = AddPersonAttrib(personid, "����", add*amount)
		
		--�����壺��ʾ��������
		if JY.Status == GAME_WMAP then
			WAR.Person[WAR.CurID]["��������"] = addvalue;
		end
		if addvalue ~= 0 then
			strnum = strnum + 1
		end
	end
  
	local function ThingAddAttrib(s)
		if JY.Thing[id]["��" .. s] ~= 0 then
		    local add2 = JY.Thing[id]["��" .. s]
			if JY.Status == GAME_WMAP then
		    if WAR.YZSG[id]~=nil then
		      add2 = -add2
		    end
			end
			addvalue, str[strnum] = AddPersonAttrib(personid, s, add2*amount)
			if addvalue ~= 0 then
			strnum = strnum + 1
			end
			--�����壺��ʾ��������������
			if JY.Status == GAME_WMAP then
				if s == "����" then
					WAR.Person[WAR.CurID]["��������"] = addvalue;
				elseif s == "����" then
					WAR.Person[WAR.CurID]["��������"] = addvalue;
				end
			end
		end
	end
  
	ThingAddAttrib("�������ֵ")
  
	if JY.Thing[id]["���ж��ⶾ"] < 0 then
	    local aa = math.modf(JY.Thing[id]["���ж��ⶾ"] / 2)
		if JY.Status == GAME_WMAP then
		   if WAR.YZSG[personid]~=nil then
		      aa = -aa
		   end
		   if WAR.POISON2[personid]~=nil then
			  AddPersonAttrib(personid, "����", -aa*amount*50)
			  aa = 0
		   end
		end
		addvalue, str[strnum] = AddPersonAttrib(personid, "�ж��̶�", aa*amount)
		if addvalue ~= 0 then
			strnum = strnum + 1
		end
		--�����壺��ʾ�нⶾ����
		if JY.Status == GAME_WMAP then
			if addvalue < 0 then
				WAR.Person[WAR.CurID]["�ⶾ����"] = -addvalue;
			elseif addvalue > 0 then
				WAR.Person[WAR.CurID]["�ж�����"] = addvalue;
			end
		end
	end
	  
	ThingAddAttrib("����")
  
	if JY.Thing[id]["�ı���������"] == 2 then
		str[strnum] = "������·��Ϊ������һ"
		strnum = strnum + 1
	end

	ThingAddAttrib("����")
	ThingAddAttrib("�������ֵ")
	ThingAddAttrib("������")
	ThingAddAttrib("������")
	ThingAddAttrib("�Ṧ")
	ThingAddAttrib("ҽ������")
	ThingAddAttrib("�ö�����")
	ThingAddAttrib("�ⶾ����")
	ThingAddAttrib("��������")
	ThingAddAttrib("ȭ�ƹ���")
	ThingAddAttrib("��������")
	ThingAddAttrib("ˣ������")
	ThingAddAttrib("�������")
	ThingAddAttrib("��������")
	ThingAddAttrib("��ѧ��ʶ")
	ThingAddAttrib("��������")
  
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
			--��ʾʹ����Ʒ����
			DrawString(CC.MainMenuX, CC.ScreenH-(strnum+2)*CC.Fontsmall, JY.Person[WAR.Person[WAR.CurID]["������"]]["����"].." "..str[0], C_WHITE, CC.Fontsmall);
			for i=1, strnum-1 do 
				DrawString(CC.MainMenuX, CC.ScreenH + (i-strnum-2)*CC.Fontsmall, str[i], C_WHITE, CC.Fontsmall);
			end
			
			ShowScreen()
			--��ʾ����
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

--װ����Ʒ
function UseThing_Type1(id)
	DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, string.format("˭Ҫ�䱸%s?", JY.Thing[id]["����"]), C_WHITE, CC.DefaultFont)
	local nexty = CC.MainSubMenuY + CC.SingleLineHeight
	local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
	local pp1, pp2 = 0, 0
	if r > 0 then
		local personid = JY.Base["����" .. r]
		--���ũװ��������
		if id == 202 and match_ID(personid, 72) then
			say("�ٺ٣���ڱ����������������ŵı�����˭˵ˣ��������װ���ˣ�",72,0)
			if JY.Thing[id]["ʹ����"] >= 0 then
								
				JY.Person[JY.Thing[id]["ʹ����"]]["����"] = -1
			end
			if JY.Person[personid]["����"] >= 0 then
				JY.Thing[JY.Person[personid]["����"]]["ʹ����"] = -1
			end
			JY.Person[personid]["����"] = id
			JY.Thing[id]["ʹ����"] = personid
			return 1
		end
		
		if CanUseThing(id, personid) then
			if JY.Thing[id]["װ������"] == 0 then
				if JY.Thing[id]["ʹ����"] >= 0 then
					
					JY.Person[JY.Thing[id]["ʹ����"]]["����"] = -1
				end
				if JY.Person[personid]["����"] >= 0 then
					JY.Thing[JY.Person[personid]["����"]]["ʹ����"] = -1
				end
				JY.Person[personid]["����"] = id
			
			elseif JY.Thing[id]["װ������"] == 1 then
				if JY.Thing[id]["ʹ����"] >= 0 then
					
					JY.Person[JY.Thing[id]["ʹ����"]]["����"] = -1
				end
				if JY.Person[personid]["����"] >= 0 then
					JY.Thing[JY.Person[personid]["����"]]["ʹ����"] = -1
				end
				JY.Person[personid]["����"] = id
			elseif JY.Thing[id]["װ������"] == 2 then
				if JY.Thing[id]["ʹ����"] >= 0 then
					
					JY.Person[JY.Thing[id]["ʹ����"]]["����"] = -1
				end
				if JY.Person[personid]["����"] >= 0 then
					JY.Thing[JY.Person[personid]["����"]]["ʹ����"] = -1
				end
				JY.Person[personid]["����"] = id
			elseif JY.Thing[id]["װ������"] == 3 then
				if JY.Thing[id]["ʹ����"] >= 0 then
					
					JY.Person[JY.Thing[id]["ʹ����"]]["��Ʒ"] = -1
				end
				if JY.Person[personid]["��Ʒ"] >= 0 then
					JY.Thing[JY.Person[personid]["��Ʒ"]]["ʹ����"] = -1
				end
				JY.Person[personid]["��Ʒ"] = id				
			end
			JY.Thing[id]["ʹ����"] = personid
		else
			DrawStrBoxWaitKey("���˲��ʺ��䱸����Ʒ", C_WHITE, CC.DefaultFont)
			return 0
		end
	end
	return 1
end
--�ؼ���Ʒʹ��
function UseThing_Type2(id)
	if JY.Thing[id]["ʹ����"] >= 0 and DrawStrBoxYesNo(-1, -1, "����Ʒ�Ѿ������������Ƿ�������?", C_WHITE, CC.DefaultFont) == false then
		Cls(CC.MainSubMenuX, CC.MainSubMenuY, CC.ScreenW, CC.ScreenH)
		ShowScreen()
		return 0
	end
	Cls()
	DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, string.format("˭Ҫ����%s?", JY.Thing[id]["����"]), C_WHITE, CC.DefaultFont)
	local nexty = CC.MainSubMenuY + CC.SingleLineHeight
	local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
	if r > 0 then
		local personid = JY.Base["����" .. r]
		local yes, full = nil, nil
		if JY.Thing[id]["�����书"] >= 0 then
			yes = 0
			full = 1
			for i = 1, CC.Kungfunum do
				if JY.Person[personid]["�书" .. i] == JY.Thing[id]["�����书"] then
					yes = 1
				else
					if JY.Person[personid]["�书" .. i] == 0 then
						full = 0
					end
				end
			end
		end
		
		--����һ����о���������д����Ŀ���������ѧ����
		if id == 83 then
			if PersonKF(personid, 99) and PersonKF(personid, 106) == false then
				if DrawStrBoxYesNo(-1, -1, "����������һ����У��Ƿ��书ϴΪ������?", C_WHITE, CC.DefaultFont) then
					for i = 1, CC.Kungfunum do
						if JY.Person[personid]["�书" .. i] == 99 then
							JY.Person[personid]["�书" .. i] = 106
							JY.Person[personid]["�书�ȼ�" .. i] = 50
							if JY.Person[personid]["�츳�ڹ�"] == 99 then
								JY.Person[personid]["�츳�ڹ�"] = 106
							end
							yes = 2
							break
						end
					end
				end
			end
		end
    
		--����Ѿ����书����ѡ����书û��ѧ�ᣬ�򲻿�װ������
		if yes == 0 and full == 1 then
			DrawStrBoxWaitKey("һ����ֻ������12���书", C_WHITE, CC.DefaultFont)
			return 0
		end
    
		--��������
		if CC.Shemale[id] == 1 then
			--�������ֱ��ѧ
			if personid == 0 and JY.Base["��׼"] == 3 then
				say("�š����ҿ����������书�ľ���֮����ʵ�������Ƿ��Թ�����������Խ�����˷�������⣡",0,1)
				yes = 2
			elseif match_ID_awakened(personid,38,2) then
				say("�š����ҿ����������书�ľ���֮����ʵ�������Ƿ��Թ�����������Խ�����˷�������⣡",0,1)
				yes = 2
			--���Ǵ�Ӯ�������ߣ�����ֱ��ѧ
			elseif personid == 0 and JY.Person[27]["Ʒ��"] == 10 then
				yes = 2
			elseif personid == 0 and JY.Person[27]["Ʒ��"] == 15  and PersonKF(personid,108) then
				yes = 2
			elseif personid == 0 and JY.Person[27]["Ʒ��"] == 20  and PersonKF(personid,108) and nglw(personid,105)>0 then
				yes = 2
			elseif JY.Person[personid]["�Ա�"] == 0 and CanUseThing(id, personid) then
				Cls(CC.MainSubMenuX, CC.MainSubMenuY, CC.ScreenW, CC.ScreenH)
				if DrawStrBoxYesNo(-1, -1, "������������Ȼӵ��Թ����Ƿ���Ҫ����?", C_WHITE, CC.DefaultFont) == false then
					return 0
				else
					lib.FillColor(0, 0, CC.ScreenW, CC.ScreenH, C_RED, 128)
					ShowScreen()
					lib.Delay(80)
					lib.ShowSlow(15, 1)
					Cls()
					lib.ShowSlow(50, 0)
					JY.Person[personid]["�Ա�"] = 2
					local add, str = AddPersonAttrib(personid, "������", -15)
					DrawStrBoxWaitKey(JY.Person[personid]["����"] .. str, C_ORANGE, CC.DefaultFont)
					add, str = AddPersonAttrib(personid, "������", -25)
					DrawStrBoxWaitKey(JY.Person[personid]["����"] .. str, C_ORANGE, CC.DefaultFont)
				  end
			elseif JY.Person[personid]["�Ա�"] == 1 then
				DrawStrBoxWaitKey("���˲��ʺ���������Ʒ", C_WHITE, CC.DefaultFont)
				return 0
			end
		end
		
		if yes == 1 or CanUseThing(id, personid) or yes == 2 then
			if JY.Thing[id]["ʹ����"] == personid then
				return 0
			end
			if JY.Person[personid]["������Ʒ"] >= 0 then
				JY.Thing[JY.Person[personid]["������Ʒ"]]["ʹ����"] = -1
			end
			if JY.Thing[id]["ʹ����"] >= 0 then
				JY.Person[JY.Thing[id]["ʹ����"]]["������Ʒ"] = -1
				JY.Person[JY.Thing[id]["ʹ����"]]["��Ʒ��������"] = 0
			end
			JY.Thing[id]["ʹ����"] = personid
			JY.Person[personid]["������Ʒ"] = id
			JY.Person[personid]["��Ʒ��������"] = 0
		else
			DrawStrBoxWaitKey("���˲��ʺ���������Ʒ", C_WHITE, CC.DefaultFont)
			return 0
		end
		JY.Person[personid]["��������"] = 30000
		War_PersonTrainBook(personid)
		for i = 1, CC.Kungfunum do
			if JY.Person[personid]["�书�ȼ�"..i] <999 then
				JY.Person[personid]["�书�ȼ�"..i] = 999
			end
		end
		AddPersonAttrib(personid, "�������ֵ", 999)
		AddPersonAttrib(personid, "�������ֵ", 9999)
		JY.Person[personid]["����"] = JY.Person[personid]["�������ֵ"]
		JY.Person[personid]["����"] = JY.Person[personid]["�������ֵ"]		--�y
	end
	return 1
end

--�޾Ʋ�����ʹ��ҩƷ��ʳƷ
function UseThing_Type3(id)
	local usepersonid = -1
	local amount_use = 0
	if JY.Status == GAME_MMAP or JY.Status == GAME_SMAP then
		Cls(CC.MainSubMenuX, CC.MainSubMenuY, CC.ScreenW, CC.ScreenH)
		DrawStrBox(CC.MainSubMenuX, CC.MainSubMenuY, string.format("˭Ҫʹ��%s?", JY.Thing[id]["����"]), C_WHITE, CC.DefaultFont)
		local nexty = CC.MainSubMenuY + CC.SingleLineHeight
		local r = SelectTeamMenu(CC.MainSubMenuX, nexty)
		if r > 0 then
			usepersonid = JY.Base["����" .. r]
			--��ս���п�������ʹ��
			local max_amount = 0
			for i = 1, CC.MyThingNum do
				if JY.Base["��Ʒ" .. i] == id then
					max_amount = JY.Base["��Ʒ����" .. i]
					break;
				end
			end
			amount_use = InputNum("ʹ������", 1, max_amount)
		end
	--ս����
	elseif JY.Status == GAME_WMAP then
		--����ţ�����������ҩ
		if match_ID(WAR.Person[WAR.CurID]["������"], 16) or Curr_JL(WAR.Person[WAR.CurID]["������"],1) then
			War_CalMoveStep(WAR.CurID, 8, 1)
			local x, y = War_SelectMove()
			if x ~= nil then
				local emeny = GetWarMap(x, y, 2)
				if emeny >= 0 and WAR.Person[WAR.CurID]["�ҷ�"] == WAR.Person[emeny]["�ҷ�"] then
					usepersonid = WAR.Person[emeny]["������"]
				end
			end
		else
			usepersonid = WAR.Person[WAR.CurID]["������"]
		end
	end

	--ս���в���ʹ�ü�Ѫ�����޵���Ʒ
	if JY.Status == GAME_WMAP and id >=14 and id <= 25 then
		return 0
	end
	
	if usepersonid >= 0 then
		--��ս����ʹ����Ʒ
		if JY.Status == GAME_MMAP or JY.Status == GAME_SMAP then
			if UseThingEffect(id, usepersonid, amount_use) == 1 then
				instruct_32(id, -amount_use)
				WaitKey()
			end
		--ս����ʹ����Ʒ
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

--������Ʒ
function UseThing_Type4(id)
	if JY.Status == GAME_WMAP then
		return War_UseAnqi(id)
	end
	return 0
end

--------------------------------------------------------------------------------
--------------------------------------�¼�����-----------------------------------

--�¼����������
--id��d*�еı��
--flag 1 �ո񴥷���2����Ʒ������3��·������
function EventExecute(id,flag)
    JY.CurrentD=id;

    oldEventExecute(flag)

    JY.CurrentD=-1;
end

--����ԭ�е�ָ��λ�õĺ���
--�ɵĺ������ָ�ʽΪ  oldevent_xxx();  xxxΪ�¼����
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


--�ı���ͼ���꣬�ӳ�����ȥ���ƶ�����Ӧ����
function ChangeMMap(x,y,direct)          --�ı���ͼ����
	JY.Base["��X"]=x;
	JY.Base["��Y"]=y;
	JY.Base["�˷���"]=direct;
end

--�ı䵱ǰ����
function ChangeSMap(sceneid,x,y,direct)       --�ı䵱ǰ����
    JY.SubScene=sceneid;
	JY.Base["��X1"]=x;
	JY.Base["��Y1"]=y;
	JY.Base["�˷���"]=direct;
end


--���(x1,y1)-(x2,y2)�����ڵ����ֵȡ�
--���û�в����������������Ļ����
--ע��ú�������ֱ��ˢ����ʾ��Ļ
function Cls(x1,y1,x2,y2)                    --�����Ļ
    if x1==nil then        --��һ������Ϊnil,��ʾû�в�������ȱʡ
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
        lib.DrawMMap(JY.Base["��X"],JY.Base["��Y"],GetMyPic());             --��ʾ����ͼ
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


--�����Ի���ʾ��Ҫ���ַ�������ÿ��n�������ַ���һ���Ǻ�
function GenTalkString(str,n)             					 --�����Ի���ʾ��Ҫ���ַ���
    local tmpstr="";
    for s in string.gmatch(str .. "*","(.-)%*") do           --ȥ���Ի��е�����*. �ַ���β����һ���Ǻţ������޷�ƥ��
        tmpstr=tmpstr .. s;
    end

    local newstr="";
    while #tmpstr>0 do
		local w=0;
		while w<#tmpstr do
		    local v=string.byte(tmpstr,w+1);	--��ǰ�ַ���ֵ
			if v>=128 then
			    w=w+2;
			else
			    w=w+1;
			end
			if w >= 2*n-1 then					--Ϊ�˱����������ַ�
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

--�����¶Ի�
function TalkEx(s,pid,flag,name)
	say(s,pid,flag,name)
end

function Talk(s,personid)            --��򵥰汾�Ի�
    local flag;
    if personid==0 then
        flag=1;
	else
	    flag=0;
	end
	TalkEx(s,personid,flag);
end

--����ָ�ռλ����
function instruct_test(s)
    DrawStrBoxWaitKey(s,C_ORANGE,24);
end

--����
function instruct_0()         --����
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

--�Ի�
--talkid: Ϊ���֣���Ϊ�Ի���ţ�Ϊ�ַ�������Ϊ�Ի�����
--headid: ͷ��id
--flag :�Ի���λ�ã�0 ��Ļ�Ϸ���ʾ, ���ͷ���ұ߶Ի�
--            1 ��Ļ�·���ʾ, ��߶Ի����ұ�ͷ��
--            2 ��Ļ�Ϸ���ʾ, ��߿գ��ұ߶Ի�
--            3 ��Ļ�·���ʾ, ��߶Ի����ұ߿�
--            4 ��Ļ�Ϸ���ʾ, ��߶Ի����ұ�ͷ��
--            5 ��Ļ�·���ʾ, ���ͷ���ұ߶Ի�
function instruct_1(talkid, headid, flag)
	local s = ReadTalk(talkid)
	if s == nil then
		return 
	end
	TalkEx(s, headid, flag)
end

--�õ���Ʒ
function instruct_2(thingid, num)
	if JY.Thing[thingid] == nil then
		return 
	end
	instruct_32(thingid, num)
	if JY.Thing[thingid]["����"] == 1 then
		JY.Thing[thingid]["װ���ȼ�"] = 6				
	end
	if num > 0 then
		DrawStrBoxWaitKey(string.format("�õ���Ʒ%sX%d", "����"..JY.Thing[thingid]["����"].."�ϡ�", num), C_ORANGE, CC.DefaultFont, 1)
	else
		DrawStrBoxWaitKey(string.format("ʧȥ��Ʒ%sX%d", "����"..JY.Thing[thingid]["����"].."�ϡ�", -num), C_ORANGE, CC.DefaultFont, 1)
	end
	if JY.Thing[thingid]["����"] == 1 then
		JY.Thing[thingid]["װ���ȼ�"] = 6	--�y
	end
end

--�޸�ָ������������¼�
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
	return DrawStrBoxYesNo(-1, -1, "�Ƿ���֮����(Y/N)?", C_ORANGE, CC.DefaultFont)
end

function instruct_6(warid, tmp, tmp, flag)
	return WarMain(warid, flag)
end

function instruct_7()
	instruct_test("ָ��7����")
end

function instruct_8(musicid)
	JY.MmapMusic = musicid
end

function instruct_9()
	return DrawStrBoxYesNo(-1, -1, "�Ƿ�Ҫ�����(Y/N)?", C_ORANGE, CC.DefaultFont)
end

--��Ӻ���
function instruct_10(personid)
	if JY.Person[personid] == nil then
		lib.Debug("instruct_10 error: person id not exist")
		return 
	end
	local add = 0
	--�޾Ʋ��������벻�����Լ�
	if personid ~= JY.Base["����"] then
		for i = 2, CC.TeamNum do
			if JY.Base["����" .. i] < 0 then
			  JY.Base["����" .. i] = personid
			  add = 1
			  if JY.Person[personid]["�۽�����"] > 0 and JY.Base["����"]>0 then
		      awakening(personid,1)
			  DrawStrBoxWaitKey("�������ѷ�������",C_GOLD, CC.DefaultFont)
	          end
			  break;
			end
		end
	end
	for i = 1, 4 do
		local id = JY.Person[personid]["Я����Ʒ" .. i]
		local n = JY.Person[personid]["Я����Ʒ����" .. i]
		if n < 0 then
			n = 0
		end
		if id >= 0 and n > 0 then
			instruct_2(id, n)
			JY.Person[personid]["Я����Ʒ" .. i] = -1
			JY.Person[personid]["Я����Ʒ����" .. i] = 0
		end
	end
	if add == 0 then
		lib.Debug("instruct_10 error: �����������")
		return
	end
end

function instruct_11()
	return DrawStrBoxYesNo(-1, -1, "�Ƿ�(Y/N)?", C_ORANGE, CC.DefaultFont)
end

--��Ϣ
function instruct_12(flag)
	for i = 1, CC.TeamNum do
		local id = JY.Base["����" .. i]
		if id >= 0 then
			JY.Person[id]["���˳̶�"] = 0
			JY.Person[id]["�ж��̶�"] = 0
			AddPersonAttrib(id, "����", math.huge)
			AddPersonAttrib(id, "����", math.huge)
			AddPersonAttrib(id, "����", math.huge)
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
	DrawString(CC.GameOverX, CC.GameOverY, JY.Person[0]["����"], RGB(0, 0, 0), CC.DefaultFont)
	local x = CC.ScreenW - 9 * CC.DefaultFont
	DrawString(x, 10, os.date("%Y-%m-%d %H:%M"), RGB(216, 20, 24), CC.DefaultFont)
	DrawString(x, 10 + CC.DefaultFont + CC.RowPixel, "�ڵ����ĳ��", RGB(216, 20, 24), CC.DefaultFont)
	DrawString(x, 10 + (CC.DefaultFont + CC.RowPixel) * 2, "�����˿ڵ�ʧ����", RGB(216, 20, 24), CC.DefaultFont)
	DrawString(x, 10 + (CC.DefaultFont + CC.RowPixel) * 3, "�ֶ���һ�ʡ�����", RGB(216, 20, 24), CC.DefaultFont)
	local loadMenu = {
	{"ѡ�����", nil, 1},  
	{"�ؼ�˯��ȥ", nil, 1}}
	local y = CC.ScreenH - 4 * (CC.DefaultFont + CC.RowPixel) - 10
	local sl = ShowMenu(loadMenu, #loadMenu, 0, x, y, 0, 0, 0, 0, CC.DefaultFont, C_ORANGE, C_WHITE)
	if sl ==1 then
		local r = SaveList();
			if r < 1 then
				JY.Status = GAME_END
				return 0;
			end
			
			Cls();
			DrawStrBox(-1,CC.StartMenuY,"���Ժ�...",C_GOLD,CC.DefaultFont);
			ShowScreen();
			local result = LoadRecord(r);
			if result ~= nil then
				instruct_15();
				return 0;
			end
		if JY.Base["����"] ~= -1 then
			JY.Status = GAME_SMAP
			JY.SubScene = JY.Base["����"]
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
	local xwperson;	--�ж�����
	--��ս���в���Ч�����ڴ���������ж�
	if personid == JY.Base["����"] and JY.Status ~= GAME_WMAP then
		xwperson = 0
	else
		xwperson = personid
	end
	for i = 1, CC.TeamNum do
		if xwperson == JY.Base["����" .. i] then
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
		if JY.Base["��Ʒ" .. i] == thingid then
			return true
		end
	end
	return false
end

function instruct_19(x, y)
	JY.Base["��X1"] = x
	JY.Base["��Y1"] = y
	JY.SubSceneX = 0
	JY.SubSceneY = 0
end

function instruct_20()
	if JY.Base["����" .. CC.TeamNum] >= 0 then
		return true
	end
	return false
end

--��Ӻ���
function instruct_21(personid)
	if JY.Person[personid] == nil then
		lib.Debug("instruct_21 error: personid not exist")
		return 
	end
	local j = 0
	for i = 1, CC.TeamNum do
		if personid == JY.Base["����" .. i] then
		  j = i
		end
	end
	if j == 0 then
		return 
	end
	for i = j + 1, CC.TeamNum do
		JY.Base["����" .. i - 1] = JY.Base["����" .. i]
	end
	JY.Base["����" .. CC.TeamNum] = -1
	if JY.Person[personid]["����"] >= 0 then
		JY.Thing[JY.Person[personid]["����"]]["ʹ����"] = -1
		JY.Person[personid]["����"] = -1
	end
	if JY.Person[personid]["����"] >= 0 then
		JY.Thing[JY.Person[personid]["����"]]["ʹ����"] = -1
		JY.Person[personid]["����"] = -1
	end
	if JY.Person[personid]["��Ʒ"] >= 0 then
		JY.Thing[JY.Person[personid]["��Ʒ"]]["ʹ����"] = -1
		JY.Person[personid]["��Ʒ"] = -1
	end
	if JY.Person[personid]["������Ʒ"] >= 0 then
		JY.Thing[JY.Person[personid]["������Ʒ"]]["ʹ����"] = -1
		JY.Person[personid]["������Ʒ"] = -1
	end
	JY.Person[personid]["��Ʒ��������"] = 0
end

function instruct_22()
	for i = 1, CC.TeamNum do
		if JY.Base["����" .. i] >= 0 then
			JY.Person[JY.Base["����" .. i]]["����"] = 0
		end
	end
end

function instruct_23(personid, value)
	JY.Person[personid]["�ö�����"] = value
	AddPersonAttrib(personid, "�ö�����", 0)
end

function instruct_24()
	instruct_test("ָ��24����")
end

--��ͷ�ƶ�
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
	local v = JY.Person[personid]["Ʒ��"]
	if vmin <= v and v <= vmax then
		return true
	else
		return false
	end
end

function instruct_29(personid, vmin, vmax)
	local v = JY.Person[personid]["������"]
	if vmin <= v and v <= vmax then
		return true
	else
		return false
	end
end

--�����Զ��ƶ�
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
  x = JY.Base["��X1"] + CC.DirectX[direct + 1]
  y = JY.Base["��Y1"] + CC.DirectY[direct + 1]
  JY.Base["�˷���"] = direct
  JY.MyPic = GetMyPic()
  DtoSMap()
  if SceneCanPass(x, y) == true then
    JY.Base["��X1"] = x
    JY.Base["��Y1"] = y
  end
  JY.Base["��X1"] = limitX(JY.Base["��X1"], 1, CC.SWidth - 2)
  JY.Base["��Y1"] = limitX(JY.Base["��Y1"], 1, CC.SHeight - 2)
  DrawSMap()
  ShowScreen()
  return 1
end

function instruct_30_sub(direct)
  local x, y = nil, nil
  local d_pass = GetS(JY.SubScene, JY.Base["��X1"], JY.Base["��Y1"], 3)

  if d_pass >= 0 and d_pass ~= JY.OldDPass then
    EventExecute(d_pass, 3)
    JY.OldDPass = d_pass
    JY.oldSMapX = -1
    JY.oldSMapY = -1
    JY.D_Valid = nil
  end

  JY.OldDPass = -1
  local isout = 0
  if (((JY.Scene[JY.SubScene]["����X1"] == JY.Base["��X1"] and JY.Scene[JY.SubScene]["����Y1"] == JY.Base["��Y1"]) or JY.Scene[JY.SubScene]["����X2"] ~= JY.Base["��X1"] or JY.Scene[JY.SubScene]["����Y2"] == JY.Base["��Y1"] or JY.Scene[JY.SubScene]["����X3"] == JY.Base["��X1"] and JY.Scene[JY.SubScene]["����Y3"] == JY.Base["��Y1"])) then
    isout = 1
  end
  if isout == 1 then
    JY.Status = GAME_MMAP
    lib.PicInit()
    CleanMemory()
    lib.ShowSlow(20, 1)
    if JY.MmapMusic < 0 then
      JY.MmapMusic = JY.Scene[JY.SubScene]["��������"]
    end
    Init_MMap()
    JY.SubScene = -1
    JY.oldSMapX = -1
    JY.oldSMapY = -1
    lib.DrawMMap(JY.Base["��X"], JY.Base["��Y"], GetMyPic())
    lib.ShowSlow(20, 0)
    lib.GetKey()
    return 
  end
  if JY.Scene[JY.SubScene]["��ת����"] >= 0 and JY.Base["��X1"] == JY.Scene[JY.SubScene]["��ת��X1"] and JY.Base["��Y1"] == JY.Scene[JY.SubScene]["��ת��Y1"] then
    JY.SubScene = JY.Scene[JY.SubScene]["��ת����"]
    lib.ShowSlow(20, 1)
    if JY.Scene[JY.SubScene]["�⾰���X1"] == 0 and JY.Scene[JY.SubScene]["�⾰���Y1"] == 0 then
      JY.Base["��X1"] = JY.Scene[JY.SubScene]["���X"]
      JY.Base["��Y1"] = JY.Scene[JY.SubScene]["���Y"]
    else
      JY.Base["��X1"] = JY.Scene[JY.SubScene]["��ת��X2"]
      JY.Base["��Y1"] = JY.Scene[JY.SubScene]["��ת��Y2"]
    end
    Init_SMap(1)
    return 
  end
  AddMyCurrentPic()
  x = JY.Base["��X1"] + CC.DirectX[direct + 1]
  y = JY.Base["��Y1"] + CC.DirectY[direct + 1]
  JY.Base["�˷���"] = direct
  JY.MyPic = GetMyPic()
  DtoSMap()
  if SceneCanPass(x, y) == true then
    JY.Base["��X1"] = x
    JY.Base["��Y1"] = y
  end
  JY.Base["��X1"] = limitX(JY.Base["��X1"], 1, CC.SWidth - 2)
  JY.Base["��Y1"] = limitX(JY.Base["��Y1"], 1, CC.SHeight - 2)
  DrawSMap()
  ShowScreen()
  return 1
end

--����Ǯ�Ƿ��㹻
function instruct_31(num)
	local r = false
	for i = 1, CC.MyThingNum do
		if JY.Base["��Ʒ" .. i] == CC.MoneyID and num <= JY.Base["��Ʒ����" .. i] then
			r = true
		end
	end
	return r
end

--���ӣ�������Ʒ�ĺ���
function instruct_32(thingid, num)
	local p = 1
	--���ȿ��ƻ�ȡ����������30000�Զ���30000
	if num > 30000 then
		num = 30000
	end
	for i = 1, CC.MyThingNum do
		if JY.Base["��Ʒ" .. i] == thingid then
			--�Ѿ���һ����������Ʒ��������֮�󳬹�30000����30000��
			if (JY.Base["��Ʒ����" .. i] + num) > 30000 then
				JY.Base["��Ʒ����" .. i] = 30000
			else
				JY.Base["��Ʒ����" .. i] = JY.Base["��Ʒ����" .. i] + num
			end
			p = i
			break;
		elseif JY.Base["��Ʒ" .. i] == -1 then
			JY.Base["��Ʒ" .. i] = thingid
			JY.Base["��Ʒ����" .. i] = num
			p = i
			break;
		end
	end
	
	--��ȡ������ʱ��ˢ��������ʾ
	if thingid == CC.MoneyID then
		JY.GOLD = JY.Base["��Ʒ����" .. p]
	end
  
  
	--������飬����15������
	--��õ�ʱ�������
	if num > 0 and thingid >= CC.BookStart and thingid < CC.BookStart + CC.BookNum then
		JY.Person[0]["����"] = JY.Person[0]["����"] + 15;
		JY.Base["��������"] = JY.Base["��������"] + 1
		--�޾Ʋ�������520�������Ʒ���ж�����ժȡ���������
		--�滻�������ͼ
		JY.Person[520]["Ʒ��"] = JY.Person[520]["Ʒ��"] + 1
		--���Ѿ��ֹ���������£�����������521�������Ʒ���ж��Ƿ��Ѵ��������¼�
		if JY.Person[521]["Ʒ��"] == 1 then
			addevent(70, 65, 1, 4119, 1, 2366*2)
		end
		--12��󴥷��»�ɽ�۽��¼�
		if JY.Base["��������"] == 12 then
			addevent(80, 19, 1, 4141, 1, 4335*2)	--��
		end
	end
	
	if JY.Base["��Ʒ����" .. p] <= 0 then
		for i = p + 1, CC.MyThingNum do
			JY.Base["��Ʒ" .. i - 1] = JY.Base["��Ʒ" .. i]
			JY.Base["��Ʒ����" .. i - 1] = JY.Base["��Ʒ����" .. i]
		end
		JY.Base["��Ʒ" .. CC.MyThingNum] = -1
		JY.Base["��Ʒ����" .. CC.MyThingNum] = 0
	end
	if JY.Thing[thingid]["����"] == 1 then
		JY.Thing[thingid]["װ���ȼ�"] = 6	--�y
	end
end

--����ѧ���书
function instruct_33(personid, wugongid, flag)
	local xwperson;	--�ж�Ҫϴ�书����
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end
	local add = 0
	for i = 1, CC.Kungfunum do
    if JY.Person[xwperson]["�书" .. i] == 0 then
		JY.Person[xwperson]["�书" .. i] = wugongid
		JY.Person[xwperson]["�书�ȼ�" .. i] = 0
		add = 1
		break;
    end
	end
	if add == 0 then
		JY.Person[xwperson]["�书12"] = wugongid
		JY.Person[xwperson]["�书�ȼ�12"] = 0
	end
	if flag == 0 then
		DrawStrBoxWaitKey(string.format("%s ѧ���书 %s", JY.Person[xwperson]["����"], JY.Wugong[wugongid]["����"]), C_ORANGE, CC.DefaultFont)
	end
end

--�ı�����
function instruct_34(id, value)
	local xwperson;	--�ж�����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "����", value)
	DrawStrBoxWaitKey(JY.Person[xwperson]["����"] .. str, C_ORANGE, CC.DefaultFont)
end

--ϴ�书����
function instruct_35(personid, id, wugongid, wugonglevel)
	local xwperson;	--�ж�Ҫϴ�书����
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end
	if id >= 0 then
		JY.Person[xwperson]["�书" .. id + 1] = wugongid
		JY.Person[xwperson]["�书�ȼ�" .. id + 1] = wugonglevel
	else
		local flag = 0
		for i = 1, CC.Kungfunum do
			if JY.Person[xwperson]["�书" .. i] == 0 then
				flag = 1
				JY.Person[xwperson]["�书" .. i] = wugongid
				JY.Person[xwperson]["�书�ȼ�" .. i] = wugonglevel
				return 
			end
		end
		if flag == 0 then
			JY.Person[xwperson]["�书" .. 1] = wugongid
			JY.Person[xwperson]["�书�ȼ�" .. 1] = wugonglevel
		end
	end
end

function instruct_36(sex)
	if JY.Person[0]["�Ա�"] == sex then
		return true
	else
		return false
	end
end

--�޾Ʋ������Ӽ�������ʾ
function instruct_37(v)
	AddPersonAttrib(0, "Ʒ��", v)
	if v < 0 then
		for i = 1, 15 do
			if JY.Restart == 1 then
				break
			end
			local y_off = i * 2 + CC.DefaultFont + CC.RowPixel
			DrawString(CC.ScreenW/2-CC.DefaultFont*5, CC.ScreenH/4 - CC.DefaultFont - CC.RowPixel + y_off, "��ĵ���ָ���½���"..-v.."��", M_DeepSkyBlue, CC.DefaultFont)
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
			DrawString(CC.ScreenW/2-CC.DefaultFont*5, CC.ScreenH/4 + 30 + CC.DefaultFont + CC.RowPixel - y_off, "��ĵ���ָ��������"..v.."��", PinkRed, CC.DefaultFont)
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
	JY.Scene[sceneid]["��������"] = 0
end

function instruct_40(v)
	JY.Base["�˷���"] = v
	JY.MyPic = GetMyPic()
end

function instruct_41(personid, thingid, num)
	local k = 0
	for i = 1, 4 do
		if JY.Person[personid]["Я����Ʒ" .. i] == thingid then
			JY.Person[personid]["Я����Ʒ����" .. i] = JY.Person[personid]["Я����Ʒ����" .. i] + num
			k = i
			break;
		end
	end
	if k > 0 and JY.Person[personid]["Я����Ʒ����" .. k] <= 0 then
		JY.Person[personid]["Я����Ʒ" .. k] = -1
	end
	if k == 0 then
		for i = 1, 4 do
			if JY.Person[personid]["Я����Ʒ" .. i] == -1 then
				JY.Person[personid]["Я����Ʒ" .. i] = thingid
				JY.Person[personid]["Я����Ʒ����" .. i] = num
				break;
			end
		end
	end
end

function instruct_42()
	local r = false
	for i = 1, CC.TeamNum do
		if JY.Base["����" .. i] >= 0 and JY.Person[JY.Base["����" .. i]]["�Ա�"] == 1 then
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

--����
function instruct_45(id, value)
	local xwperson;	--�ж�Ҫϴ�书����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "�Ṧ", value)
end

--����
function instruct_46(id, value)
	local xwperson;	--�ж�Ҫϴ�书����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "�������ֵ", value)
	AddPersonAttrib(xwperson, "����", 0)
end

--�ӹ�
function instruct_47(id, value)
	local xwperson;	--�ж�Ҫϴ�书����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "������", value)
end

--�ӷ�
function add_deffense(id, value)
	local xwperson;	--�ж�Ҫϴ�书����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "������", value)
end

--��Ѫ
function instruct_48(id, value)
	local xwperson;	--�ж�Ҫϴ�书����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	local add, str = AddPersonAttrib(xwperson, "�������ֵ", value)
	AddPersonAttrib(xwperson, "����", value)
end

--ϴ����
function instruct_49(personid, value)
	local xwperson;	--�ж�Ҫϴ��������
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end
	JY.Person[xwperson]["��������"] = value
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
	DrawStrBoxWaitKey(string.format("�����ڵ�Ʒ��ָ��Ϊ: %d", JY.Person[0]["Ʒ��"]), C_ORANGE, CC.DefaultFont)
end

function instruct_53()
	DrawStrBoxWaitKey(string.format("�����ڵ�����ָ��Ϊ: %d", JY.Person[0]["����"]), C_ORANGE, CC.DefaultFont)
end

function instruct_54()
	for i = 0, JY.SceneNum - 1 do
		JY.Scene[i]["��������"] = 0
	end
	JY.Scene[2]["��������"] = 2
	JY.Scene[38]["��������"] = 2
	JY.Scene[75]["��������"] = 1
	JY.Scene[80]["��������"] = 1
end

function instruct_55(id, num)
	if GetD(JY.SubScene, id, 2) == num then
		return true
	else
		return false
	end
end

function instruct_56(v)
	--JY.Person[0]["����"] = JY.Person[0]["����"] + v
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
      instruct_1(2854 + warnum, JY.Person[WAR.Data["����1"]]["ͷ�����"], 0)
      instruct_0()
      if WarMain(warnum + startwar, 0) == true then
        instruct_0()
        instruct_13()
        TalkEx("������λǰ���ϴͽ̣�", 0, 1)
        instruct_0()
      else
        instruct_15()
        return 
      end
    end
    if i < group - 1 then
      TalkEx(JY.Person[0]["���"].."����ս������*������Ϣ��ս��", 70, 0)
      instruct_0()
      instruct_14()
      lib.Delay(300)
      if JY.Person[0]["���˳̶�"] < 50 and JY.Person[0]["�ж��̶�"] <= 0 then
        JY.Person[0]["���˳̶�"] = 0
        AddPersonAttrib(0, "����", math.huge)
        AddPersonAttrib(0, "����", math.huge)
        AddPersonAttrib(0, "����", math.huge)
      end
      instruct_13()
      TalkEx("���Ѿ���Ϣ���ˣ�*��˭Ҫ���ϣ�", 0, 1)
      instruct_0()
    end
  end
  TalkEx("��������˭��**��������*��������***û��������", 0, 1)
  instruct_0()
  TalkEx("�����û����Ҫ��������λ*"..JY.Person[0]["���"].."��ս���������书����*��һ֮������������֮λ��*������λ"..JY.Person[0]["���"].."��ã�***������������*������������*������������*�ã���ϲ"..JY.Person[0]["���"].."������������*֮λ����"..JY.Person[0]["���"].."��ã������*���������ȡ�Ҳ���㱣�ܣ�", 70, 0)
  instruct_0()
  TalkEx("��ϲ"..JY.Person[0]["���"].."��", 12, 0)
  instruct_0()
  TalkEx("С�ֵܣ���ϲ�㣡", 64, 4)
  instruct_0()
  TalkEx("�ã���������ִ�ᵽ����*Բ��������ϣ�������λ��*��ͬ�����ٵ��һ�ɽһ�Σ�", 19, 0)
  instruct_0()
  instruct_14()
  for i = 24, 72 do
    instruct_3(-2, i, 0, 0, -1, -1, -1, -1, -1, -1, -2, -2, -2)
  end
  instruct_0()
  instruct_13()
  TalkEx("����ǧ����࣬����춴��*Ⱥ�ۣ��õ�����������֮λ*�����ȣ�*���ǡ�ʥ�á������أ�*Ϊʲ��û�˸����ң��ѵ���*�Ҷ���֪����*�������е����ˣ�", 0, 1)
  instruct_0()
  instruct_2(143, 1)
end

--ȫ���������
function instruct_59()
	for i = CC.TeamNum, 2, -1 do
		if JY.Base["����" .. i] >= 0 then
			instruct_21(JY.Base["����" .. i])
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

--ͨ�غ���
function instruct_62(id1, startnum1, endnum1, id2, startnum2, endnum2)
	--JY.MyPic = -1
	--instruct_44(id1, startnum1, endnum1, id2, startnum2, endnum2)
	--ShowScreen()
	lib.Delay(200)
	say("������Ϸ�͵������ˣ�ѡ�����¿�ʼ�ɽ�����һ��Ŀ����Ϸ��", 260, 5, "�޾Ʋ���")
  
	--������Ŀ
	if GetS(53, 0, 1, 5) >= CC.CircleNum-1 then
		local data = string.format("%s&&%d&&%d&&%d\n",JY.Person[0]["����"],GetS(4, 5, 5, 5),GetS(4, 5, 5, 4),JY.Base["�Ѷ�"]);
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
	DrawString(350, 200, "Ƭβ�����Ĵ�ɽ��", C_WHITE, CC.DefaultFont)
	DrawString(375, 300, "�ݳ����Ϸ���", C_WHITE, CC.DefaultFont)
	ShowScreen()
  
	PlayMIDI(116)
	local stime = 0
	local a = 1
	local lyrics = {
	{530,"�� �����Сʱ ���Ĵ�ĥ"},
	{560,"����ϷΪ��ʲô��Ц��"},
	{590,"ǰ��Ԫ�Ϲ��������"},
	{610,"��Դ�������ֿɵ�"},
	{640,"�ҵ� �����˵� ȴ�κ� ������������"},
	{680,"�����Ѳ� ��ɵǮ�� ˭��������Ա���ʸ�"},
	{730,"��̳�� ����Ҫͳһ ��������ȥ"},
	{810,"���Ǯ��** �Ҽǵ��� ��������һ��"},
	{920,"���� ���� ��������"},
	{940,"��Ϯ���Ĵ�����Ĳ���"},
	{970,"���� ���� ��������"},
	{1000,"ֻҪ�������Ǿ����ҵ�"},
	{1030,"���� ���� ��������"},
	{1050,"������ɫ���ǵ�������"},
	{1070,"���� ���� ��������"},
	{1100,"���Ǯ���վ�Ҫ������"},
	{1220,"�� ��ı�ƻ��� ����̳����"},
	{1250,"������ Ӯ��ʲô ɾ���"},
	{1280,"����˭�� ԭ�������"},
	{1300,"��Դ�� �ұ��Ƴ�Ϯ"},
	{1320,"�ҵ���Ϸ���� ȴ�κ�"},
	{1350,"ͽ������һ��"},
	{1370,"û������ ��������"},
	{1390,"˭��������ҵ��ʸ�"},
	{1410,"С���� ��������ȥ �峺Ǯ����"},
	{1510,"���Ǯ��** �Ҽǵ��� �����Ļ���ȥ"},
	{1610,"���� ���� ��������"},
	{1630,"�������Ĵ������ʵ��"},
	{1660,"���� ���� ��������"},
	{1680,"������˵��û��������"},
	{1710,"���� ���� ��������"},
	{1730,"��������������������"},
	{1760,"���� ���� ��������"},
	{1780,"���Ǯ���վ�Ҫ������"},
	{2100,"���� ���� ��������"},
	{2120,"��Ϯ���Ĵ�����Ĳ���"},
	{2140,"���� ���� ��������"},
	{2170,"ֻҪ�������Ǿ����ҵ�"},
	{2190,"���� ���� ��������"},
	{2210,"������ɫ���ǵ�������"},
	{2240,"���� ���� ��������"},
	{2260,"���Ǯ���վ�Ҫ������"},
	{2310,"��̳�� ����Ҫͳһ ��������ȥ"},
	{2390,"���Ǯ��** �Ҽǵ��� ��������һ��"},
	{2700,"ȫ���� ��л֧��"},
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
			DrawString(350, 200, "Ƭβ�����Ĵ�ɽ��", C_WHITE, size)
			DrawString(375, 300, "�ݳ����Ϸ���", C_WHITE, size)
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
	JY.Person[personid]["�Ա�"] = sex
end

--�޾Ʋ������̵�����
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
	TalkEx("��λС�磬������ʲô��Ҫ�ģ�С�����Ķ�����Ǯ���Թ�����", headid, 0,"�̼�")
	local menu = {}
	for i = 1, 6 do
		local thingid = JY.Shop[id]["��Ʒ" .. i]
		if thingid ~= -1 then
			menu[i] = {}
			menu[i][1] = string.format("%-12s %5d", JY.Thing[thingid]["����"], JY.Shop[id]["��Ʒ�۸�" .. i])
			menu[i][2] = nil
			if JY.Shop[id]["��Ʒ����" .. i] > 0 then
			  menu[i][3] = 1
			else
			  menu[i][3] = 0
			end
		end
	end

	--3����ǰû�л�Ԫ
	if JY.Base["��������"] < 3 and id == 0 then
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
		if instruct_31(JY.Shop[id]["��Ʒ�۸�" .. r]) == false then
			TalkEx("�ǳ���Ǹ�������ϵ�Ǯ�ƺ�������", headid, 0,"�̼�")
		else
			JY.Shop[id]["��Ʒ����" .. r] = JY.Shop[id]["��Ʒ����" .. r] - 1
			instruct_32(CC.MoneyID, -JY.Shop[id]["��Ʒ�۸�" .. r])
			instruct_32(JY.Shop[id]["��Ʒ" .. r], 1)
			TalkEx(JY.Person[0]["���"].."����С��Ķ�������֤������ڡ�", headid, 0,"�̼�")
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


--ѡ���ÿ��ѡ����߿�
--title ����
--str ���� *����
--button ѡ��
--num ѡ��ĸ�����һ��Ҫ��ѡ���Ӧ����
--headid ��ʾ��������ߵ���ͼ���������ֵ����ʾ��ͼ
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
				--�޾Ʋ���������pass in select��������ѡ�񲻵�������·��ز����ڵ�ѡ��
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


--��ʾ���߿������
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
	--���س�����ͼ�ļ�
	lib.PicLoadFile(CC.SMAPPicFile[1], CC.SMAPPicFile[2], 0)

	lib.LoadPNGPath(CC.HeadPath, 1, CC.HeadNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.BodyPath, 90, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	
	lib.LoadPNGPath(CC.PTPath, 95, CC.PTNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.XTPath, 91, CC.XTNum, limitX(CC.ScreenW/936*100,0,100))	--UI			
	lib.LoadPNGPath(CC.BJPath, 10, CC.BJNum, limitX(CC.ScreenW/936*100,0,100))		--��Ѩ
	lib.LoadPNGPath(CC.UIPath, 96, CC.UINum, limitX(CC.ScreenW/936*100,0,100))
	lib.PicLoadFile(CC.BJ[1], CC.BJ[2], 92)
	
	lib.PicLoadFile(CC.ThingPicFile[1], CC.ThingPicFile[2], 2, 100, 100)
  
	PlayMIDI(JY.Scene[JY.SubScene]["��������"])
	JY.oldSMapX = -1
	JY.oldSMapY = -1
	JY.SubSceneX = 0
	JY.SubSceneY = 0
	JY.OldDPass = -1
	JY.D_Valid = nil
	DrawSMap()
	lib.GetKey()
	if showname == 1 then
		DrawStrBox(-1, 10, JY.Scene[JY.SubScene]["����"], C_WHITE, CC.DefaultFont)
		ShowScreen()
		WaitKey()
	end
  
	AutoMoveTab = {[0] = 0}
end

--�¶Ի���ʽ
--��������ַ�
--��ͣ����������������
--������ɫ��=red��=gold��=black��=white��=orange
--�����ַ���ʾ�ٶȣ�,��,��,��,��,��,��,��,��,��
--����������ӣģ�
--���ƻ��У�   ��ҳ��
--�δ����Լ����������
function say(s,pid,flag,name)          --�����¶Ի�

if flag == nil or flag < 1 then flag = 1 end	
	if pid == nil then pid = 0 end
	if JY.Restart == 1 then
		return
	end
    local picw=130;       --���ͷ��ͼƬ���
	local pich=130;
	local talkxnum=20;         --�Ի�һ������
	local talkynum=3;          --�Ի�����
	local dx=2;
	local dy=2;
    local boxpicw=picw+10;
	local boxpich=pich+10;
	local boxtalkw=talkxnum*CC.DefaultFont+10;
	local boxtalkh=boxpich-27;
	local headid = pid;
	--ͷ���ȷ��
	if pid == 0 then
		if JY.Base["��׼"] > 0 then
			if JY.Person[0]["�Ա�"] == 0 then
				headid = 280 + JY.Base["��׼"]
			else
				headid = 500 + JY.Base["��׼"]
			end
		--����
		elseif JY.Base["����"] > 0 then
			if JY.Person[0]["�Ա�"] == 0 then
				headid = 290
			else
				headid = 368
			end
		else
			headid = JY.Person[pid]["ͷ�����"]
			if headid == 217 then
			headid = 389
			end
			if headid == 93 then
			   if JY.Base["����"] == 507 then
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
			   if (pid == 0 and JY.Base["����"] == 646) or pid == 646 then
			   headid = 584
			   end
	end
name=name or JY.Person[pid]["����"]
    local talkBorder=(pich-talkynum*CC.DefaultFont)/(talkynum+1)-5;

	--��ʾͷ��ͶԻ�������
    local xy={ [0]={headx=dx,heady=dy,
	                talkx=dx+boxpicw+2,talky=dy+27,
					namex=dx+boxpicw+2,namey=dy,
					showhead=1},--����
                   {headx=CC.ScreenW-1-dx-boxpicw-80,heady=CC.ScreenH-dy-boxpich+40,
				    talkx=CC.ScreenW-1-dx-boxpicw-boxtalkw-2-150,talky= CC.ScreenH-dy-boxpich+27,
					namex=CC.ScreenW-1-dx-boxpicw-26,namey=CC.ScreenH-dy-boxpich+100,
					showhead=1},--����
                   {headx=dx,heady=dy,
				   talkx=dx+boxpicw-43,talky=dy+27,
					namex=dx+boxpicw+2,namey=dy,
				   showhead=0},--����
                   {headx=CC.ScreenW-1-dx-boxpicw,heady=CC.ScreenH-dy-boxpich,
				   talkx=CC.ScreenW-1-dx-boxpicw-boxtalkw-2,talky= CC.ScreenH-dy-boxpich+27,
					namex=CC.ScreenW-1-dx-boxpicw-96,namey=CC.ScreenH-dy-boxpich,
					showhead=1},
                   {headx=CC.ScreenW-1-dx-boxpicw,heady=dy,
				    talkx=CC.ScreenW-1-dx-boxpicw-boxtalkw-2,talky=dy+27,
					namex=CC.ScreenW-1-dx-boxpicw-96,namey=dy,
					showhead=1},--����
                   {headx=dx+68,heady=CC.ScreenH-dy-boxpich+40,
				   talkx=dx+boxpicw+2+160,talky=CC.ScreenH-dy-boxpich+27,
					namex=dx+boxpicw-50,namey=CC.ScreenH-dy-boxpich+100,
				   showhead=1}, --����
			}

	if pid==0 then
	   if name ~= JY.Person[pid]["����"] then 
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
		local T1={"��","��","��","��","��","��","��","��","��","��"}
		local T2={{"��",C_RED},{"��",C_GOLD},{"��",C_BLACK},{"��",C_WHITE},{"��",C_ORANGE},{"��",LimeGreen},{"��",M_DeepSkyBlue},{"��",LightPurple}}
		local T3={{"��",CC.FontNameSong},{"��",CC.FontNameHei},{"��",CC.FontName}}
		--�����������Բ�ͬ����ͬһ����ʾ����Ҫ΢�������꣬�Լ��ֺ�
		--��Ĭ�ϵ�����Ϊ��׼�����������ƣ�ϸ��������
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
			--str='��'
			s=string.sub(s,2,-1)
		else
			if string.byte(s,1,1) > 127 then		--�жϵ�˫�ַ�
				str=string.sub(s,1,2)
				s=string.sub(s,3,-1)
			else
				str=string.sub(s,1,1)
				s=string.sub(s,2,-1)
			end
		end
		--��ʼ�����߼�
		if str=='*' then
		elseif str=="��" then
			cx=0
			cy=cy+1
			if cy==3 then
				cy=0
				page=0
			end
		elseif str=="��" then
			cx=0
			cy=0
			page=0
		elseif str=="��" then
			ShowScreen();
			--WaitKey();
			lib.Delay(50)
		elseif str=="��" then
			ShowScreen();
			WaitKey();
			--lib.Delay(50)
		elseif str=="��" then
			s=JY.Person[pid]["����"]..s
		elseif str=="��" then
			s=JY.Person[0]["����"]..s
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
		--�����ҳ������ʾ���ȴ�����
		if page==0 or string.len(s)<1 then
			ShowScreen();
			--WaitKey();	--�y
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

--�ָ��ַ���
--szFullString�ַ���
--szSeparator�ָ��
--��������,�ָ������
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

--����һ���������İ�ɫ�����Ľǰ���
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

--�����Ľǰ����ķ���
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

--��ʼ������ͼ
function Init_MMap()
	lib.PicInit()
	lib.LoadMMap(CC.MMapFile[1], CC.MMapFile[2], CC.MMapFile[3], CC.MMapFile[4], CC.MMapFile[5], CC.MWidth, CC.MHeight, JY.Base["��X"], JY.Base["��Y"])
  
	lib.PicLoadFile(CC.MMAPPicFile[1], CC.MMAPPicFile[2], 0)
  
	lib.LoadPNGPath(CC.HeadPath, 1, CC.HeadNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.BodyPath, 90, CC.BodyNum, limitX(CC.ScreenW/936*100,0,100))	
	lib.LoadPNGPath(CC.PTPath, 95, CC.PTNum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.XTPath, 91, CC.XTNum, limitX(CC.ScreenW/936*100,0,100))	--UI		
	lib.LoadPNGPath(CC.UIPath, 96, CC.UINum, limitX(CC.ScreenW/936*100,0,100))
	lib.LoadPNGPath(CC.BJPath, 10, CC.BJNum, limitX(CC.ScreenW/936*100,0,100))		--��Ѩ
  lib.PicLoadFile(CC.BJ[1], CC.BJ[2], 92)
	lib.PicLoadFile(CC.ThingPicFile[1], CC.ThingPicFile[2], 2, 100, 100)

	JY.EnterSceneXY = nil
	JY.oldMMapX = -1
	JY.oldMMapY = -1
	PlayMIDI(JY.MmapMusic)
  
	AutoMoveTab = {[0] = 0}
end

--�Զ���Ľ����ӳ����ĺ���
--��Ҫ������ӳ������
--x�����ӳ����������X���꣬����-1��Ĭ��Ϊ���X
--y�����ӳ����������Y���꣬����-1��Ĭ��Ϊ���Y
--direct������Եķ���
function My_Enter_SubScene(sceneid,x,y,direct)
	--�Ӵ��ͼ�����ӳ���ǰ�Զ����浽10�ŵ�
	if JY.Status == GAME_MMAP then
		SaveRecord(10)
	end
	JY.SubScene = sceneid;
	local flag = 1;   --�Ƿ��Զ����xy����, 0�ǣ�1��
	if x == -1 and y == -1 then
		JY.Base["��X1"]=JY.Scene[sceneid]["���X"];
		JY.Base["��Y1"]=JY.Scene[sceneid]["���Y"];
	else
		JY.Base["��X1"] = x;
		JY.Base["��Y1"] = y;
		flag = 0;
	end
	
	if direct > -1 then
		JY.Base["�˷���"] = direct;
	end
 			
	
	if JY.Status == GAME_MMAP then
		CleanMemory();
		lib.UnloadMMap();
	end
	lib.ShowSlow(20,1)

	JY.Status=GAME_SMAP;  --�ı�״̬
	JY.MmapMusic=-1;

	JY.Base["�˴�"]=0;
	JY.MyPic=GetMyPic(); 
  
	--�⾰����Ǹ��ѵ㣬��Щ�ӳ�����ͨ����ת�ķ�ʽ����ģ���Ҫ�ж�
	--����Ŀǰ���ֻ����һ���ӳ�����ת�����Բ���Ҫ����ѭ���ж�
	local sid = JY.Scene[sceneid]["��ת����"];
  
	if sid < 0 or (JY.Scene[sid]["�⾰���X1"] <= 0 and JY.Scene[sid]["�⾰���Y1"] <= 0) then
		JY.Base["��X"] = JY.Scene[sceneid]["�⾰���X1"];  --�ı���ӳ������XY����
		JY.Base["��Y"] = JY.Scene[sceneid]["�⾰���Y1"];
	else
		JY.Base["��X"] = JY.Scene[sid]["�⾰���X1"];  --�ı���ӳ������XY����
		JY.Base["��Y"] = JY.Scene[sid]["�⾰���Y1"];
	end


	Init_SMap(flag);  --���³�ʼ����ͼ
  
	if flag == 0 then    --������Զ���λ�ã��ȴ��͵��Ǹ�λ�ã�����ʾ��������
		DrawStrBox(-1,10,JY.Scene[JY.SubScene]["����"],C_WHITE,CC.DefaultFont);
		ShowScreen();
		WaitKey();
	end
  
	Cls();	
end

--������Ϣ
function JYZTB()
	local tnd = math.fmod(JY.Base["�Ѷ�"],#MODEXZ2);
	if tnd == 0 then
		tnd = #MODEXZ2
	end
	local zjlx;
	if JY.Base["��׼"] > 0 then
		zjlx = "��׼"
	elseif JY.Base["����"] > 0 then
		zjlx = "����"
	elseif JY.Base["����"] > 0 then
		zjlx = "����"
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
	if JY.Base["����"]> 0 and JY.Base["����"] > 0 then----�����
    as = CC.FontSmall2 + CC.RowPixel	
	end
	DrawBox(10, 10, 10 + 10*CC.FontSmall2, 20+ 5*(CC.FontSmall2 + CC.RowPixel)+as, M_SandyBrown)
	DrawString(15, 15, "��а", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*2+4, 14, JY.Person[0]["Ʒ��"], M_Silver, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15, "��", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*5+4, 16, "��", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*6+8, 15, JY.GOLD, Dark_Gold, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), string.format("����ʱ�� %2dʱ%2d��", t1, t2), M_SandyBrown, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "�Ѷ�", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*2+4, 15+i*(CC.FontSmall2+CC.RowPixel), MODEXZ2[tnd], Violet, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "��������", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15+i*(CC.FontSmall2+CC.RowPixel), JY.Base["��������"], PinkRed, CC.FontSmall2)
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "��������", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15+i*(CC.FontSmall2+CC.RowPixel), zjlx, Violet, CC.FontSmall2)
	if JY.Base["����"]> 0 and JY.Base["����"] > 0 then----�����
	i = i + 1
	DrawString(15, 15+i*(CC.FontSmall2+CC.RowPixel), "��������", M_SandyBrown, CC.FontSmall2)
	DrawString(15+CC.FontSmall2*4+4, 15+i*(CC.FontSmall2+CC.RowPixel), JY.Person[645]["����"], Violet, CC.FontSmall2)	
	end
end

function QZXS(s)
	DrawStrBoxWaitKey(s, C_GOLD, CC.DefaultFont)
end

--��ʾ�书������
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

--�����ͼ����
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


---�Ծ��ν�����Ļ����
--���ؼ��ú�ľ��Σ����������Ļ�����ؿ�
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

--������ͼ�ı��γɵ�Clip�ü�
--(dx1,dy1) ����ͼ�ͻ�ͼ���ĵ������ƫ�ơ��ڳ����У��ӽǲ�ͬ�����Ƕ�ʱ�õ�
--pic1 �ɵ���ͼ���
--id1 ��ͼ�ļ����ر��
--(dx2,dy2) ����ͼ�ͻ�ͼ���ĵ��ƫ��
--pic2 �ɵ���ͼ���
--id2 ��ͼ�ļ����ر��
--���أ��ü����� {x1,y1,x2,y2}
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

--�ϲ�����
function MergeRect(r1, r2)
  local res = {}
  res.x1 = math.min(r1.x1, r2.x1)
  res.y1 = math.min(r1.y1, r2.y1)
  res.x2 = math.max(r1.x2, r2.x2)
  res.y2 = math.max(r1.y2, r2.y2)
  return res
end

--�Զ����¼�
function NEvent(keypress)
	NEvent2(keypress)		--ʮ�ı�����֮��õ�5000����ϴ����
	NEvent3(keypress)		--��� ���˷����ҽ���
	NEvent4(keypress)		--��������
	NEvent6(keypress)		--֩�붴 ������
	NEvent10(keypress)	--���������
	NEvent12(keypress)	--�黹���߽�
end

--��ʾ��Ӱ�ַ���
--���x,y��-1����ô��ʾ����Ļ�м�
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

--�޾Ʋ�������������ATM������������UI
function InputNum(str, minNum, maxNum, isEsc)
	local size = CC.DefaultFont;
	local b_space = size+CC.RowPixel
	local x=(CC.ScreenW-size*9-2*CC.MenuBorderPixel)/2;
	local y=(CC.ScreenH-size*9-2*CC.MenuBorderPixel)/2;
	local w=size*9+2*CC.MenuBorderPixel;
	local h=(b_space+CC.RowPixel*2)*6;
	local functional_button = {{name="ȷ��"},{name="���"},{name="���"},{name="ɾ��"},{name=0},{name=1},{name=2},{name=3},{name=4},{name=5},{name=6},{name=7},{name=8},{name=9}};
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

--�����ַ������Ƿ�����ɫ��־
--��DrawTxt��������
function AnalyString(str)
	local tlen = 0;
	local strcolor = {}
	--����Ƿ�����ɫ��־
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
				--����Ѿ�û��������ɫ��־��ֱ�������˳�ѭ��
				if f1 == nil then
					table.insert(strcolor, {str, nil});
					break;
				end
			else		--����Ҳ���������־��ֱ�������˳�ѭ��
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

--�浵�б�
function SaveList()
	--��ȡR*.idx�ļ�
	local idxData = Byte.create(24)
	Byte.loadfile(idxData, CC.R_IDXFilename[0], 0, 24)
	local idx = {}
	idx[0] = 0
	for i = 1, 6 do
		idx[i] = Byte.get32(idxData, 4 * (i - 1))
	end

	local table_struct = {}
	table_struct["����"]={idx[1]+8,2,10}
	table_struct["����"]={idx[1]+122,0,2}
  
	table_struct["����"]={idx[0]+2,0,2}
	table_struct["�Ѷ�"]={idx[0]+24,0,2}
	
	table_struct["��׼"]={idx[0]+26,0,2}
	table_struct["����"]={idx[0]+28,0,2}
	table_struct["����"]={idx[0]+30,0,2}
	
	table_struct["��������"]={idx[0]+32,0,2}
	
	table_struct["��������"]={idx[3]+2,2,10}
  
	--���Ǳ��
	table_struct["����1"]={idx[0]+34,0,2}
  
	--table_struct[WZ7]={idx[2]+88,0,2}
  
	--ʱ�䱣���ڳ���������
	--table_struct["��Ϸʱ��"]={(CC.SWidth*CC.SHeight*(14*6+4) + CC.SWidth + 2)*2, 0, 2}
	--S_XMax*S_YMax*(id*6+level)+y*S_XMax+x
	--14, 2, 1, 4
	--sFile,CC.TempS_Filename,JY.SceneNum,CC.SWidth,CC.SHeight

	--��ȡR*.grp�ļ�

	local len = filelength(CC.R_GRPFilename[0]);
	local data = Byte.create(len);
	
	--��ȡSMAP.grp
	local slen  = filelength(CC.S_Filename[0]);
	local sdata = Byte.create(slen);
	
	local menu = {};

	for i=1, CC.SaveNum do
	
		local name = "";
		--local lv = "";
		local sname = "";
		local nd = "";
		local time = "";
		--��������
		local tssl = "";
		--��������
		local zjlx = "";	
		--����
		local zz = "";
		
		if existFile(string.format('data/save/Save_%d',i)) then
			Byte.loadfilefromzip(data, string.format('data/save/Save_%d',i),'r.grp', 0, len);
			
			local pid = GetDataFromStruct(data,0,table_struct,"����1");
			
			name = GetDataFromStruct(data,pid*CC.PersonSize,table_struct,"����");
			zz = GetDataFromStruct(data,pid*CC.PersonSize,table_struct,"����");
			
			local wy = GetDataFromStruct(data,0,table_struct,"����");
			if wy == -1 then
				sname = "���ͼ";
			else
				sname = GetDataFromStruct(data,wy*CC.SceneSize,table_struct,"��������").."";
			end
			
			local lxid1 = GetDataFromStruct(data,0,table_struct,"��׼");
			local lxid2 = GetDataFromStruct(data,0,table_struct,"����");
			local lxid3 = GetDataFromStruct(data,0,table_struct,"����");
			
			if lxid1 > 0 then
				zjlx = "��׼"
			elseif lxid2 > 0 then
				zjlx = "����"
			elseif lxid3 > 0 then
				zjlx = "����"
			end
			
			local wz = GetDataFromStruct(data,0,table_struct,"�Ѷ�");
			tssl = GetDataFromStruct(data,0,table_struct,"��������").."��";

			nd = MODEXZ2[wz]
			
			--��Ϸʱ��
			--[[
			Byte.loadfile(sdata, string.format(CC.S_GRP,i), 0, slen);
			
			local t = GetDataFromStruct(sdata, 0, table_struct, "��Ϸʱ��")
			local t1, t2 = 0, 0
			while t >= 60 do
				t = t - 60
				t1 = t1 + 1
			end
			t2 = t
		  
			time = string.format("%2dʱ%2d��", t1, t2)]]
		end
		
		if i < 10 then
			menu[i] = {string.format("�浵%02d %-4s %-10s %-4s %4s %4s %-10s", i, zjlx, name, nd, zz, tssl, sname), nil, 1};
		else
			menu[i] = {string.format("�Զ��� %-4s %-10s %-4s %4s %4s %-10s", zjlx, name, nd, zz, tssl, sname), nil, 1};
		end
	end

	local menux=(CC.ScreenW-24*CC.DefaultFont-2*CC.MenuBorderPixel)/2
	local menuy=(CC.ScreenH - 9*(CC.DefaultFont+CC.RowPixel))/2

	local r=ShowMenu(menu,CC.SaveNum,10,menux,menuy,0,0,1,1,CC.DefaultFont,C_WHITE,C_GOLD)
	
	CleanMemory()
	return r;
end

--��̬��ʾ��ʾ
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

--�޾Ʋ���������¼�����
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

--�޾Ʋ�����ɾ���¼�����
function null(sid, pid)
	addevent(sid, pid, 0, 0, 0, 0)
end

--�޾Ʋ����������ѡ��˵�
function ShowMenu3(menu,itemNum,numShow,showRow,x1,y1,size,color,selectColor)
    local w=0;
    local h=0;   --�߿�Ŀ��
    local i,j=0,0;
    local col=0;     --ʵ�ʵ���ʾ�˵���
    local row=0;
    
    lib.GetKey();
    Cls();
    
    --��һ���µ�table
    local menuItem = {};
    local numItem = 0;                --��ʾ������
    
    --�ѿ�ѡΪ��������ﱣ�浽�µ�table
    for i,v in pairs(menu) do
        if v[3] ~= 0 then
            numItem = numItem + 1;
			menuItem[numItem] = {v[1],v[2],v[3],i};                --ע���4��λ�ã�����i��ֵ
        end
    end
    
    --����ʵ����ʾ�Ĳ˵�����
    if numShow==0 or numShow > numItem then
        col=numItem;
        row = 1;
    else
		--����
        col=numShow;
		--(��Ŀ����-1)/����=����
        row = math.modf((numItem-1)/col);
    end
    
    if showRow > row + 1 then
        showRow = row + 1;
    end

    --����߿�ʵ�ʿ��
    local maxlength=0;

	for i=1,numItem do
		if string.len(menuItem[i][1])>maxlength then
			maxlength=string.len(menuItem[i][1]);
		end
	end
	w=(size*maxlength/2+CC.RowPixel*2)*col+2*CC.MenuBorderPixel;
	h=showRow*(size+CC.RowPixel*2) + 2*CC.MenuBorderPixel;

    local start=0;             --��ʾ�ĵ�һ��

    local curx = 1;          --��ǰѡ����
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
		--˵�����ڴ�
		DrawString(x1+(size+CC.RowPixel)*3,y1-(size+CC.RowPixel)*2-CC.RowPixel,"PgUp/PgDn/�����ַ�ҳ",LimeGreen,size);
		DrawString(x1+(size+CC.RowPixel)*3,y1-(size+CC.RowPixel)*1,"���ƻ�ɫΪһ�� ������ɫΪ�߽�",LimeGreen,size);
		for i=start,showRow+start-1 do
			for j=1, col do
				local n = i*col+j;
				if n > numItem then
					break;
				end
                
				--���ò�ͬ�Ļ�����ɫ
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
		elseif keyPress==VK_PGUP or ktype == 6 then    --PgUp �� ��������
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
				elseif keyPress==VK_PGDN or ktype == 7 then    --PgDn �� ��������	
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
			if ktype == 2 or ktype == 3 then			--ѡ��
				--�޾Ʋ������Ӹ��߼��ж���ֹ����
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
			--�ո񣬻س���
			if keyPress==VK_SPACE or keyPress==VK_RETURN or ktype == 5 or (ktype == 3 and mk) then
				current = curx + cury*col;
				if menuItem[current][3]==3 then
				
				elseif menuItem[current][2]==nil then
					returnValue=current;
					break;
				else
					local r=menuItem[current][2](menuItem,current);               --���ò˵�����
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
        
	--����ֵ�������ȡ��4��λ�õ�ֵ
	if returnValue > 0 then
		return menuItem[returnValue][4]
	else
		return returnValue
	end
end

--�޾Ʋ�������ȡ�书����
function get_skill_power(personid, wugongid, wugonglvl)
	local power;
	local kfkind = JY.Wugong[wugongid]["�书����"]
	--�������书��10��������
	if wugonglvl == 11 then
		wugonglvl = 10
	end
	power = JY.Wugong[wugongid]["������"..wugonglvl]
	--����츳�ڹ�������
	if power < 1000 and Given_NG(personid, wugongid) then
		power = power + 100
		if power > 1000 then
			power = 1000
		end
	end
	--���Ѻ󷭱�������
	--������+ȫ�����ӣ�ȫ�潣��
	if wugongid == 39 and JY.Person[0]["�������"] > 0 then
		if match_ID(personid, 123) or match_ID(personid, 124) or match_ID(personid, 125) or match_ID(personid, 126) or
		match_ID(personid, 127) or match_ID(personid, 128) or match_ID(personid, 129) or match_ID(personid, 68) then
			power = power * 2
		end
	end
	if wugongid == 58 and JY.Person[0]["�������"] > 0 then
		if match_ID(personid, 448) then
			power = power * 2
		end
	end
	--ʯ���죬����
	if wugongid == 61 and JY.Person[0]["�������"] > 0 and match_ID(personid, 38) then
		power = power * 1.5
	end
	if wugongid == 1  and match_ID(personid, 400) then
		power = power + 300
	end
	--÷���磬�����׹�צ
	if wugongid == 11 and JY.Person[0]["�������"] > 0 and match_ID(personid, 78) then
		power = power * 1.5
	end
	--ΤһЦ����������
	if wugongid == 5 and JY.Person[0]["�������"] > 0 and match_ID(personid, 14) then
		power = power * 2
	end
	if wugongid == 55 and wglw(personid, 55)>1 then
		power = power + JY.Person[personid]["�Ṧ"]*wglw(personid, 55)
	end
	--��������ӥצ��
	if wugongid == 4 and JY.Person[0]["�������"] > 0 and match_ID(personid, 12) then
		power = power * 2
	end
	--��ϣ��ֽ�����
	if wugongid == 117 and JY.Person[0]["�������"] > 0 and match_ID(personid, 131) then
		power = power * 2
	end
	--�����ӣ����߰˴�
	if wugongid == 74 and JY.Person[0]["�������"] > 0 and match_ID(personid, 157) then
		power = power * 2
	end
	--������ս�����嶾��������
	if match_ID(personid, 83) and wugongid == 3 and JY.Status == GAME_WMAP and WAR.HTS > 0 then
		power = power * WAR.HTS
	end

	--����츳�⹦������
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
		power = power + math.modf(JY.Person[personid]["ʵս"]*1.25)
		end
	end	
	
	if wglw(personid, 52)>=1 and wugongid == 52 then----��ͷ������ʵս��������
		power = power + math.modf(JY.Person[personid]["ʵս"]*1.25)
	end
	
	if wglw(personid, 35)>1 and wugongid == 35 then----��ѩ���޶�ѩɽ����
		power = power + 500
	end

	if wglw(personid, 129)>1 and wugongid == 129 then----��ѩ���޶�ѩɽ����
		power = power + 200*wglw(personid, 129)
	end
	
	if nglw(personid,102)>0 then
		if power < 1000 then
			power = power + math.modf(JY.Person[personid]["ʵս"]*0.75)
		end
	end
	
	--��ɽ��÷�֣�����ͯ�ѣ������ӣ�����ˮ���������
	if wugongid == 14 then
		if match_ID(personid, 49) or match_ID(personid, 116) or match_ID(personid, 117) or match_ID(personid, 118) then
			for i = 1, CC.Kungfunum do
				if JY.Person[personid]["�书"..i] ~= 14 and JY.Person[personid]["�书�ȼ�"..i] == 999 then
					power = power + 50
				end
			end
		end
	end
	--���������������
	if wugongid >= 30 and wugongid <= 34 and WuyueJF(personid) then
		power = power + 500
	end
	--�����黭�������
	if (wugongid == 73 or wugongid == 72 or wugongid == 84 or wugongid == 142) and QinqiSH(personid) then
		power = power + 300
	end
	--�һ������������
	if (wugongid == 12 or wugongid == 18 or wugongid == 38) and TaohuaJJ(personid) then
		power = power + 200
	end
	if wugongid == 51 or wugongid == 58 then
		power = power + wglw(personid,wugongid)*(400 + JY.Person[personid]["ʵս"])
	end
	--�����񹦶԰׹�צ�������
	if wugongid == 11 and PersonKFJ(personid, 107) then
		power = power + 200*(nglw(personid,107)+1)
	end
	if wugongid == 53 and wglw(personid, 53)>=2 then
		power = power + JY.Person[personid]["������"]*(wglw(personid,53)-1)
	end
	--����װ�������ӳ�
	for i,v in ipairs(CC.ExtraOffense) do
		if v[1] == JY.Person[personid]["����"] and v[2] == wugongid then
			power = power + v[3]
		end
	end
	--ֻ��ս���в��еļӳ�
	if JY.Status == GAME_WMAP then
		--̫��ȭ����
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
	--��������˭������
	if match_ID(personid, 631) and JY.Person[personid]["����"] == 37 and JY.Wugong[wugongid]["�书����"] == 3 then
		power = power + 200
	end
	--�ֳ�Ӣ�����ž���
	if match_ID(personid, 605) then
		power = power * 1.1
	end

	return power
end

--�޾Ʋ������ж�һ�������Ƿ����������޷������
function TianYiWF(id)
	local tianyinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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

--�޾Ʋ������ж�һ�������Ƿ�������ħͬ�������
function ShenMO(id)
	local tianyinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
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
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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
    if JY.Person[id]["�����ڹ�"] == 102  then
	tianyinum = tianyinum + 1	
	end
	if JY.Person[id]["���һ���"] == 1 then
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
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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

--�޾Ʋ������ж��츳�⹦�ĺ���
function Given_WG(personid, WGid)
	local tw = false;
	for i = 1, 4 do
		if JY.Person[personid]["�츳�⹦"..i] == WGid then
			tw = true;
			break;
		end
	end
	return tw;
end
 
--�޾Ʋ������ж��츳�ڹ��ĺ���
function Given_NG(personid, NGid)
	local tw = false;
	if JY.Person[personid]["�츳�ڹ�"] == NGid then
		tw = true;
	end
	return tw;
end

--����ָ�վ��
function stands()
	JY.MyCurrentPic=0
	if JY.Person[0]["�Ա�"] == 0 then
		JY.MyPic=CC.MyStartPicM+JY.Base["�˷���"]*7+JY.MyCurrentPic;
	else
		JY.MyPic=CC.MyStartPicF+JY.Base["�˷���"]*7+JY.MyCurrentPic;
	end
end

--�޾Ʋ���������ѡ��˵�
function TeleportMenu(menu, color, selectColor)
	local x1	--�˵���ʼX����
    local y1	--�˵���ʼY����
    local w		--�˵����
    local h		--�˵��߶�
	local maxlength		--��λ��󳤶�
	local size = CC.Fontsmall	--�����С
    
	x1 = CC.MainMenuX+3
    y1 = CC.MainMenuY+CC.Fontsmall*2 +9

	maxlength = 8
	
	w = (size*maxlength/2+CC.RowPixel*4+5)*7 + CC.MenuBorderPixel	--7Ϊ����
    h = (size+CC.RowPixel*2-1)*16 + CC.MenuBorderPixel				--16Ϊ�������
	
    lib.GetKey();
    Cls();
	
	--lib.LoadPNG(1,19111*2,0,0,1)
    lib.LoadPNG(1, 983 * 2 , 0 , 0, 1)		--����ͼ
    
	--�����߸�������洢��ͬ���͵ĳ���
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
    
	--v123�ֱ�Ϊ�������ƣ��ɷ���룬�������
	--v2Ϊ0����ɽ��룬1�����ɽ���
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
	
	--������Ϣ
	local P_inf = {{PType_1,PNum_1},{PType_2,PNum_2},{PType_3,PNum_3},{PType_4,PNum_4},{PType_5,PNum_5},{PType_6,PNum_6},{PType_7,PNum_7},[0]={0,0}}
	local PType_name = {"��ջ����","��������","��̰��","�������","ɽ�ȶ�Ѩ","���⵺��","���ೡ��"}

	--���ĳ�ʼλ��
	local cursor_x = 1
	local cursor_y = 1
	local current = 1

	--����ֵ
    local returnValue =-1;
  
    local surid = lib.SaveSur(0, 0, CC.ScreenW, CC.ScreenH)

    while true do
		if JY.Restart == 1 then
			break
		end
        lib.LoadSur(surid, 0, 0)
		--DrawString(x1+10,y1-CC.RowPixel*4-7,"X:"..cursor_x.."��Y:"..cursor_y.."��Current:"..current,LimeGreen,size);	--���������Ϣ
		for i = 1, 7 do
			--��������
			--DrawString(x1+(i-1)*(size*maxlength/2+CC.RowPixel*4+5)+CC.MenuBorderPixel,y1-CC.RowPixel*6+1,PType_name[i],LimeGreen,size);
			for j = 1, 16 do
				if j > P_inf[i][2] then
					break;
				end
				--ȷ����ǰ��λ���
				local id = 0
				for jj = 1, i do
					id = id + P_inf[jj-1][2]
				end
				id = id + j
				--�޷�����ĳ�������Ϊ��ɫ
				local drawColor = color; 
				if P_inf[i][1][j][2] == 1 then
					drawColor = M_DimGray
				end
				local xx = x1+(i-1)*(size*maxlength/2+CC.RowPixel*4+5) + CC.MenuBorderPixel
				local yy = y1+(j-1)*(size+CC.RowPixel*2-1)
				--����ǰѡ�еĵ�λ��ɫ
				if id == current then
					drawColor = selectColor;
					lib.Background(xx-5, yy-5, xx + size*maxlength/2+5, yy + size + 5, 128, color)
				end
				--��ʾ��������
				DrawString(xx,yy,P_inf[i][1][j][1],drawColor,size);
			end
		end
  
        ShowScreen();
        local keyPress, ktype, mx, my = WaitKey(1)
		
		lib.Delay(CC.Frame);
				
		--ktype  1�����̣�2������ƶ���3:��������4������Ҽ���5������м���6�������ϣ�7��������
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
    --����ֵ
	return returnValue
end

--�޾Ʋ������ж϶����ǲ�����������λ
function More_than_2_vacant_slot()
	if JY.Base["����14"] == -1 and JY.Base["����15"] == -1 then
		return true
	end
	return false
end

--�޾Ʋ��������˾���
function awakening(id, value)
	local xwperson;	--�ж�Ҫ���ѵ���
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	JY.Person[xwperson]["���˾���"] = JY.Person[xwperson]["���˾���"] + value
    if inteam(id) and xwperson~=0 then
       if CC.JXFG[id] ~= nil  then
       local aa = {CC.JXFG[id][1],CC.JXFG[id][2]}
	   JY.Person[id]["�۽�����"] = JYMsgBox("��ѡ��", "��ѡ����ľ��ѷ�� ", aa, 2, 291)
	   RWWH[id] = aa[JY.Person[id]["�۽�����"]]
       end		
	end
end

--�޾Ʋ����������䳣
function kungfu_knowledge(id, value)
	local xwperson;	--�ж�Ҫ�����䳣����
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	JY.Person[xwperson]["��ѧ��ʶ"] = JY.Person[xwperson]["��ѧ��ʶ"] + value

end

--�޾Ʋ������ж��Ƿ�Ϊָ��ID����������ж��Ƿ�ﵽָ�����Ѵ���
function match_ID_awakened(personid, id, awkntimes)
	if personid == id then
		if JY.Person[personid]["���˾���"] >= awkntimes then
			return true
		else
			return false
		end
	elseif personid == 0 and JY.Base["����"] == id then
		if JY.Person[0]["���˾���"] >= awkntimes then
			return true
		else
			return false
		end
	else
		return false
	end
end

function Kaiyan_ID(personid, id)
    if personid == 0 and JY.Base["����"] == id then
		if GetS(111,0,0,0)>0 or GetS(113,0,0,0)>0 then
			return true
		else
			return false
		end
	else
		return false
	end
end

function KUIHUA(personid)---�����ж�
	local xwperson;	--��Ծ�㣺�ж��츳������
	local num=-1
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if nglw(xwperson,105)>1 then 
	   if JY.Person[xwperson]["��������"] == 0 or (xwperson == 0 and JY.Base["��׼"] == 6 and GetS(112,0,0,0) == 0) then
	      num = 0
	   elseif JY.Person[xwperson]["��������"] == 1 or (xwperson == 0 and JY.Base["��׼"] == 6 and GetS(112,0,0,0) == 1) then
	      num = 1
	   elseif JY.Person[xwperson]["��������"] == 2 or (xwperson == 0 and JY.Base["��׼"] == 6 and GetS(112,0,0,0) == 2) then
	      num = 2
	   end
	end
	if match_ID_awakened(xwperson,27,1) and  nglw(xwperson,105) >= 2 then
	   num = 0
	end
	return num
end

function nglw(personid, wugongid)---�츳�ڹ������ж�
	local xwperson;	--��Ծ�㣺�ж��츳������
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if JY.Person[xwperson]["�츳�ڹ�"] == wugongid then
	   num=0.1
	   	if xwperson == 0 and PersonKF(xwperson,wugongid) then
		num = 1
		   if JY.Person[xwperson]["�������"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["���˾���"]>0 then
		   num=num+1
		   elseif  YCRW(personid)>0 and YCDJ(personid)>1 then
		   num = num + 1
		   end
		   if GetS(111,0,0,0) == wugongid then
		   num=num+1
		   end
		   if JY.Base["��׼"] == 6 and num == 3 then
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
		   if JY.Person[0]["�������"]>0 then
		   num=num+1
		   elseif JY.Person[0]["���˾���"]>0 then
		   num=num+1
		   end
		   if GetS(111,0,0,0) >0 then
		   num=num+1
		   end
		elseif PersonKF(xwperson,wugongid) then
		num = 1
		   if JY.Person[xwperson]["���˾���"]>0 then
		   num=num+1
		   end
	    end
    elseif JY.Base["��׼"] == 6 and JY.Person[xwperson]["�츳�ڹ�"] ~= wugongid and xwperson == 0  then
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
	if wugongid == 100 and match_ID(xwperson,455) then -- ������
	   num = 1
	   	   if JY.Person[xwperson]["�������"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["���˾���"]>0 then
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

function wglw(personid, wugongid)---�츳�⹦�����ж�
	local xwperson;	--��Ծ��:�ж��츳������
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if JY.Person[xwperson]["�츳�⹦1"] == wugongid or JY.Person[xwperson]["�츳�⹦2"] == wugongid then
	   num=0.1
	   if PersonKFJ(xwperson,wugongid) then
	   num=1
	   	if xwperson == 0 then
		   if JY.Person[xwperson]["�������"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["���˾���"]>0 then
		   num=num+1
		   elseif  YCRW(personid)>0 and YCDJ(personid)>1 then
		   num = num + 1
		   end
		   if GetS(113,0,0,0) == wugongid then
		   num=num+1
		   end
	    else
		   if JY.Person[xwperson]["���˾���"]>0 then
		   num=num+1
		   end
	    end	
	end
	end
	if wugongid == 23 and match_ID_awakened(xwperson,9,1) then -- ������
	   num = 3
	end
	return num
end

function qglw(personid, wugongid)---�츳�⹦�����ж�
	local xwperson;	--��Ծ��:�ж��츳������
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
	if JY.Person[xwperson]["�츳�Ṧ"] == wugongid then
	   num=0.1
	   if PersonKF(xwperson,wugongid) then
	   num=1
	   	if xwperson == 0 then
		   if JY.Person[xwperson]["�������"]>0 then
		   num=num+1
		   elseif JY.Person[xwperson]["���˾���"]>0 then
		   num=num+1
		   end
	    else
		   if JY.Person[xwperson]["���˾���"]>0 then
		   num=num+1
		   end
	    end	
	end
	end
	return num
end


function zylw(zytype)---ְҵ�����ж�
	local num=0
if JY.Base["��׼"]> 0 then
	if JY.Base["��׼"] == zytype and zytype<=5 then
	local aa =  JY.Person[0]["�츳�⹦1"]
	local bb =  JY.Person[0]["�츳�⹦2"]
    local cc =  GetS(113,0,0,0)	
	local kfkind1 = JY.Wugong[aa]["�书����"]
	local kfkind2 = JY.Wugong[bb]["�书����"]
	local kfkind3 = JY.Wugong[cc]["�书����"]
	    if zytype == kfkind1 then
           num = num+1
	    end
	    if zytype == kfkind2 then
           num = num+1
	    end
		if cc>0 and zytype == kfkind3 then
           num = num+1
	    end
		if (zytype==4 or zytype == 3) and bb == 77 then----����������ͬʱ��˵���ְҵ
		    num = num+1
			if cc==77 then
			num = num+1
			end
		end
    elseif JY.Base["��׼"] == zytype and zytype == 6 then
	local aa =  JY.Person[0]["�츳�ڹ�"]
	local cc =  GetS(111,0,0,0)
		if cc>0 and cc == aa then
           num = num+1
	    end
		if JY.Person[0]["�������"]>0 then
           num = num+1
	    end
	end
end	
	return num
end


function setNG(a) --�츳�ڹ��¼�
   SetS(111,0,0,0,a)
end

function  TGPD(id)--����ж�
    if id == 0 then
		if JY.Base["��׼"] == 6 then
			return true
		else
			return false
		end
	else
		return false
	end
end

function setWG(a) --�츳�⹦�¼�
   SetS(113,0,0,0,a)
end

function setWP(a) --�츳�⹦�¼�
   SetS(112,0,0,0,a)
end

--ֱ���趨ָ�����������
function set_potential(id, value)
	local xwperson;	--�ж�Ҫָ�����ʵ���
	if id == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = id
	end
	JY.Person[xwperson]["����"] = value
end

--�޾Ʋ������ж��ǲ�����ʾ�ؼ�
function secondary_wugong(wugongid)
	--�Ṧ
	if JY.Wugong[wugongid]["�书����"] == 7 then
		return true
	--����
	--��ղ���������Ϊ�ؼ�
	elseif wugongid == 85 or wugongid == 87 or wugongid == 88 or wugongid == 181 then
		return true
	end
	return false
end

--�޾Ʋ������ж������ڹ��ĺ���
function Curr_NG(personid, NGid)
	if JY.Person[personid]["�����ڹ�"] == NGid then
		return true
	elseif PersonKF(personid, NGid) then
		return true	--�y
	--����ж�
	elseif personid == 0 and JY.Base["��׼"] == 6 then
		--��������ڣ������Ѿ�ѧ�ᣬ���Զ�����
		if JY.Person[personid]["�츳�ڹ�"] == NGid and PersonKF(personid, NGid) then
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
    local xwperson;	--��Ծ��:�ж��츳������
	local num=0
	if personid == 0 then
		xwperson = 0
	else
		xwperson = personid
	end	
		if JY.Person[personid]["������Ʒ"] == WPid then
			num = 1
			if xwperson == 0 then
				if JY.Person[xwperson]["�������"]>0 then
					num=num+1
				elseif JY.Person[xwperson]["���˾���"]>0 then
					num=num+1
				end
				if GetS(112,0,0,0) == WPid then
					num=num+1
				end
			else
				if JY.Person[xwperson]["���˾���"]>0 then
					num=num+1
				end
			end	
		end
	return num
end

--�޾Ʋ������ж������Ṧ�ĺ���
function Curr_QG(personid, QGid)
	if JY.Person[personid]["�����Ṧ"] == QGid then
		return true
	elseif PersonKF(personid, QGid) then
		return true		--�y
	else
		return false
	end
end

--�޾Ʋ������ж����˼��ܵĺ���
function Curr_JL(personid, QGid)
	if JY.Person[personid]["���˼���"] == QGid then
		return true
	elseif PersonKF(personid, QGid) and personid==0 then
		return true
	else
		return false
	end
end

--�޾Ʋ������ж���������ϼ��ĸ���
function calc_mas_num(id)
	local mas_num = 0;
	for i = 1, CC.Kungfunum do
		if JY.Person[id]["�书�ȼ�" .. i] == 999 then
			mas_num = mas_num + 1;
		end
	end
	return mas_num
end

--�޾Ʋ������ж��Ƿ�Ϊָ��ID����������츳���ж�
function match_ID(personid, id)
	if personid == id then
		return true
	elseif personid == 0 and JY.Base["����"] == id then

		return true
    elseif personid == 645 and JY.Base["����"] == id then

		return true
	else
		return false
	end
end

function ky_ID(personid, id)
    local aa = 0
	if personid == 0 and JY.Base["����"] == id then
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
--�����ж�
function force_ID(personid)
    if inteam(personid) and JY.Person[personid]["�۽�����"] > 0 and JY.Base["����"]>0 then
		return true
	else
		return false
	end
end
--�����ж�
function god_ID(personid, id)
    if personid == 645 and JY.Base["����"] == id  then
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
   return JY.Base["��������"]
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
end--�жϽ�ɫΪ����������

function D2ZBT(id)
  if id == 645 and JY.Base["����"] == 64 and JY.Base["����"]>0 then
    return true
  else
    return false
  end
end--�жϽ�ɫΪ�����ܲ�ͨ

function D3FQY(id)
  if god_ID(id, 140) then
    return true
  else
    return false
  end
end--�жϽ�ɫΪ���������

function D4TZZ(id)
  if god_ID(id, 455) then
    return true
  else
    return false
  end
end--�жϽ�ɫΪ����������

--�޾Ʋ������ж�������
function Person_LJ(pid)
	--�����������ʼ������������
	local LJ1 = math.modf(JY.Person[pid]["�Ṧ"] / 18)
	local LJ2 = math.modf((JY.Person[pid]["�������ֵ"] + JY.Person[pid]["����"]) / 1000)
	local LJ3 = math.modf(JY.Person[pid]["����"] / 10)
	local LJ = 0
	LJ = (LJ1 + LJ2 + LJ3) / 2
	
	--�������ǧ�𡢺����������������͡��ݳ�������������֮��������+70%
	if match_ID(pid, 6) or match_ID(pid, 67) or match_ID(pid, 71) or match_ID(pid, 18) or match_ID(pid, 189) or match_ID(pid, 594) or match_ID_awakened(pid, 35, 2) then
		LJ = LJ + (100 - LJ) * 0.7
	end

	--�����书��ÿ������+2.5%
	--�ٻ�����������Ů��̩ɽ��ԧ�죬�����ǣ����ǹ�����ţ����������ǣ�ȥ���գ��ڷ�, ����
	local ljup = {10, 15, 42, 31, 54, 60, 68, 76, 79, 114, 124, 131, 139}
	for i = 1, CC.Kungfunum do
		if JY.Person[pid]["�书" .. i] > 0 then
			for ii = 1, #ljup do
				if JY.Person[pid]["�书" .. i] == ljup[ii] then
					LJ = LJ + (100 - LJ) * 0.025
				end
			end
		else
			break;
		end
	end
	
	--���¾Ž�����+5%
	for i = 1, CC.Kungfunum do
		if JY.Person[pid]["�书" .. i] == 47 then
			LJ = LJ + (100 - LJ) * 0.05
		end
	end
	
	--�۽���Ӯ�ֳ�Ӣ����+30%
	if pid == 0 and JY.Person[605]["�۽�����"] == 1 then
		LJ = LJ + (100 - LJ) * 0.3
	end
	
	if wglw(pid,29)>=1  then
	   LJ = LJ + (100 - LJ) * (0.2+wglw(pid,29)*0.1 )
	end
	
	
	--ʵս��ÿ40��+1%
	local jp = JY.Person[pid]["ʵս"] / 4000
	if wglw(pid,114)>=1 then
	   jp = jp * (wglw(pid,114)+1)
	end
	
	LJ = LJ + (100 - LJ) * jp
	
	--���˾���+20%
	if Curr_NG(pid, 107) and (JY.Person[pid]["��������"] == 0 or (pid == 0 and JY.Base["��׼"] == 6)) then
		LJ = LJ + (100 - LJ) * 0.2
	end
	
	--������ڳ���ȫ���10%
	if inteam(pid) and JY.Status == GAME_WMAP then
		for wid = 0, WAR.PersonNum - 1 do
			if match_ID(WAR.Person[wid]["������"], 607) and WAR.Person[wid]["����"] == false and WAR.Person[wid]["�ҷ�"] then
				LJ = LJ + (100 - LJ) * 0.1
				break
			end
		end
	end

	--�������ܡ���Զɽ��������
	if match_ID(pid, 27) or match_ID(pid, 112) then
		LJ = 100
	end
	
	--����������1
    if LJ < 1 then
		LJ = 1
    end
	
	--ȡ��
	LJ = math.modf(LJ)
	
	return LJ
end

--�޾Ʋ������ж�������
function Person_BJ(pid)
    --�����ڹ������������������
    local BJ1 = math.modf(JY.Person[pid]["������"] / 18)
    local BJ2 = math.modf((JY.Person[pid]["�������ֵ"] + JY.Person[pid]["����"]) / 1000)
    local BJ3 = math.modf(JY.Person[pid]["����"] / 10)
    local BJ = 0
    BJ = (BJ1 + BJ2 + BJ3) / 2

    --Ѫ�����桢��ǧ�𡢺�����������С������ӡ�����ͣ�������+70%
    if match_ID(pid, 97) or match_ID(pid, 67) or match_ID(pid, 71) or match_ID(pid, 26) or match_ID(pid, 184) or match_ID(pid, 189) then
		BJ = BJ + (100 - BJ) * 0.7
    end
	
	--Ԭ��־��������+50%
    if match_ID(pid, 54) then
		BJ = BJ + (100 - BJ) * 0.5
    end
	
    --�����Ѫ�������ķ�֮һʱ������������3��
    if match_ID(pid, 58) and JY.Person[pid]["����"] < JY.Person[pid]["�������ֵ"] / 4 then
		BJ = BJ * 3
    --�����Ѫ�����ڶ���֮һ������������2��
    elseif match_ID(pid, 58) and JY.Person[pid]["����"] < JY.Person[pid]["�������ֵ"] / 2 then
		BJ = BJ * 2
    end
	
	--�����书��ÿ������+2.5%
	--��ָ��������ȫ�棬���ߣ��������ţ�ȼľ���Ὣ������ɳ�����ߣ����ڣ���ڤ����ָ����һ��ָ
    local bjup = {18, 22, 39, 40, 56, 65, 71, 78, 74, 61, 21, 121, 17}
    for i = 1, CC.Kungfunum do
		if JY.Person[pid]["�书" .. i] > 0 then
			for ii = 1, #bjup do
				if JY.Person[pid]["�书" .. i] == bjup[ii] then
					BJ = BJ + (100 - BJ) * 0.025
				end
			end
		else
			break;
		end
    end
	
	--�۽���Ӯ����������+50%
	if pid == 0 and JY.Person[129]["�۽�����"] == 1 then
		BJ = BJ + (100 - BJ) * 0.5
	end
	
	--ʵս��ÿ40��+1%
	local jp = JY.Person[pid]["ʵս"] / 4000
	BJ = BJ + (100 - BJ) * jp
	
	--���˾���+20%
	if Curr_NG(pid, 107) and (JY.Person[pid]["��������"] == 0 or (pid == 0 and JY.Base["��׼"] == 6)) then
		BJ = BJ + (100 - BJ) * 0.2
	end
	
	--���塢�������Զɽ���ر���
    if match_ID(pid, 50) or match_ID(pid, 6) or match_ID(pid, 112) then
		BJ = 100
    end
	
	--ֻ��ս���в��еļӳ�
	if JY.Status == GAME_WMAP then
	    --��̹֮���а���Ϊ���ѱر���
		if match_ID(pid, 48) then
			for j = 0, WAR.PersonNum - 1 do
				if match_ID(WAR.Person[j]["������"], 47) and WAR.Person[j]["����"] == false and WAR.Person[j]["�ҷ�"] == WAR.Person[WAR.CurID]["�ҷ�"] then
					BJ = 100
					break;
				end
			end
		end
		
		--ŷ���� ����״̬�±ر���
		if match_ID(pid, 60) and WAR.tmp[1000+pid] == 1 then
			BJ = 100
		end
		
		--ŭ��ֵ100���Ƕ�ת�±ر���
		if WAR.LQZ[pid] == 100 and WAR.DZXY ~= 1 then
			BJ = 100
		end
	end
	
	--����������1
    if BJ < 1 then
		BJ = 1
    end
	
	--ȡ��
	BJ = math.modf(BJ)
	
	return BJ
end

--�޾Ʋ���������������ѧ�ڹ�������
function Num_of_Neigong(id)
	local num = 0
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		if JY.Wugong[kfid]["�书����"] == 6 then
			num = num + 1
		end
	end
	return num
end

--�޾Ʋ������ж�һ�������Ƿ�������������������
function WuyueJF(id)
	local wuyuenum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
		if kfid >= 30 and kfid <= 34 and klvl == 999 then
			wuyuenum = wuyuenum + 1
		end
	end
	if wuyuenum >= 5 then
		return true
	elseif MPPD(id) == 6 then----��������
	    return true
	else
		return false
	end
end

--�޾Ʋ������ٻ���ԭ������+ȼľ+���浶
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

--�޾Ʋ���������ˮ�£�����+����+����
function LiRenHF(id)
    if PersonKF(id,64) and PersonKF(id,153) and PersonKF(id,174) then 
        return true
    end
    return false

end

-- ����ħ ��ħ�� ��շ�ħȦ ��ħ�ȷ� �޺���ħ��
function ShiZunXM(id)
    if PersonKF(id,96) and PersonKF(id,82) and PersonKF(id,83) and PersonKF(id,86) then 
        return true
    end
    return false

end

--�޾Ʋ�����ѧ��������������ʵ�����������ж�
function TrueYJ(id)
	local yj = JY.Person[id]["��������"]
	if WuyueJF(id) then
		yj = yj + 50
	end
	return yj
end

--�޾Ʋ������ж�һ�������Ƿ����������黭������
function QinqiSH(id)
	local qinqinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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

--���ƮҶ ��������˳��
function Menu_TZDY()
   local menu = {}
   local px={}
   local m=0
   --���ѳ���2�˲Ż���Ч
   if JY.Base["����" .. 3]>0 then
		Cls()
		DrawStrBox(CC.MainMenuX,CC.MainSubMenuY,"��Ҫ����˭��λ��",LimeGreen,CC.DefaultFont,C_GOLD);
		local nexty=CC.MainSubMenuY+CC.SingleLineHeight;
		for i=1,CC.TeamNum do
			menu[i]={"",nil,0};
			local id=JY.Base["����" .. i]
			if id>0 then
				menu[i]={"",nil,0};
				if JY.Person[id]["����"]>0 then
					menu[i][1]=JY.Person[id]["����"];
					menu[i][3]=1;
				end
			end
		end  
   
		local r = -1;
		while true do
			r = ShowMenu(menu,#menu,0,CC.MainMenuX,CC.MainSubMenuY+CC.SingleLineHeight,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE)
			if px["������"]==nil and r>1 then
				px["������"]=r
				menu[r]={"",nil,0}
				Cls()
				DrawStrBox(CC.MainMenuX,CC.MainSubMenuY,JY.Person[JY.Base["����" .. r]]["����"].."��˭����λ��",LimeGreen,CC.DefaultFont,C_GOLD);
			elseif r>1 and px["������"]~=nil and r ~=px["������"] then	
				local m1=JY.Base["����" .. r]
				local m2=JY.Base["����" .. px["������"]]
				JY.Base["����" .. r]=m2
				JY.Base["����" .. px["������"]]=m1
				say("��"..JY.Person[m2]["����"].."�� �� ��"..JY.Person[m1]["����"].."�� ������λ�á�",JY.Person[m2]["ͷ�����"],1,JY.Person[m2]["����"])
				Cls()
				--return
				break
			--�޾Ʋ���������ESC�˳�����
			else
				break
			end
		end
	end
end

--�޾Ʋ�������һ����
function DrawSingleLine(x1, y1, x2, y2, color)
	lib.DrawRect(x1 + 1, y1 + 1, x2, y2, color)
	lib.DrawRect(x1, y1, x2 - 1, y2 - 1, color)
end

--�ı�����
function SetTianWai(personid, x, wugongid)
	local xwperson;	--�ж�Ҫϴ�������
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["�츳�⹦"..x] = wugongid
end

--�ı�����
function SetTianNei(personid, wugongid)
	local xwperson;	--�ж�Ҫϴ���ڵ���
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["�츳�ڹ�"] = wugongid
end

--�ı�����
function SetTianQing(personid, wugongid)
	local xwperson;	--�ж�Ҫϴ�������
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["�츳�Ṧ"] = wugongid
end

--ѧ�ụ��
function SetHuBo(personid)
	local xwperson;
	if personid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = personid
	end	
	JY.Person[xwperson]["���һ���"] = 1
end

--�޾Ʋ������ж�һ�������Ƿ������һ�����������
function TaohuaJJ(id)
	local taohuanum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
		if (kfid == 12 or kfid == 18 or kfid == 38) and klvl == 999 then
			taohuanum = taohuanum + 1
		end
	end
	if match_ID(id, 626)  then --�����Զ�����
		taohuanum = 3
	end
	if MPPD(id) == 8 then
		taohuanum = 3
	end
	if taohuanum >= 3 then
		return true
	elseif taohuanum >=1 and JY.Person[57]["�۽�����"] == 1 then
	    return true
	else
		return false
	end
end

function DOCTOR(id)
	local taohuanum = 0;
	if id == 0 and JY.Base["��׼"] == 8  then --�����Զ�����
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

--����������ϵ����ֵ֮��
function Xishu_sum(id)
	local sum = 0
	sum = sum + JY.Person[id]["ȭ�ƹ���"]
	sum = sum + JY.Person[id]["ָ������"]
	sum = sum + TrueYJ(id)
	sum = sum + JY.Person[id]["ˣ������"]
	sum = sum + JY.Person[id]["�������"]
	return sum
end

--���ð汳��ͼ
function Clipped_BgImg(x1,y1,x2,y2,picnum)
	lib.SetClip(x1 + 2, y1 + 2, x2 - 1, y2 - 1)
	lib.LoadPNG(1, picnum * 2 , 0 , 0, 1)
	lib.SetClip(0,0,0,0)
end

--��ʾ���߿������
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

--�޾Ʋ������ж�һ�������Ƿ������ȴ���������
--ͬʱ��������Ҷָ/�����޶�ָ/�����ָ/�黨ָ����
function ChuQueSX(id)
	local sixiangnum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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
		lib.Debug('����δ֪����')
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
	local menu = {'����','��Ʒ',MJMenu,'����'}
	local menu2 = {'״̬','����','���'}
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
			local id = JY.Base["��Ʒ" .. i + 1]
			if id >= 0 then
				if JY.Thing[id]["����"] == 2 then
					thing[num] = id
					thingnum[num] = JY.Base["��Ʒ����" .. i + 1]
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

--����һƬ�Ľǰ����ı���
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

--����ɳ���ж�
function ManZhuSH(id)
	if JY.Person[id]["�������"] == 0 then
		return false
	end
	local manzhunum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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

--��Ʒ��ϸ˵��
function detailed_info(thingID)
	local str=JY.Thing[thingID]["����"]
	local str2=JY.Thing[thingID]["��Ʒ˵��"]
	local infoFile = CC.ItemInfoPath .. str .. ".lua"
	if existFile(infoFile) then
		dofile(infoFile)
	else
		return
	end
	local info = {}
	info = ItemInfo[thingID]
	local function strcolor_switch(s)
		local Color_Switch={{"��",PinkRed},{"��",C_GOLD},{"��",C_BLACK},{"��",C_WHITE},{"��",C_ORANGE},{"��",LimeGreen},{"��",M_DeepSkyBlue},{"��",Violet}}
		for i = 1, 8 do
			if Color_Switch[i][1] == s then
				return Color_Switch[i][2]
			end
		end
	end
	local maxRowExisting = #info		--��ǰ˵��������
	local maxRowDisplayable = 11		--����ҳ�������ʾ���������
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
			if string.sub(tfstr,1,2) == "��" then
				row = row + 1
			else
				local color;
				color = strcolor_switch(string.sub(tfstr,1,2))
				tfstr = string.sub(tfstr,3,-1)
				DrawString(15, 80 + (size+CC.RowPixel*2) * (row), tfstr, color, size)
				row = row + 1
			end
		end
		--���·��ļ�ͷ��ʾ
		if startingRow > 1 then
			DrawString(CC.ScreenW-40, 110, "��", C_GOLD, size)
		end
		if startingRow+maxRowDisplayable < maxRowExisting then
			DrawString(CC.ScreenW-40, CC.ScreenH-140, "��", C_GOLD, size)
		end
		DrawString(CC.ScreenW-220,CC.ScreenH-40, "��F1������Ʒ�˵�", C_ORANGE,size)
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


--�޾Ʋ������ж�һ�������Ƿ������������޵�����
function ZiqiTL(id)
	local ziqinum = 0;
	for i = 1, CC.Kungfunum do
		local kfid = JY.Person[id]["�书"..i]
		local klvl = JY.Person[id]["�书�ȼ�"..i]
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
	local name = {JY.Wugong[wugong]["����"], nil, 1, "��ʦ"}
	local level = {"���ŵ���", "�߼�����", "����"}
	local attrib = {} 
	for i = 1, 9 do
		attrib[i] = JY.Wugong[wugong][i.."��ɱ������"] * 0.1
	end
	local askill = {GRTS[JY.Wugong[wugong]["δ֪4"]], GRTS[JY.Wugong[wugong]["δ֪5"]]}
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
	if tmppid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = tmppid
	end	
	if JY.Person[xwperson]["����"] == nil or JY.Person[xwperson]["����"] < 101 then
		return 0
	else
		local mptype = math.floor(JY.Person[xwperson]["����"] / 100)
		return mptype
	end
end

function MPDJ(tmppid)
    local xwperson
	if tmppid == JY.Base["����"] then
		xwperson = 0
	else
		xwperson = tmppid
	end	
	local mpdj
	if MPPD(xwperson) == 0 then
		return 0
	end
	mpdj = math.fmod(JY.Person[xwperson]["����"], 100)
	return mpdj
end

function MPDISPLAY(tmppid) --������ʾ
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

--����ж�
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
	if tmppid == JY.Base["����"] then
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
	JY.Person[tmppid]["����"] = mptype * 100 + mpdj
	AddPersonAttrib(tmppid, "�������ֵ", -1)
	AddPersonAttrib(tmppid, "�������ֵ", 1)
	AddPersonAttrib(tmppid, "�������ֵ", -1)
	AddPersonAttrib(tmppid, "�������ֵ", 1)	
	if JY.Person[tmppid]["����"] > JY.Person[tmppid]["�������ֵ"] then
		JY.Person[tmppid]["����"] = JY.Person[tmppid]["�������ֵ"]
	end
	if JY.Person[tmppid]["����"] > JY.Person[tmppid]["�������ֵ"] then
		JY.Person[tmppid]["����"] = JY.Person[tmppid]["�������ֵ"]
	end	
	end
	--clearHZ2(tmppid)
end

function MPReq(tmppid, mptype) --��������
	if MPPD(tmppid) ~= MPPD(0) and MPPD(tmppid)>0 then
		return false
	end
	if MPPD(tmppid) == MPPD(0) and MPDJ(tmppid) >= MPDJ(0) - 1 then
		return false
	end
	if mptype == 1 then
        return true
	elseif mptype == 2 or mptype == 3 then
		if JY.Person[tmppid]["Ʒ��"] >= 50 then
			return true
		end	
	elseif mptype == 4 then
		if JY.Person[tmppid]["�������ֵ"] >= 2000 then
			return true
		end		
	elseif mptype == 5 then
		if JY.Person[tmppid]["�������ֵ"] >= 3000 then
			return true
		end
	elseif mptype == 6 then
		if JY.Person[tmppid]["��������"] >= 100 then
			return true
		end	
	elseif mptype == 7 then
		if JY.Person[tmppid]["�ö�����"] >= 50 then
			return true
		end	
	elseif mptype == 8 then
		if JY.Person[tmppid]["����"] >= 75 then
			return true
		end	
	elseif mptype == 11 then
		if JY.Person[tmppid]["��������"] >= 300 then
			return true
		end	
	elseif mptype == 12 then
		if JY.Person[tmppid]["Ʒ��"] > 50 then
			return true
		end	
	elseif mptype == 13 then
		if JY.Person[tmppid]["�������ֵ"] >= 3000 then
			return true
		end
	elseif mptype == 13 then
		if JY.Person[tmppid]["��������"] >= 100 then
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
			str = "������"
		elseif aa == 2 then
			str = "������"
		elseif aa == 3 then
			str = "�Ṧ"
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
			add = math.modf(add * JY.Person[pid]["������"] - JY.Person[pid]["������"]) 
		elseif att == 2 then
			add = math.modf(add * JY.Person[pid]["������"] - JY.Person[pid]["������"]) 
		elseif att == 3 then
			add = math.modf(add * JY.Person[pid]["�Ṧ"] - JY.Person[pid]["�Ṧ"]) 
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
	{1, 184},--ؤ������
	{1, 189},--ؤ������
	{2, 99},--�䵱����
	{2, 171},--�䵱̫��
	{3, 96},--�����޺�
	{3, 108},--�����׽�	
	{3, 144},--���ֽ��	
	{4, 103},--��������
	{4, 169},--�����٤
	{4, 163},--����Ѫ��
	{6, 90},--������ϼ
	{6, 89},--���»�Ԫ
	{6, 179},--������������
	{7, 95},--���ո��
	{7, 104},--��������
	{7, 180},--��������
	{5, 97},--����Ǭ��
	{5, 93},--����ʥ��
    }
	for i = 1, #mpzy do
		if (mpzy[i][1] == aa) and JY.Person[pid]["�����ڹ�"] == mpzy[i][2] then
			cc = 1
		end
	end
	if aa == 5 and (JY.Person[pid]["�����ڹ�"] == 93 or JY.Person[pid]["�����ڹ�"] == 97)  then
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
	      local dd = JY.Person[pid]["�����ڹ�"]
	      local ee = JY.Person[pid]["�츳�ڹ�"]
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

function MPPB_GB(tmppid) --ؤ������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 1 then
       if bb>0 then
	      if Curr_NG(tmppid,189) then
		  cc = 1  --������
		  elseif Curr_NG(tmppid,184) then
		  cc = 2  --������
		  end
	   end
	   if match_ID(tmppid,458) then----�ض���Ա�ж�
	      cc = 1
	   end
	   if match_ID(tmppid,459) then----�ض���Ա�ж�
	      cc = 2
	   end
	   if match_ID(tmppid,50) then----�ض���Ա�ж�
	      cc = 2
	   end
	   if match_ID(tmppid,69) then----�ض���Ա�ж�
	      cc = 3
	   end
	end
	if match_ID(tmppid,56) or match_ID(tmppid,58) then----��ѩ���޶�ѩɽ����
	cc = 1
	end
	if match_ID(tmppid,55) then----��ѩ���޶�ѩɽ����
	cc = 2
	end
	if match_ID(tmppid,360) and YCDJ(tmppid)>0 then----��Ȱ���ؤ������
	cc = 1
	end
	return cc
end


function MPPB_WD(tmppid) --�䵱����
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 2 then
       if bb>0 then
	      if Curr_NG(tmppid,99) then
		  cc = 1  --������
		  elseif Curr_NG(tmppid,171) then
		  cc = 2  --̫����
		  end
	   end
	if match_ID(tmppid,5)  then----���������ɱ���
	cc = 3
	end
	end
	return cc
end


function MPPB_SL(tmppid) --��������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 3 then
       if bb>0 then
	      if Curr_NG(tmppid,96) then
		  cc = 1  --����Ժ
		  elseif Curr_NG(tmppid,108) then
		  cc = 2  --�ؾ���
		  elseif Curr_NG(tmppid,144) then
		  cc = 3  --�����
		  end
	      if match_ID(tmppid,400) then
		  cc = 1  --�۴Ͻ���Ժ
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

function MPPB_MZ(tmppid) --��������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 4 then
       if bb>0 then
	      if Curr_NG(tmppid,103) then
		  cc = 1  --������
		  elseif Curr_NG(tmppid,169) then
		  cc = 2  --�����
		  elseif Curr_NG(tmppid,163) then
		  cc = 3  --Ѫ����
		  end
	   end
		if match_ID(tmppid,62)  then----�����ж�
	    cc = 1
	    end
		if match_ID(tmppid,455)  then----�������ж�
	    cc = 2
	    end
	    if match_ID(tmppid,159)  then----����������������
	    cc=2
	    end	
		if match_ID(tmppid, 97)  then----Ѫ�������޶�Ѫ����
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

function MPPB_MJBL(tmppid) --���̰���
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 5 then
       if bb>0 then
	      if Curr_NG(tmppid,97) then --�������ж�
		  cc=1
		  end
	   end
	if match_ID(tmppid,11)  then----����
	   cc=1
	end

	end
	if match_ID(tmppid,9)  then----�޼ɰ�������
	   cc=1
	end
	if cc == 1  then
	      local ee = JY.Person[tmppid]["�츳�ڹ�"]
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

function MPPB_MJAS(tmppid) --���̰�����
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 5 then
       if bb>0 then
	      if Curr_NG(tmppid,93) then --���̰������ж�
		  cc=1
		  end
	   end
	end
	if match_ID(tmppid,66)  then----С�Ѱ���������
	   cc=1
	end
	if match_ID(tmppid,15)  then----�����Ű���������
	   cc=1
	end
	if match_ID(tmppid,158)  then----����������������
	   cc=1
	end	
	if match_ID(tmppid,340)  then----�����ᰵ��������
	   cc=1
	end	
	if cc == 1  then
	      local ee = JY.Person[tmppid]["�츳�ڹ�"]
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

function MPPB_WYJZ(tmppid) --��������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 6 then
       if bb>0 then
	      if Curr_NG(tmppid,90) then --�����ж�
		  cc=1
		  end
	   end
	end	
	if match_ID(tmppid,140)  then----������
	   cc=1
	end
	if match_ID(tmppid,141)  then----�ɲ���
	   cc=1
	end
	if match_ID(tmppid,142)  then----�ⲻƽ
	   cc=1
	end
	if match_ID(tmppid,185)  then----�ⲻƽ
	   cc=1
	end
	if match_ID(tmppid,35)  then----�����
	   cc=1
	end
	return cc

end

function MPPB_WYQZ(tmppid) --��������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 6 then
       if bb>0 then
	      if Curr_NG(tmppid,89) then --�����ж�
		  cc=1
		  end
	   end
	if match_ID(tmppid,19)  then----����Ⱥ
	   cc=1
	end
	   if cc == 1 then
	      cc = cc + MPZJ(tmppid,6)
	   end
	end	
	return cc
end

function MPPB_WYXPX(tmppid) --����С��ϵ
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

function MPPB_BTHM(tmppid) --���ո��
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 7 then
       if bb>0 then
	      if Curr_NG(tmppid,95) then --���ո���ж�
		  cc=1
		  end
	   end
	end	

	if cc == 1 then
	cc = cc + MPZJ(tmppid,7)
	end
	return cc
end

function MPPB_BTNY(tmppid) --��������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 7 then
       if bb>0 then
	      if Curr_NG(tmppid,104) then --���������ж�
		  cc=1
		  end
	   end
	end	

	if cc == 1  then
	cc = cc + MPZJ(tmppid,7)
	end
	return cc
end

function MPPB_BTLS(tmppid) --��������
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 7 then
       if bb>0 then
	      if Curr_NG(tmppid,180) then --���������ж�
		  cc=1
		  end
	   end
	end	

	if cc == 1  then
	cc = cc + MPZJ(tmppid,7)
	end
	return cc
end

function MPPB_THBH(tmppid) --�һ����ٻ���
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 8 then
       if bb>0 then
	      if Curr_NG(tmppid,172) then --�һ����̺�
		  cc=1
		  end
	   end
	end	

	if cc == 1 and MPZJ(tmppid,8)>0 then
	cc = cc + MPZJ(tmppid,8)
	end
	return cc
end

function MPPB_THQM(tmppid) --�һ����ݼ���
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 8 then
       if bb>0 then
	      if Curr_NG(tmppid,181) then --�һ���������ת
		  cc=1
		  end
	   end
	end	

	if cc == 1 and MPZJ(tmppid,8)>0 then
	cc = cc + MPZJ(tmppid,8)
	end
	return cc
end

function MPPB_THXJ(tmppid) --�һ����һ���
	local aa = MPPD(tmppid)
	local bb = MPDJ(tmppid)
	local cc = 0
	if aa == 8 then
       if bb>0 then
	      if Curr_NG(tmppid,191) then --�һ����һ���
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
	say("����ɲ�����ô���ǵģ���ɵ�С����", 292, 1, "����ͨ");
	SetS(86, 1, 9, 5, 1);
	
	for i=1, 15 do --�������ǣ���ս����
		if GetS(86, 2, i, 5) == 0 then
			SetS(86, 2, i, 5, 2);
		end
	end
	local x1 = CC.ScreenW/2 - 200 ;
	local y1 = 0;
	DrawStrBox(x1, y1, "��ѡ����ս����",C_WHITE, CC.DefaultFont);
	local menu = {
		{"��������Ƿ�",nil,GetS(86, 2, 1, 5)-1},
		{"������Ͷ�������",nil,GetS(86, 2, 2, 5)-1},
		{"�������ɨ����ɮ",nil,GetS(86, 2, 3, 5)-1},
		{"�Ƿ�Ͷ�������",nil,GetS(86, 2, 4, 5)-1},
	};
	
	local numItem = 4;
	local size = CC.DefaultFont;
	local r = ShowMenu(menu,numItem,0,x1,y1+40,0,0,1,1,size,C_ORANGE,C_WHITE);
	if r > 0 then
		Cls();
		SetS(86, 2, r, 5, 3);
		if WarMain(226) then
			SetS(86, 2, r, 5, 1);
			say("���������ְ���", 232, 1, "����ͨ");
			QZXS("ȫ�����ʵս����50��");
			for i=1, CC.TeamNum do
				if JY.Base["����"..i] >= 0 then
					AddPersonAttrib(JY.Base["����"..i], "ʵս", 50)
				end
			end
		else
			SetS(86, 2, r, 5, 2);
			say("�ܿ�ϧ��������������������", 232, 1, "����ͨ");	
		end
	end
	
	SetS(86, 1, 9, 5, 0);
end

--��ʾƴ��
--x,yΪƴ����ʾ������
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

--��ѡ��ĺ���
--x,yΪ������ʾ������
--wordΪ�Ѿ�����õ�����
--pinyinΪ�����ƴ��
function SeleteHanzi(x, y, word, pinyin)
  local T1 = {
de = {"��", "��", "��", "��", "��", "�"}, 
di = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "ݶ", "��", "��", "ۡ", "��", "��", "��", "ڮ", "��", "��", "��", "��", "ص", "��", "�", "��", "��", "��", "��"}, 
yi = {"һ", "��", "��", "��", "��", "��", "��", "��", "��", "ҽ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "Ҽ", "�", "��", "߮", "ҿ", "�", "��", "��", "��", "�", "ڱ", "��", "��", "ܲ", "��", "�", "Ҿ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "߽", "��", "��", "��", "��", "��", "��", "��", "޲", "��", "��", "��", "�", "��", "�", "��", "��", "�", "٫", "��", "��", "��", "��", "��"}, 
guo = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "�", "��", "��", "��", "��"}, 
zai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
ren = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��"}, 
le = {"��", "��", "��", "��", "߷", "��", "��", "��"}, 
liao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "ޤ", "�", "��", "��", "��"}, 
you = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ݬ", "��", "��", "��", "��", "��", "ݵ", "ݯ", "��", "�", "��", "��", "�", "��", "��", "��", "��", "٧"}, 
zhong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڣ", "��", "��", "��", "��", "�"}, 
shi = {"��", "��", "ʱ", "ʵ", "��", "ʮ", "ʹ", "��", "ʩ", "ʽ", "��", "��", "ʶ", "ʦ", "ʷ", "ʾ", "ʯ", "ʳ", "ʼ", "ʿ", "ʧ", "��", "��", "ʲ", "��", "��", "ʫ", "��", "ֳ", "��", "ʻ", "��", "��", "ʪ", "ʴ", "ʨ", "��", "ʰ", "ʬ", "��", "��", "��", "ʸ", "��", "��", "��", "��", "��", "��", "ʺ", "��", "��", "ʭ", "��", "ݪ", "��", "��", "��", "��", "��", "�", "��", "��", "��", "߱", "��", "��", "��"}, 
nian = {"��", "��", "��", "ճ", "��", "إ", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
he = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڭ", "�", "��", "��", "��", "��", "��", "��", "��"}, 
hu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "Ϸ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��", "�", "�", "��", "��", "��"}, 
huo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "޽", "��", "�", "��", "��", "��", "�", "��", "߫"}, 
da = {"��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
dai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "߰", "ܤ", "�", "��", "߾", "��", "��"}, 
ye = {"ҵ", "Ҳ", "ҹ", "Ҷ", "Ұ", "Һ", "ұ", "ҳ", "ү", "Ү", "а", "��", "Ҭ", "��", "��", "Ҵ", "ק", "ҷ", "��", "��", "Ҹ", "ҭ", "��", "��", "��", "��"}, 
bu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "߲", "�", "��", "��", "��", "��"}, 
wei = {"Ϊ", "λ", "ί", "δ", "ά", "��", "Χ", "Υ", "��", "ΰ", "Σ", "ζ", "΢", "��", "Ψ", "ν", "α", "ο", "β", "κ", "Τ", "θ", "η", "�", "ι", "Ρ", "ή", "ε", "γ", "Ϋ", "ξ", "μ", "Ω", "ޱ", "έ", "�", "��", "�", "��", "��", "��", "Φ", "��", "��", "�", "��", "��", "��", "��", "�", "�", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��", "�"}, 
fa = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
hui = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڶ", "ޥ", "��", "��", "��", "��", "�", "��", "��", "�", "�", "�", "�", "�", "��", "��", "��", "��"}, 
kuai = {"��", "��", "��", "��", "��", "��", "��", "�", "ۦ", "��", "��"}, 
gong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
jing = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��","��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "ݼ", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�"}, 
shang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
yao = {"Ҫ", "Լ", "ҩ", "��", "��", "ҡ", "ҫ", "��", "ң", "Ҧ", "Ҥ", "��", "ҧ", "Ң", "Կ", "ҥ", "��", "ز", "��", "ߺ", "ű", "��", "��", "��", "Ҩ", "�", "��", "��", "س", "��", "��", "��", "�", "��", "��", "��"}, 
ge = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "ت", "��", "��", "��", "�", "ܪ", "��", "�"}, 
chan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��"}, 
zhe = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ߡ", "��"}, 
chu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "ۻ", "��", "��", "��", "��", "ء", "��", "��", "��"}, 
xing = {"��", "ʡ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "ߩ", "��", "��"}, 
hang = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
heng = {"��", "��", "��", "��", "��", "��", "��", "��", "޿"}, 
zuo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
sheng = {"��", "ʡ", "��", "��", "ʤ", "ʢ", "��", "ʥ", "ʣ", "��", "��", "��", "��", "��", "��", "��", "��"}, 
jia = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "Ю", "��", "٤", "��", "�", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��", "ۣ", "��", "��", "��", "��", "��", "��", "�"}, 
jie = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڵ", "��", "�", "�", "�", "��", "�", "��", "��", "ڦ", "��", "��", "��", "�", "��", "��"}, 
cheng = {"��", "��", "��", "��", "��", "ʢ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "ة", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
dao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "߶", "��", "��", "�", "��", "��", "��"}, 
ri = {"��"}, 
min = {"��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
lai = {"��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "�"}, 
wo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "ݫ", "��", "�", "��"}, 
dui = {"��", "��", "��", "��", "��", "��", "�", "�"}, 
jin = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "ݣ", "��", "��", "�", "��", "��", "��", "��"}, 
duo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
quan = {"ȫ", "Ȩ", "ȯ", "Ȫ", "Ȧ", "ȭ", "Ȱ", "Ȯ", "��", "Ȭ", "ڹ", "��", "ȩ", "��", "ȧ", "�", "��", "��", "�", "��", "�"}, 
jian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ǳ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "��", "��", "��", "�", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�"}, 
ta = {"��", "��", "��", "��", "��", "̤", "��", "�", "�", "��", "̡", "�", "̢", "̣", "��", "��", "��", "��", "��", "��"}, 
kai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
men = {"��", "��", "��", "��", "��", "�", "��"}, 
chang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��"}, 
zhan = {"չ", "ս", "ռ", "վ", "ո", "ճ", "տ", "մ", "հ", "��", "ղ", "ն", "յ", "շ", "��", "ձ", "ջ", "պ", "�", "��", "��"}, 
li = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "޼", "�", "��", "��", "��", "��", "�", "��", "��", "��", "��", "ݰ", "�", "��", "�", "��", "��", "��", "ٳ", "��", "��", "��", "۪", "ٵ", "��", "�", "��", "�", "�", "��", "�", "��", "��", "��", "��", "��", "ت", "��", "��", "߿", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��"}, 
xin = {"��", "��", "��", "Ѱ", "��", "��", "н", "ܰ", "��", "о", "п", "��", "�", "��", "�", "ض", "��"}, 
fang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
zhu = {"��", "��", "ס", "ע", "��", "��", "��", "��", "��", "פ", "��", "��", "ף", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "٪", "��", "��", "��", "��", "��", "��", "��", "ۥ", "��", "��", "��", "��", "��", "��"}, 
qi = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ؽ", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "�", "��", "��", "��", "�", "�", "��", "ٹ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ޭ", "�", "��", "��", "��", "��", "��", "��", "ݽ", "��", "��", "��", "�", "ܻ", "��", "��"}, 
zi = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "֨", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
xue = {"ѧ", "Ѫ", "ѩ", "��", "Ѧ", "Ѩ", "ѥ", "��", "��", "��", "��", "�"}, 
bao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
zhi = {"��", "֮", "��", "��", "ְ", "ֻ", "־", "��", "ָ", "֯", "֧", "ֵ", "֪", "ʶ", "ֱ", "��", "ִ", "��", "ֹ", "ֲ", "ֽ", "��", "ֳ", "��", "ּ", "ַ", "��", "��", "֦", "֥", "֬", "��", "֭", "֫", "ֿ", "��", "��", "��", "��", "��", "��", "ֶ", "��", "��", "��", "֨", "ֺ", "��", "֩", "ۤ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "ش", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
zheng = {"��", "��", "֤", "��", "��", "��", "֣", "��", "֢", "��", "��", "��", "�", "��", "��", "֡", "�", "��", "ں", "��", "��", "��"}, 
ji = {"��", "��", "��", "��", "��", "��", "��", "ϵ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ؽ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "�", "��", "��", "�", "��", "��", "��", "�", "ߴ", "��", "��", "ڵ", "�", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ܸ", "��", "��", "��", "�", "٥", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "�", "آ", "��", "ު", "��", "��"}, 
yong = {"��", "��", "ӵ", "��", "ӿ", "Ӿ", "ӹ", "ٸ", "ӻ", "Ӷ", "ӽ", "Ӻ", "�", "��", "ӷ", "��", "Ӽ", "��", "�", "��", "Ӹ", "��", "ܭ", "��", "�"}, 
tong = {"ͬ", "ͨ", "ͳ", "ͯ", "ʹ", "ͭ", "Ͱ", "ͩ", "Ͳ", "ͮ", "��", "١", "��", "ͱ", "ͪ", "��", "ͫ", "��", "�", "��", "��", "��", "��", "��"}, 
yu = {"��", "��", "��", "��", "Ԥ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ԣ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ԥ", "��", "Ԣ", "��", "��", "��", "ԡ", "��", "��", "��", "ε", "��", "��", "��", "ξ", "��", "��", "��", "��", "��", "Ԧ", "�", "خ", "ع", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ٶ", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��"}, 
gao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "۬", "غ", "ھ", "޻", "��", "��", "��", "��"}, 
zhang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "�", "�", "۵", "��"}, 
xian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ϴ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "ϳ", "��", "��", "��", "��", "��", "��", "�", "��", "�", "޺", "��", "��", "�", "ݲ", "��", "��", "��", "��", "��"}, 
ben = {"��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
yue = {"��", "˵", "Լ", "Խ", "��", "Ծ", "��", "��", "��", "��", "Ի", "Կ", "��", "��", "��", "�", "��", "�"}, 
ding = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "��", "��"}, 
hua = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
dong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��", "�", "�", "��"}, 
pin = {"Ʒ", "ƶ", "Ƹ", "Ƶ", "ƴ", "ƻ", "��", "�", "�", "��", "�", "��"}, 
chong = {"��", "��", "��", "��", "ӿ", "��", "��", "��", "��", "�", "��", "��", "�", "��"}, 
guan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ݸ", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
fen = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
wai = {"��", "��"}, 
qu = {"��", "ȥ", "ȡ", "��", "��", "��", "��", "Ȥ", "��", "��", "��", "��", "Ȣ", "��", "��", "��", "�", "ȣ", "��", "��", "��", "�", "��", "��", "��", "ڰ", "۾", "ޡ", "޾", "�", "��", "�", "�", "��", "�", "��"}, 
ou = {"��", "ŷ", "ż", "Ź", "Ż", "ź", "ک", "Ÿ", "�", "Ž", "��", "��"}, 
neng = {"��"}, 
she = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "ߡ", "�", "��"}, 
hou = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ܩ"}, 
jiu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��"}, 
deng = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
ti = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "�", "��"}, 
xia = {"��", "��", "Ͽ", "��", "Ͻ", "ϼ", "Ϻ", "��", "��", "��", "Ͼ", "��", "Ϲ", "ϻ", "�", "��", "��", "��", "��", "��", "��", "��", "��"}, 
wan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ݸ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "��", "��", "ܹ"}, 
mo = {"��", "��", "û", "ģ", "ĩ", "ð", "Ī", "Ħ", "ī", "Ĭ", "ĥ", "��", "Į", "��", "Ĥ", "ħ", "ĭ", "İ", "Ĩ", "į", "Ģ", "ġ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
yuan = {"Ԫ", "Ա", "Ժ", "ԭ", "Դ", "Զ", "Ը", "԰", "Ԯ", "Բ", "Ե", "Ԭ", "Թ", "Ԩ", "Է", "ԩ", "��", "Գ", "ԫ", "��", "ܫ", "��", "ԧ", "ԯ", "�", "�", "��", "�", "ܾ", "��", "��", "�", "��", "��", "��"}, 
qian = {"ǰ", "ǧ", "Ǯ", "ǩ", "Ǳ", "Ǩ", "Ƿ", "��", "ǣ", "ǳ", "ǲ", "ǫ", "Ǭ", "Ǧ", "Ǹ", "ǭ", "Ǵ", "Ƕ", "ٻ", "ǯ", "��", "�", "ǵ", "ǥ", "�", "��", "��", "��", "Ǥ", "ܷ", "��", "��", "ݡ", "Ǫ", "��", "�", "��", "��", "�", "�", "��", "�", "�", "��", "�", "��"}, 
mian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
nong = {"ũ", "Ũ", "Ū", "ŧ", "ٯ", "��"}, 
shuo = {"˵", "��", "˶", "˸", "˷", "��", "��", "��", "��", "��"}, 
shui = {"˵", "ˮ", "˰", "˭", "˯"}, 
yun = {"Ա", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ܿ", "��", "�", "��", "��", "�", "�", "۩", "�", "��", "�", "��", "��"}, 
er = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "٦", "�", "��"}, 
wu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "أ", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��"}, 
dian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��"}, 
wen = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
ke = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "�", "�", "��", "��", "�", "�", "��", "�", "�", "��", "��", "�"}, 
zong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
xmjc = {"��", "��", "��", "��", "��", "��", "ˮ"}, 
gai = {"��", "��", "��", "��", "��", "��", "ؤ", "��", "��", "��", "��", "�"}, 
san = {"��", "ɢ", "ɡ", "��", "��", "��", "�"}, 
hao = {"��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "�", "��", "�", "�", "��", "�", "��", "޶", "��"}, 
si = {"˾", "��", "˼", "˹", "ʳ", "˽", "��", "��", "˿", "��", "��", "��", "��", "˺", "��", "��", "��", "��", "��", "��", "˻", "��", "ٹ", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��"}, 
cong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
ping = {"ƽ", "��", "ƾ", "ƿ", "��", "��", "Ƽ", "ƻ", "ƹ", "ƺ", "��", "�", "ٷ", "��"}, 
dang = {"��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��"}, 
tian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
nei = {"��", "��", "��", "��"}, 
xiao = {"С", "Ч", "��", "��", "У", "��", "Ц", "Ф", "��", "Т", "��", "��", "��", "��", "Х", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��"}, 
mu = {"Ŀ", "ģ", "ľ", "Ķ", "Ļ", "ĸ", "��", "��", "ķ", "Ĺ", "Ľ", "Ĳ", "ĵ", "ļ", "��", "��", "ĺ", "Ĵ", "��", "��", "��", "��", "�", "��"}, 
hai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
suo = {"��", "��", "��", "��", "ɯ", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��"}, 
ru = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "�", "޸", "��", "�", "��"}, 
liang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ݹ", "�", "��", "ܮ"}, 
du = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "�", "��", "��", "ܶ", "��"}, 
bei = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
huan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "�", "��", "ۼ", "ۨ", "��", "�", "��", "��", "��", "��", "��", "��", "��", "ߧ"}, 
dou = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��"}, 
shu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ˡ", "��", "��", "��", "��", "��", "��", "ٿ", "��", "�", "�", "��", "��", "��", "��", "�", "�", "��", "ح"}, 
ming = {"��", "��", "��", "��", "��", "��", "ڤ", "��", "��", "��", "�", "��", "��"}, 
zhao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "צ", "گ", "��", "��", "��"}, 
zhuo = {"��", "��", "��", "��", "׿", "׽", "��", "��", "��", "��", "׾", "��", "��", "��", "��", "�", "��", "پ", "ߪ", "�", "��", "��", "�", "��"}, 
ci = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
jiang = {"��", "ǿ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��"}, 
qiang = {"��", "ǿ", "��", "ǽ", "ǹ", "ǻ", "��", "Ǻ", "Ǽ", "Ǿ", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��"}, 
zeng = {"��", "��", "��", "��", "��", "�", "�", "��", "��"}, 
xiang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "ܼ", "��", "��", "��", "�"}, 
ying = {"Ӧ", "Ӫ", "Ӱ", "Ӣ", "ӭ", "ӳ", "Ӳ", "ӯ", "Ӯ", "ӱ", "Ӥ", "ӥ", "ӫ", "Ө", "ӣ", "��", "Ӭ", "��", "ݺ", "�", "��", "ӧ", "�", "�", "�", "��", "ө", "��", "��", "��", "۫", "��", "��", "�", "��", "�", "��", "��", "��"}, 
mei = {"��", "û", "ÿ", "ú", "÷", "ý", "ö", "��", "ü", "��", "ù", "��", "��", "��", "õ", "ø", "þ", "��", "��", "ݮ", "��", "�", "��", "��", "��", "�", "�", "��"}, 
gui = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "Ȳ", "��", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��"}, 
xie = {"Щ", "��", "Э", "д", "Ѫ", "Ҷ", "л", "е", "Ь", "в", "б", "Я", "и", "��", "ж", "г", "й", "з", "а", "Ъ", "к", "м", "Ю", "��", "�", "Ы", "ߢ", "��", "��", "Ш", "�", "��", "��", "�", "��", "��", "ޯ", "�", "��", "��", "�", "��"}, 
biao = {"��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "�", "�", "��", "��", "�"}, 
xi = {"ϵ", "��", "ϯ", "Ϣ", "ϣ", "ϰ", "��", "ϲ", "ϸ", "��", "Ϸ", "ϴ", "Ϥ", "��", "Ϫ", "ϧ", "ϡ", "Ϯ", "Ϧ", "��", "��", "��", "��", "ϩ", "��", "ϱ", "��", "ϥ", "϶", "Ϭ", "��", "��", "��", "Ϩ", "��", "��", "��", "��", "��", "��", "ϫ", "��", "��", "ϳ", "��", "��", "�", "��", "��", "�", "ۭ", "��", "�", "��", "��", "�", "��", "ϭ", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "�", "�", "��", "��", "ݾ", "��"}, 
ban = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�"}, 
jiao = {"��", "��", "��", "У", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ٮ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "ܴ", "��", "�"}, 
tiao = {"��", "��", "��", "��", "��", "��", "��", "�", "��", "٬", "��", "��", "��", "��", "��", "��"}, 
zui = {"��", "��", "��", "��", "��", "��", "ީ"}, 
te = {"��", "��", "߯", "�", "�"}, 
shou = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
bing = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
an = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��"}, 
kou = {"��", "��", "��", "ߵ", "��", "ޢ", "��", "��", "��"}, 
diao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
zu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
lu = {"·", "��", "��", "��", "��", "½", "¼", "��", "��", "¶", "³", "¬", "¯", "��", "��", "��", "��", "¹", "»", "¸", "«", "®", "µ", "��", "��", "��", "´", "��", "­", "¿", "��", "±", "º", "��", "�", "�", "²", "�", "��", "��", "��", "��", "¾", "��", "°", "��", "��", "��", "��", "ޤ", "ߣ", "�", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��"}, 
guang = {"��", "��", "��", "��", "��", "��", "��"}, 
bi = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "ذ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ݩ", "޵", "�", "��", "��", "��", "�", "��", "��", "�", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��"}, 
tou = {"Ͷ", "ͷ", "͸", "͵", "��", "��"}, 
jue = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "ާ", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
nan = {"��", "��", "��", "�", "�", "��", "��", "��", "��", "��"}, 
na = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
ling = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "۹", "��", "��"}, 
qing = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
shan = {"ɽ", "��", "��", "��", "��", "��", "��", "��", "��", "ɼ", "ɺ", "��", "ɾ", "��", "��", "��", "۷", "դ", "ɿ", "�", "��", "��", "��", "��", "ڨ", "��", "ɻ", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
che = {"��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
ju = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "�", "��", "��", "�", "��", "ڪ", "��", "�", "��", "��", "��", "��", "��"}, 
ran = {"Ȼ", "Ⱦ", "ȼ", "Ƚ", "��", "��", "��"}, 
yin = {"��", "��", "��", "ӡ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "۴", "��", "�", "�", "ط", "��", "�", "�", "��", "�", "��", "�", "��", "��", "��", "ܧ"}, 
ba = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��", "��"}, 
chi = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "߳", "�", "��", "��", "ܯ", "��", "��", "��", "�", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "�", "�", "��", "��"}, 
dan = {"��", "��", "ʯ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "��", "��"}, 
cun = {"��", "��", "��", "��", "��", "��"}, 
qiu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "ٴ", "��", "��", "��", "��"}, 
fu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ܽ", "��", "��", "��", "��", "�", "�", "��", "߻", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ۮ", "ݳ", "�", "��", "��", "��", "��", "��"}, 
yan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "Ǧ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ٲ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "۳", "��", "��", "��", "��", "��", "��", "��", "��", "۱", "��", "��", "ܾ", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
jun = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
yo = {"��", "Ӵ", "�"}, 
gan = {"��", "��", "��", "��", "��", "��", "��", "��", "Ǭ", "��", "��", "��", "��", "��", "�", "��", "��", "ߦ", "��", "�", "��", "��", "�", "��", "��"}, 
tuan = {"��", "��", "�", "��", "��"}, 
zao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
lian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��", "��", "�", "��", "�", "��"}, 
zhuan = {"ר", "ת", "��", "׬", "ש", "׫", "׭", "��", "��", "��", "�"}, 
shao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ۿ", "��", "��", "�", "��", "��"}, 
fei = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��"}, 
shen = {"��", "��", "��", "��", "ʲ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ݷ", "��", "��", "��", "��", "��", "��", "�", "��", "��", "ڷ", "��", "��", "��"}, 
geng = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
kan = {"��", "��", "��", "��", "��", "��", "٩", "Ƕ", "��", "�", "��", "��", "�", "ݨ"}, 
tai = {"̨", "̫", "̬", "̩", "̧", "̥", "̭", "��", "̦", "޷", "��", "��", "ۢ", "��", "߾", "̪", "��", "��"}, 
yang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��"}, 
lao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
liu = {"��", "��", "��", "��", "½", "��", "��", "��", "��", "µ", "�", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "�"}, 
hen = {"��", "��", "��", "��"}, 
gei = {"��"}, 
chuang = {"��", "��", "��", "��", "��", "��", "��"}, 
lun = {"��", "��", "��", "��", "��", "��", "��", "��"}, 
bie = {"��", "��", "��", "��", "��"}, 
bian = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��"}, 
feng = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ٺ", "��", "ۺ", "�", "��", "��"}, 
pi = {"��", "��", "Ƥ", "��", "��", "ơ", "ƥ", "��", "ƣ", "Ƨ", "��", "��", "Ƣ", "Ʃ", "��", "��", "ƨ", "��", "��", "��", "Ʀ", "�", "��", "ا", "��", "��", "��", "��", "�", "��", "��", "��", "ۯ", "��", "�", "��", "�", "��", "ܱ", "�", "��", "��", "��", "��", "��", "ߨ", "�", "��"}, 
cha = {"��", "��", "��", "��", "��", "��", "ɲ", "��", "�", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "�", "��", "��", "��", "��", "�"}, 
zha = {"��", "��", "ը", "թ", "��", "բ", "��", "��", "զ", "է", "ե", "�", "��", "դ", "գ", "��", "��", "��", "�", "ա", "��", "߸", "��", "��", "��", "��", "��"}, 
lin = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "�", "��"}, 
zhuai = {"ת", "ק", "ҷ"}, 
huai = {"��", "��", "��", "��", "��", "��", "��"}, 
zhun = {"׼", "��", "׻", "��", "�"}, 
xu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "ڼ", "��", "ޣ", "��", "�", "��", "��", "��", "�", "��"}, 
chuan = {"��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��"}, 
gou = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڸ", "�", "�", "��", "��", "��", "��", "��"}, 
bai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
cai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
can = {"��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��"}, 
cen = {"��", "�", "�"}, 
zhen = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "�", "��", "��", "��", "�", "��", "�", "�"}, 
tui = {"��", "��", "��", "��", "��", "��", "߯", "��"}, 
sai = {"˼", "��", "��", "��", "��", "��"}, 
zou = {"��", "��", "��", "��", "��", "��", "��", "۸", "��"}, 
zhuang = {"װ", "״", "ׯ", "׳", "ײ", "ױ", "��", "׮", "��", "��"}, 
ze = {"��", "��", "��", "��", "��", "զ", "��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
zhou = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "��", "��", "��", "ݧ"}, 
que = {"ȷ", "ȴ", "ȱ", "ȸ", "ȵ", "��", "ȳ", "ȶ", "Ȳ", "��", "�"}, 
mao = {"ó", "ë", "ì", "ð", "ò", "ï", "é", "ñ", "è", "��", "ê", "�", "��", "��", "î", "í", "�", "�", "�", "�", "��", "�", "��", "��", "�"}, 
fan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ެ", "��", "�", "�", "��", "��", "��"}, 
xuan = {"ѡ", "��", "ȯ", "��", "��", "��", "��", "��", "Ѥ", "��", "�", "��", "��", "Ѣ", "��", "ѣ", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��"}, 
ya = {"��", "ѹ", "��", "��", "Ѻ", "ƥ", "Ѽ", "ѽ", "��", "��", "ѿ", "��", "��", "ѻ", "�", "��", "Ѿ", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "�", "�"}, 
me = {"ô", "��"}, 
ma = {"ô", "��", "��", "Ħ", "��", "��", "��", "��", "��", "��", "Ĩ", "��", "��", "�", "��", "�", "��"}, 
wang = {"��", "��", "��", "��", "��", "��", "��", "��", "â", "��", "��", "�", "��", "��", "��", "��"}, 
ce = {"��", "��", "��", "��", "��", "��"}, 
nu = {"Ů", "Ŭ", "ŭ", "ū", "��", "��", "��", "��", "��", "��", "�"}, 
tan = {"̸", "̽", "̹", "̯", "��", "̿", "̳", "̲", "̰", "̾", "̷", "̶", "̼", "̺", "̱", "̴", "̵", "̻", "̮", "��", "�", "۰", "�", "��", "��", "��"}, 
kuang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڿ", "ڲ", "��"}, 
se = {"ɫ", "��", "ɪ", "ɬ", "��", "�", "�"}, 
shai = {"ɫ", "ɸ", "ɹ"}, 
tsmz = {"�е���ѩ", "SYP", "ˮ������", "�����"}, 
lie = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��"}, 
gang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��"}, 
kuan = {"��", "��", "��"}, 
la = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
gu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "ڬ", "�", "��", "��", "�", "��", "��", "��", "�", "��", "��", "��", "��"}, 
gen = {"��", "��", "ب", "��", "��", "ݢ"}, 
tu = {"��", "ͻ", "ͼ", ";", "ͽ", "Ϳ", "��", "��", "��", "ͺ", "͹", "ݱ", "��", "��", "ܢ", "��"}, 
qun = {"Ⱥ", "ȹ", "��"}, 
su = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "�", "��"}, 
lei = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڳ", "��"}, 
xun = {"Ѷ", "ѵ", "Ѹ", "Ѱ", "ѯ", "ѭ", "Ѯ", "Ѳ", "Ѵ", "ѫ", "ѷ", "Ѭ", "��", "��", "ѳ", "ѱ", "��", "��", "޹", "��", "�", "�", "�", "��", "��", "ۨ", "��", "��", "�", "ަ", "��", "�"}, 
zhua = {"ץ", "��"}, 
re = {"��", "��", "��"}, 
mi = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
pei = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��"}, 
kao = {"��", "��", "��", "��", "��", "��", "��", "��"}, 
duan = {"��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
luo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "�", "��", "��"}, 
e = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ج", "�", "��", "��", "��", "�", "��", "��", "��", "ݭ", "��", "�", "�", "��", "��", "��", "��"}, 
shuang = {"˫", "ˬ", "˪", "��", "��"}, 
rang = {"��", "��", "��", "��", "ȿ", "�", "��"}, 
qie = {"��", "��", "��", "��", "��", "��", "��", "٤", "�", "�", "��", "ۧ", "��", "�"}, 
pian = {"��", "Ƭ", "ƪ", "ƫ", "ƭ", "��", "��", "��", "��", "��", "��", "��", "��"}, 
kong = {"��", "��", "��", "��", "��", "��", "��"}, 
ni = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "٣", "��", "��", "��", "�", "�"}, 
ceng = {"��", "��", "��"}, 
huang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�"}, 
suan = {"��", "��", "��", "�"}, 
po = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "۶", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�"}, 
tie = {"��", "��", "��", "��", "��"}, 
man = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "á", "��", "��", "��", "��", "�", "ܬ", "��"}, 
ai = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
rong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
chen = {"��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "�", "��", "��", "��"}, 
pai = {"��", "��", "��", "��", "��", "��", "��", "ٽ", "��", "��"}, 
cu = {"��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��"}, 
kun = {"��", "��", "��", "��", "��", "�", "��", "��", "��", "�", "��"}, 
chao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
sui = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "ݴ"}, 
chun = {"��", "��", "��", "��", "��", "��", "��", "��", "ݻ", "��"}, 
kuo = {"��", "��", "��", "��", "��", "��", "��"}, 
hong = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ޮ", "��", "ڧ", "ݦ", "��", "ް"}, 
mai = {"��", "��", "��", "��", "��", "��", "��", "ݤ", "۽"}, 
xiu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��"}, 
qin = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
cuo = {"��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��"}, 
long = {"��", "¡", "Ū", "¢", "��", "£", "��", "¤", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
dun = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
kang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
pu = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "��", "��", "�", "��", "��"}, 
reng = {"��", "��"}, 
bo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "�", "��", "��"}, 
lan = {"��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "�", "��", "��", "��"}, 
piao = {"Ʊ", "��", "Ư", "Ʈ", "��", "ư", "��", "��", "��", "�", "��", "��", "ݳ", "�"}, 
sun = {"��", "��", "��", "ݥ", "�", "��", "��", "�"}, 
ning = {"��", "��", "��", "š", "Ţ", "��", "��", "��", "��", "��", "�"}, 
ku = {"��", "��", "��", "��", "��", "��", "��", "��", "ܥ", "�", "��", "�"}, 
nao = {"Ŭ", "��", "��", "��", "��", "�", "��", "ث", "��", "��", "��", "��", "�", "��"}, 
tao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "߶", "��", "�", "��", "��", "��", "ػ"}, 
song = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "ڡ", "��", "�", "ݿ"}, 
mou = {"ĳ", "ı", "Ĳ", "��", "��", "��", "��", "��", "��", "ٰ"}, 
pa = {"��", "��", "��", "��", "��", "ſ", "��", "ž", "��", "��", "��", "��", "��"}, 
lue = {"��", "��", "�"}, 
hei = {"��", "��"}, 
chai = {"��", "��", "��", "��", "��", "٭", "�", "��"}, 
a = {"��", "��", "��", "��", "��", "߹", "�"}, 
ting = {"��", "ͥ", "ͣ", "��", "͢", "ͦ", "ͤ", "ͧ", "��", "͡", "��", "��", "��", "�", "��", "��", "��", "��"}, 
sha = {"ɳ", "��", "ɱ", "ɴ", "ɰ", "ɶ", "ɯ", "ɲ", "ɼ", "ɵ", "ɷ", "��", "��", "��", "��", "��", "��", "�", "��", "�"}, 
tuo = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "٢", "��", "��", "��", "��", "��", "ر", "��", "��", "��", "��", "��"}, 
pan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
gua = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "ڴ", "�", "��"}, 
lou = {"¥", "¶", "©", "ª", "¦", "§", "¨", "�", "��", "��", "��", "��", "��", "��", "��", "��"}, 
han = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��"}, 
cao = {"��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
cang = {"��", "��", "��", "��", "��"}, 
zang = {"��", "��", "��", "��", "�", "��", "��"}, 
shun = {"˳", "˲", "˴", "˱"}, 
ka = {"��", "��", "��", "��", "��", "��", "��"}, 
qia = {"��", "ǡ", "Ǣ", "٤", "��", "��", "��", "��"}, 
qiao = {"��", "��", "��", "��", "��", "��", "��", "��", "ȸ", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "ڽ", "��", "�", "��", "��", "��", "��"}, 
fou = {"��", "�"}, 
bang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
ao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "��", "��", "��", "��", "��", "��", "��"}, 
zhai = {"ծ", "��", "լ", "կ", "��", "ժ", "խ", "ի", "��", "��", "��", "�"}, 
zhui = {"׷", "׹", "׺", "׵", "׶", "׸", "�", "��", "��"}, 
chou = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "ٱ", "�", "��", "��"}, 
zen = {"��", "��"}, 
kui = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "ظ", "��", "�", "��", "��", "��", "�", "��", "��", "��", "��", "��", "��", "�", "�", "��"}, 
ha = {"��", "Ϻ", "��", "��"}, 
za = {"��", "��", "��", "��", "զ", "��", "��"}, 
luan = {"��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�"}, 
xiong = {"��", "��", "��", "��", "��", "��", "��", "ܺ"}, 
ne = {"��", "��", "��", "ګ"}, 
zan = {"��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
rui = {"��", "��", "�", "��", "��", "ި", "�", "��"}, 
tang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��", "��", "�", "��", "�", "�"}, 
run = {"��", "��"}, 
kua = {"��", "��", "��", "��", "��", "٨"}, 
wa = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��"}, 
meng = {"��", "��", "��", "��", "��", "��", "å", "��", "��", "��", "��", "��", "��", "�", "�", "��", "��", "��", "ޫ", "��"}, 
bin = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
leng = {"��", "�", "��", "��", "ܨ"}, 
peng = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "ܡ"}, 
niu = {"ţ", "Ŧ", "Ť", "ť", "��", "�", "��", "��"}, 
rou = {"��", "��", "��", "��", "��", "��"}, 
ruo = {"��", "��", "ټ"}, 
sen = {"ɭ"}, 
sa = {"��", "��", "��", "�", "ئ", "��", "��", "��"}, 
juan = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "۲", "��", "��", "��", "��"}, 
pao = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}, 
ruan = {"��", "��", "��"}, 
lang = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "�", "ݹ", "�", "��", "��"}, 
zun = {"��", "��", "��", "��", "ߤ"}, 
ken = {"��", "��", "��", "��", "��"}, 
hun = {"��", "��", "��", "��", "��", "��", "��", "ڻ", "��", "��"}, 
en = {"��", "��", "��", "��"}, 
qiong = {"��", "��", "�", "��", "��", "��", "��", "��", "��"}, 
rao = {"��", "��", "��", "�", "��", "��"}, 
mang = {"æ", "ä", "ã", "â", "å", "ç", "��", "��", "��", "��"}, 
nuo = {"ŵ", "Ų", "��", "Ŵ", "ų", "��", "��", "��", "�"}, 
teng = {"��", "��", "��", "��", "��"}, 
nin = {"��"}, 
miao = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "��", "��"}, 
mie = {"��", "��", "��", "ؿ", "��", "�"}, 
niang = {"��"}, 
nai = {"��", "��", "��", "��", "ؾ", "��", "��", "��", "ܵ"}, 
sang = {"ɣ", "ɥ", "ɤ", "��", "�", "��"}, 
ca = {"��", "��", "��", "��"}, 
sao = {"ɨ", "ɧ", "ɩ", "��", "��", "ɦ", "��", "��", "ܣ", "��", "��"}, 
zuan = {"��", "׬", "��", "߬", "��", "��"}, 
shua = {"ˢ", "ˣ", "�"}, 
gun = {"��", "��", "��", "��", "��", "��", "�"}, 
guai = {"��", "��", "��"}, 
pang = {"��", "��", "��", "��", "��", "��", "�", "��", "��", "��", "��"}, 
nuan = {"ů"}, 
shuai = {"˥", "˧", "ˤ", "˦", "�"}, 
cui = {"˥", "��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "��", "��", "�", "��"}, 
niao = {"��", "��", "��", "��", "��", "��", "��"}, 
die = {"��", "��", "��", "��", "��", "��", "��", "�", "��", "�", "��", "ܦ", "�", "��", "��", "��", "��"}, 
pen = {"��", "��", "��"}, 
chui = {"��", "��", "��", "��", "׵", "��", "�", "��", "�"}, 
ang = {"��", "��", "��"}, 
keng = {"��", "�", "��"}, 
tun = {"��", "��", "��", "��", "��", "��", "�", "��", "��"}, 
diu = {"��", "��"}, 
weng = {"��", "��", "��", "��", "޳"}, 
sou = {"��", "��", "��", "��", "�", "��", "��", "޴", "�", "��", "��", "��", "��", "�"}, 
ga = {"��", "��", "��", "��", "��", "�", "��", "��", "��"}, 
lia = {"��"}, 
nen = {"��", "�"}, 
nang = {"��", "��", "��", "��", "߭"}, 
nie = {"��", "��", "��", "��", "��", "��", "��", "��", "�", "��", "��", "�", "ؿ", "��"}, 
beng = {"��", "��", "��", "��", "��", "��", "��", "��", "�"}, 
cou = {"��", "�", "��", "�"}, 
pou = {"��", "��", "��"}, 
seng = {"ɮ"}, 
nue = {"Ű"}, 
cuan = {"��", "��", "��", "��", "ߥ", "��", "��", "��"}, 
chuo = {"�", "��", "��", "�", "��", "��"}, 
chuai = {"��", "��", "�", "��", "��", "��"}, 
jiong = {"��", "��", "��", "��", "��"}, 
shuan = {"˨", "˩", "��", "��"}, 
zei = {"��"}, 
pie = {"Ƴ", "Ʋ", "��", "�", "د"}, 
miu = {"��"}, 
o = {"Ŷ", "��", "�"}, 
dia = {"��"}, 
nou = {"��"}, 
ei = {"��"}, 
s = {"S"}, 
y = {"Y"}, 
p = {"P"}, 
sz = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}}
  local T2 = T1[pinyin]
  if T2 == nil then
    Cls()
    DrawStrBox(x, y, "���޴��֣�����������", C_GOLD, 24)
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

--����ƴ��������ȫ��
function GetPinyin(x, y, word)
  local T3 = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
  local T4 = {"��", "��", "��", "��", "��", "��", "��", "��", "��", "��"}
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

--����ƴ�������ְ��
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

--��ʾƴ��
function ShowPinyin(x, y, str1, str2, str3)
  Cls()
  local size = 24
  DrawBox(x, y + size, CC.ScreenW - x, y + 5 * size, C_ORANGE)
  if str3 == nil then
    DrawStrBox(x, y - size / 2, "������(ƴ)", C_WHITE, size)
  else
    DrawStrBox(x, y - size / 2, "��ѡ��", C_WHITE, size)
    DrawString(x + 15, y + size * 3.5, str3, C_WHITE, size)
  end
  lib.DrawRect(x + 10, y + size * 3, CC.ScreenW - 10 - x, y + size * 3 + 2, C_WHITE)
  DrawString(x + 20, y + size * 1.6, str1, C_RED, size)
  DrawString(x + 20 + size * string.len(str1) / 2, y + size * 1.6, str2, C_GOLD, size)
  lib.ShowSurface(0)
end

--��ʾƴ��
function ShowPinyin1(x, y, str2, str3)
  Cls()
  local size = 24
  DrawBox(x, y + size, 640 - x, y + 5 * size, C_ORANGE)
  if str3 == nil then
    DrawStrBox(x, y - size / 2, "������(ƴ)", C_WHITE, size)
  else
    DrawStrBox(x, y - size / 2, "��ѡ��", C_WHITE, size)
    DrawString(x + 15, y + size * 3.5, str3, C_WHITE, size)
  end
  lib.DrawRect(x + 10, y + size * 3, 630 - x, y + size * 3 + 2, C_WHITE)
  DrawString(x + 20, y + size * 1.6, str2, C_GOLD, size)
  lib.ShowSurface(0)
end--����midi

function tjm13(menu,menu1,x,y,color,size,num,high,flag)
   local bx = CC.ScreenW/1360
   local by = CC.ScreenH/768
   local p1x,p1y = bx*200,by*30
   local cont = 1
   local cont1 = 0
   local page = 1
   
   --Ĭ�ϸ߶ȼ��
   local h = size*1.2
   
   --�Զ�����
   if high ~= nil then 
      h = high
   end
   
   --�Զ�����ʾ���б�����
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