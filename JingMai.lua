-------------------------------------
--创建人：闲云野雀
--时间  ：2022.5.2
--文件名：JingMai.lua
--作用  ：经脉系统
-------------------------------------
require("JingMaiCfg") -- 加载配置
require("JingMaiFunc") -- 加载突破函数

function JingMai_testShowJMLayout()
	local xcor = CC.MainSubMenuX + 5
    DrawStrBox(xcor,CC.MainSubMenuY,"要查突破谁的经脉",LimeGreen,CC.DefaultFont,C_GOLD);
	local nexty=CC.MainSubMenuY+CC.SingleLineHeight;

    local teamIndex = SelectTeamMenu(xcor,nexty);
	local id = JY.Base['队伍'..teamIndex]
	-- 一般角色使用通用技能树
	local layoutcfg = generalTreeLayoutCfg
	local detailcfg = generalTreeDetailCfg
	
	-- 如果返回id角色有独立技能树
	if specialTreeCfg[id] ~= nil then
		layoutcfg = specialTreeCfg[id].specialTreeLayoutCfg
		detailcfg = specialTreeCfg[id].specialTreeDetailCfg
	end
	
	JingMai_ShowJMLayout(id, layoutcfg, detailcfg)
end

-------------------------------------
-- 显示经脉图片布局
-------------------------------------
function JingMai_ShowJMLayout(personid, layoutCfg, detailcfg)
	local bx = CC.ScreenW/1360
    local by = CC.ScreenH/768
	local id = personid
	local size = CC.DefaultFont*0.9
				
	-- 记录现在选择位置（代表QZZB中对应索引）
	local current_cursor = {
								x = 1, y = 2,	-- x:列   y:行
								state = false,  -- 回车状态
								selectState = 0, -- (0:未选中，1选中左，2选中右)
								personID = id,	-- 当前选中角色id
						   }
	
	while true do
		Cls()
		-- 背景图
		lib.LoadPNG(10,67*2,10,0,1)
		--lib.PicLoadCache(98, 2 * 2 ,0 , 0, 1)
		-- 显示名字
		DrawString(bx*212+bx*515-string.len(JY.Person[id]["姓名"])/2*size, by*33+by*73, JY.Person[id]["姓名"], C_CYGOLD, size)
		-- 显示技能图片
		for line, columnTab in ipairs(layoutCfg) do
			for column, offsetANDpic in ipairs(columnTab) do
				-- 判断天赋当前是否点亮
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
		
		-- 如果点击回车，显示当前奇穴详情
		if current_cursor.state then
			local hs = 0
			local FY = 0	
			local ZUIDHS = 15
			local h = 0
			local ZUOBIAO1 = {{458,479},{559,479}}
			local WZ2 = {"突破","返回"}
			local x = current_cursor.x
			local y = current_cursor.y
			-- 背景图
			lib.LoadPNG(10,69*2,bx*212+bx*300,by*33+by*226,1)
			-- 奇穴名称
			h = tjm(bx*212+bx*328, by*33+by*230+size*1.4* (hs-FY),detailcfg[y][x][1], C_WHITE, size*1.4,18,size*1.4,FY-hs,ZUIDHS+1-hs+FY)
			-- 奇穴进度
			hs = hs + h
			local res = JingMai_Split(detailcfg[y][x][4], "&")
			h = tjm(bx*212+bx*328, by*33+by*235+size* (hs-FY),"修炼进度[".. JY.Person[id][res[1]] .."/" .. res[2].."]", LightPurple, size*0.9,18,size,FY-hs,ZUIDHS+1-hs+FY)			
			-- 奇穴条件
			hs = hs + h
			h = tjm(bx*212+bx*328, by*33+by*235+size* (hs-FY),detailcfg[y][x][2], M_SeaGreen, size*0.7,16,size,FY-hs,ZUIDHS+1-hs+FY)			
			-- 奇穴说明
			hs = hs + h
			h = tjm(bx*212+bx*328, by*33+by*235+size* (hs-FY),detailcfg[y][x][3], C_WHITE, size*0.7,16,size,FY-hs,ZUIDHS+1-hs+FY)	
			-- 选择按钮
			local color1 = current_cursor.selectState == 1 and C_RED or C_CYGOLD
			local color2 = current_cursor.selectState == 2 and C_RED or C_CYGOLD
			DrawString(bx*212+bx*ZUOBIAO1[1][1]-string.len(WZ2[1])/4*size,by*33+by*ZUOBIAO1[1][2]-by*14,WZ2[1],color1,size*0.9)
			DrawString(bx*212+bx*ZUOBIAO1[2][1]-string.len(WZ2[2])/4*size,by*33+by*ZUOBIAO1[2][2]-by*14,WZ2[2],color2,size*0.9)
		end
		
		-- 刷新屏幕
		ShowScreen()

		-- 按键触发
		lib.Delay(CC.BattleDelay)
		local res = JingMai_KeyTrigger(current_cursor, detailcfg)
		if res == 0 then
			return 
		end
	end
end

---------------------------------------------
-- 按键触发
-- current_cursor 当前游标的引用
-- cfg 详情配置，用来判断按键合法性，获取突破条件
-- 返回 0 代表 按下ESC退出
---------------------------------------------
function JingMai_KeyTrigger(current_cursor, cfg)
	local key, key_type, mouse_x, mouse_y = lib.GetKey()
	if key == VK_ESCAPE then -- esc
		-- 如果不在显示详情状态下，那么按esc可以退出经脉系统
		if not current_cursor.state then
			return 0
		else -- 否则是退出详情状态
			current_cursor.state = not current_cursor.state
		end
	elseif key == VK_UP then -- 上
		-- 如果不在显示详情状态下，那么按上键可以移动游标
		if not current_cursor.state then
			if cfg[current_cursor.y - 1] ~= nil and cfg[current_cursor.y - 1][current_cursor.x] ~= nil then
				current_cursor.y = current_cursor.y - 1
			end
		end
	elseif key == VK_DOWN then -- 下
		-- 如果不在显示详情状态下，那么按下键可以移动游标
		if not current_cursor.state then	
			if cfg[current_cursor.y + 1] ~= nil and cfg[current_cursor.y + 1][current_cursor.x] ~= nil then
				current_cursor.y = current_cursor.y + 1
			end
		end
	elseif key == VK_LEFT then -- 左
		-- 如果不在显示详情状态下，那么按左键可以移动游标
		if not current_cursor.state then		
			if cfg[current_cursor.y] ~= nil and cfg[current_cursor.y][current_cursor.x - 1] ~= nil then
				current_cursor.x = current_cursor.x - 1
			end
		else -- 否则是切换详情选择状态
			current_cursor.selectState = 1
		end
	elseif key == VK_RIGHT then -- 右
		-- 如果不在显示详情状态下，那么按左键可以移动游标
		if not current_cursor.state then		
			if cfg[current_cursor.y] ~= nil and cfg[current_cursor.y][current_cursor.x + 1] ~= nil then
				current_cursor.x = current_cursor.x + 1
			end
		else -- 否则是切换详情选择状态
			current_cursor.selectState = 2
		end
	elseif key == VK_SPACE or key == VK_RETURN then -- 回车
		-- 如果不在显示详情状态下，那么按回车可以进入详情
		if not current_cursor.state then
			current_cursor.state = not current_cursor.state
		else
			-- 在详情状态下，依据选择状态，进行分支
			if current_cursor.selectState == 1 then
				-- 突破(解析突破条件)
				local res = JingMai_Split(cfg[current_cursor.y][current_cursor.x][4],"&")
				_G[res[3]]()
				current_cursor.state = not current_cursor.state
			elseif current_cursor.selectState == 2 then
				-- 退出
				current_cursor.state = not current_cursor.state
			end
		end
		
	end
	
	return 1
end

---------------------------------------------
-- 判断突破条件
-- personID 角色ID
-- condition 条件
---------------------------------------------
function JingMai_Condition(personID, condition)
	local bx = CC.ScreenW/1360
    local by = CC.ScreenH/768
	local id = personID
	local size = CC.DefaultFont*0.9

	local resultTab = JingMai_Split(condition, "&")
	-- 条件目前是[1]消耗银两 [2]银两数量 [3]提升属性 [4]提升值
	if resultTab[1] == "银两" then
		if JY.GOLD >= tonumber(resultTab[2]) then
			JY.Person[id][resultTab[3]] = JY.Person[id][resultTab[3]] + tonumber(resultTab[4])
			JY.GOLD = JY.GOLD - tonumber(resultTab[2])
			return
		end

		return
	end
	
	-- 条件目前是[1]前置天赋 [2]前置天赋等级 [3]设置天赋 [4]设置天赋值
	if JY.Person[id][resultTab[1]] > tonumber(resultTab[2]) then
		JY.Person[id][resultTab[3]] = JY.Person[id][resultTab[3]] + tonumber(resultTab[4])
		return
	end
	
end

---------------------------------------------
-- 解析条件
---------------------------------------------
function JingMai_Split(str, flag)
	local temp = {}
	string.gsub(str, '[^'..flag..']+', function(w) table.insert(temp, w) end )
	return temp
end