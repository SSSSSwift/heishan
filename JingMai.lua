-------------------------------------
--�����ˣ�����Ұȸ
--ʱ��  ��2022.5.2
--�ļ�����JingMai.lua
--����  ������ϵͳ
-------------------------------------
require("JingMaiCfg") -- ��������
require("JingMaiFunc") -- ����ͻ�ƺ���

function JingMai_testShowJMLayout()
	local xcor = CC.MainSubMenuX + 5
    DrawStrBox(xcor,CC.MainSubMenuY,"Ҫ��ͻ��˭�ľ���",LimeGreen,CC.DefaultFont,C_GOLD);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;

    local teamIndex = SelectTeamMenu(xcor,nexty);
	local id = JY.Base['����'..teamIndex]
	-- һ���ɫʹ��ͨ�ü�����
	local layoutcfg = generalTreeLayoutCfg
	local detailcfg = generalTreeDetailCfg
	
	-- �������id��ɫ�ж���������
	if specialTreeCfg[id] ~= nil then
		layoutcfg = specialTreeCfg[id].specialTreeLayoutCfg
		detailcfg = specialTreeCfg[id].specialTreeDetailCfg
	end
	
	JingMai_ShowJMLayout(id, layoutcfg, detailcfg)
end

-------------------------------------
-- ��ʾ����ͼƬ����
-------------------------------------
function JingMai_ShowJMLayout(personid, layoutCfg, detailcfg)
	local bx = CC.ScreenW/1360
    local by = CC.ScreenH/768
	local id = personid
	local size = CC.DefaultFont*0.9
				
	-- ��¼����ѡ��λ�ã�����QZZB�ж�Ӧ������
	local current_cursor = {
								x = 1, y = 2,	-- x:��   y:��
								state = false,  -- �س�״̬
								selectState = 0, -- (0:δѡ�У�1ѡ����2ѡ����)
								personID = id,	-- ��ǰѡ�н�ɫid
						   }
	
	while true do
		Cls()
		-- ����ͼ
		lib.LoadPNG(10,67*2,10,0,1)
		--lib.PicLoadCache(98, 2 * 2 ,0 , 0, 1)
		-- ��ʾ����
		DrawString(bx*212+bx*515-string.len(JY.Person[id]["����"])/2*size, by*33+by*73, JY.Person[id]["����"], C_CYGOLD, size)
		-- ��ʾ����ͼƬ
		for line, columnTab in ipairs(layoutCfg) do
			for column, offsetANDpic in ipairs(columnTab) do
				-- �ж��츳��ǰ�Ƿ����
				local res = JingMai_Split(detailcfg[line][column][4], "&")
				if JY.Person[id][res[1]] > 0 then
					lib.LoadPNG(10,offsetANDpic[3]*2,bx*212+bx*offsetANDpic[1]-bx*22.5,by*33+by*offsetANDpic[2]-by*22.5,1)		
				else	
					lib.LoadPNG(10,(offsetANDpic[3]+21)*2,bx*212+bx*offsetANDpic[1]-bx*22.5,by*33+by*offsetANDpic[2]-by*22.5,1)
				end
				if current_cursor.y == line and current_cursor.x == column then
					DrawString(bx*212+bx*offsetANDpic[1]-string.len(detailcfg[line][column][1])/4*size*0.7,by*33+by*offsetANDpic[2]-by*44,detailcfg[line][column][1],C_RED,size*0.7)	
				else
					DrawString(bx*212+bx*offsetANDpic[1]-string.len(detailcfg[line][column][1])/4*size*0.7,by*33+by*offsetANDpic[2]-by*44,detailcfg[line][column][1],C_CYGOLD,size*0.7)		
				end
			end
		end
		
		-- �������س�����ʾ��ǰ��Ѩ����
		if current_cursor.state then
			local hs = 0
			local FY = 0	
			local ZUIDHS = 15
			local h = 0
			local ZUOBIAO1 = {{458,479},{559,479}}
			local WZ2 = {"ͻ��","����"}
			local x = current_cursor.x
			local y = current_cursor.y
			-- ����ͼ
			lib.LoadPNG(10,69*2,bx*212+bx*300,by*33+by*226,1)
			-- ��Ѩ����
			h = tjm(bx*212+bx*328, by*33+by*230+size*1.4* (hs-FY),detailcfg[y][x][1], C_WHITE, size*1.4,18,size*1.4,FY-hs,ZUIDHS+1-hs+FY)
			-- ��Ѩ����
			hs = hs + h
			local res = JingMai_Split(detailcfg[y][x][4], "&")
			h = tjm(bx*212+bx*328, by*33+by*235+size* (hs-FY),"��������[".. JY.Person[id][res[1]] .."/" .. res[2].."]", LightPurple, size*0.9,18,size,FY-hs,ZUIDHS+1-hs+FY)			
			-- ��Ѩ����
			hs = hs + h
			h = tjm(bx*212+bx*328, by*33+by*235+size* (hs-FY),detailcfg[y][x][2], M_SeaGreen, size*0.7,16,size,FY-hs,ZUIDHS+1-hs+FY)			
			-- ��Ѩ˵��
			hs = hs + h
			h = tjm(bx*212+bx*328, by*33+by*235+size* (hs-FY),detailcfg[y][x][3], C_WHITE, size*0.7,16,size,FY-hs,ZUIDHS+1-hs+FY)	
			-- ѡ��ť
			local color1 = current_cursor.selectState == 1 and C_RED or C_CYGOLD
			local color2 = current_cursor.selectState == 2 and C_RED or C_CYGOLD
			DrawString(bx*212+bx*ZUOBIAO1[1][1]-string.len(WZ2[1])/4*size,by*33+by*ZUOBIAO1[1][2]-by*14,WZ2[1],color1,size*0.9)
			DrawString(bx*212+bx*ZUOBIAO1[2][1]-string.len(WZ2[2])/4*size,by*33+by*ZUOBIAO1[2][2]-by*14,WZ2[2],color2,size*0.9)
		end
		
		-- ˢ����Ļ
		ShowScreen()

		-- ��������
		lib.Delay(CC.BattleDelay)
		local res = JingMai_KeyTrigger(current_cursor, detailcfg)
		if res == 0 then
			return 
		end
	end
end

---------------------------------------------
-- ��������
-- current_cursor ��ǰ�α������
-- cfg �������ã������жϰ����Ϸ��ԣ���ȡͻ������
-- ���� 0 ���� ����ESC�˳�
---------------------------------------------
function JingMai_KeyTrigger(current_cursor, cfg)
	local key, key_type, mouse_x, mouse_y = lib.GetKey()
	if key == VK_ESCAPE then -- esc
		-- ���������ʾ����״̬�£���ô��esc�����˳�����ϵͳ
		if not current_cursor.state then
			return 0
		else -- �������˳�����״̬
			current_cursor.state = not current_cursor.state
		end
	elseif key == VK_UP then -- ��
		-- ���������ʾ����״̬�£���ô���ϼ������ƶ��α�
		if not current_cursor.state then
			if cfg[current_cursor.y - 1] ~= nil and cfg[current_cursor.y - 1][current_cursor.x] ~= nil then
				current_cursor.y = current_cursor.y - 1
			end
		end
	elseif key == VK_DOWN then -- ��
		-- ���������ʾ����״̬�£���ô���¼������ƶ��α�
		if not current_cursor.state then	
			if cfg[current_cursor.y + 1] ~= nil and cfg[current_cursor.y + 1][current_cursor.x] ~= nil then
				current_cursor.y = current_cursor.y + 1
			end
		end
	elseif key == VK_LEFT then -- ��
		-- ���������ʾ����״̬�£���ô����������ƶ��α�
		if not current_cursor.state then		
			if cfg[current_cursor.y] ~= nil and cfg[current_cursor.y][current_cursor.x - 1] ~= nil then
				current_cursor.x = current_cursor.x - 1
			end
		else -- �������л�����ѡ��״̬
			current_cursor.selectState = 1
		end
	elseif key == VK_RIGHT then -- ��
		-- ���������ʾ����״̬�£���ô����������ƶ��α�
		if not current_cursor.state then		
			if cfg[current_cursor.y] ~= nil and cfg[current_cursor.y][current_cursor.x + 1] ~= nil then
				current_cursor.x = current_cursor.x + 1
			end
		else -- �������л�����ѡ��״̬
			current_cursor.selectState = 2
		end
	elseif key == VK_SPACE or key == VK_RETURN then -- �س�
		-- ���������ʾ����״̬�£���ô���س����Խ�������
		if not current_cursor.state then
			current_cursor.state = not current_cursor.state
		else
			-- ������״̬�£�����ѡ��״̬�����з�֧
			if current_cursor.selectState == 1 then
				-- ͻ��(����ͻ������)
				local res = JingMai_Split(cfg[current_cursor.y][current_cursor.x][4],"&")
				_G[res[3]]()
				current_cursor.state = not current_cursor.state
			elseif current_cursor.selectState == 2 then
				-- �˳�
				current_cursor.state = not current_cursor.state
			end
		end
		
	end
	
	return 1
end

---------------------------------------------
-- �ж�ͻ������
-- personID ��ɫID
-- condition ����
---------------------------------------------
function JingMai_Condition(personID, condition)
	local bx = CC.ScreenW/1360
    local by = CC.ScreenH/768
	local id = personID
	local size = CC.DefaultFont*0.9

	local resultTab = JingMai_Split(condition, "&")
	-- ����Ŀǰ��[1]�������� [2]�������� [3]�������� [4]����ֵ
	if resultTab[1] == "����" then
		if JY.GOLD >= tonumber(resultTab[2]) then
			JY.Person[id][resultTab[3]] = JY.Person[id][resultTab[3]] + tonumber(resultTab[4])
			JY.GOLD = JY.GOLD - tonumber(resultTab[2])
			return
		end

		return
	end
	
	-- ����Ŀǰ��[1]ǰ���츳 [2]ǰ���츳�ȼ� [3]�����츳 [4]�����츳ֵ
	if JY.Person[id][resultTab[1]] > tonumber(resultTab[2]) then
		JY.Person[id][resultTab[3]] = JY.Person[id][resultTab[3]] + tonumber(resultTab[4])
		return
	end
	
end

---------------------------------------------
-- ��������
---------------------------------------------
function JingMai_Split(str, flag)
	local temp = {}
	string.gsub(str, '[^'..flag..']+', function(w) table.insert(temp, w) end )
	return temp
end