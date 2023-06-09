function oldCallEvent(eventnum)
  ReadKDEF(eventnum)
end

function ReadKDEF(id)
  local kidx, tmp_x, tmp_y, tmp_x1, tmp_y1 = nil, nil, nil, nil, nil
  lib.Debug("Event:" .. id)
  local idx1, idx2 = nil, nil
  if id < 1 then
    return 
  end
  kidx = Byte.create(8)
  Byte.loadfile(kidx, CC.KDX, id * 4 - 4, 8)
  idx1 = Byte.get32(kidx, 0)
  idx2 = Byte.get32(kidx, 4)
  local len = idx2 - idx1
  local kdef = Byte.create(len)
  Byte.loadfile(kdef, CC.KRP, idx1, len)
  local E = {}
  len = len / 2
  for i = 0, len - 1 do
    E[i] = Byte.get16(kdef, 2 * i)
  end
  local idx = 0
  local getb = function(b, num)
    num = math.modf(num / 2 ^ b)
    num = math.fmod(num, 2)
    return num
  end
  local getvaule = function(b, t, ee)
    if not x50[ee] then
        local rv = getb(b, t) ~= 1 or 0
		if not string.byte(rv, 1) then
			local l = type(rv) ~= "string" or 0
			local h = string.byte(rv, 2) or 0
			rv = l + h * 256
		end
      return rv
    end
    return ee
  end
  local getchar = function(char)
    local l, h = nil
    if char < 0 then
      char = 65536 + char
    end
    l = (char) % 256
    h = math.modf((char) / 256)
    l = string.char(l)
    if h == 0 then
      return l
    end
    h = string.char(h)
    return l .. h
  end
  local newinstruct_50_sub = {[0] = function(e1, e2, e3, e4, e5, e6)
    x50[e1] = e2
  end, [1] = function(e1, e2, e3, e4, e5, e6)
    e4 = getvaule(0, e1, e4)
    e5 = getvaule(1, e1, e5)
    if e2 == 0 then
      x50[e3 + e4] = e5
    elseif e2 == 1 then
      x50[e3 + e4] = e5 % 256
    end
  end, [2] = function(e1, e2, e3, e4, e5, e6)
    e4 = getvaule(0, e1, e4)
    local num = getvaule(0, 1, e3 + e4)
    if e2 == 1 then
      num = num % 256
    end
    x50[e5] = num
  end, [3] = function(e1, e2, e3, e4, e5, e6)
    if e2 == 5 then
      e4 = getvaule(0, 1, e4)
      if e4 < 0 then
        e4 = 65536 + e4
      end
      e2 = 3
    else
      e4 = getvaule(0, 1, e4)
    end
    e5 = getvaule(0, e1, e5)
    if e2 == 0 then
      x50[e3] = e4 + e5
    elseif e2 == 1 then
      x50[e3] = e4 - e5
    elseif e2 == 2 then
      x50[e3] = e4 * e5
    elseif e2 == 3 then
      x50[e3] = math.modf(e4 / e5)
    elseif e2 == 4 then
      x50[e3] = e4 % e5
    end
    lib.Debug(e3 .. "," .. e4 .. "|" .. e5)
  end, [4] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    x50[28672] = 1
    e3 = getvaule(0, 1, e3)
    lib.Debug("<<" .. e3 .. "?" .. e4)
    e4 = getvaule(0, e1, e4)
    if e2 == 0 and e3 < e4 then
      x50[28672] = 0
    elseif e2 == 1 and e3 <= e4 then
      x50[28672] = 0
    elseif e2 == 2 and e3 == e4 then
      x50[28672] = 0
    elseif e2 == 3 and e3 ~= e4 then
      x50[28672] = 0
    elseif e2 == 4 and e4 <= e3 then
      x50[28672] = 0
    elseif e2 == 5 and e4 < e3 then
      x50[28672] = 0
    elseif e2 == 6 then
      x50[28672] = 0
    end
  end, [5] = function(e1, e2, e3, e4, e5, e6)
    for i = 0, 32767 do
      x50[i] = 0
    end
  end, [6] = function(e1, e2, e3, e4, e5, e6)
  end, [8] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    local str = ReadTalk(e2, 1)
    local len = math.modf(0.5 + string.len(str) / 2)
    for i = 0, len - 1 do
      x50[e3 + i] = string.sub(str, i * 2 + 1, i * 2 + 2)
    end
    x50[e3 + len] = 0
    lib.Debug(e3 .. "," .. str)
  end, [9] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule , getchar
    e4 = getvaule(0, e1, e4)
    local str = ""
    for i = 0, 1000 do
      local char = x50[e3 + i] or 0
      if type(char) == "string" then
        str = str .. char
      elseif char ~= 0 then
        str = str .. getchar(char)
      else
        do return end
      end
    end
    str = string.format(str, e4)
    local len = math.modf(0.5 + string.len(str) / 2)
    for i = 0, len - 1 do
      x50[e2 + i] = string.sub(str, i * 2 + 1, i * 2 + 2)
    end
    x50[e2 + len] = 0
  end, [10] = function(e1, e2, e3, e4, e5, e6)
    for i = 0, 1000 do
      local char = x50[e1 + i] or 0
      if type(char) == "string" then
        do return end
      end
      if char ~= 0 then
        do return end
      end
      x50[e2] = i * 2
      do return end
    end
  end, [11] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getchar
    local stra, strb, strx = "", "", nil
    for i = 0, 1000 do
      local char = x50[e2 + i] or 0
      if type(char) == "string" then
        stra = stra .. char
      elseif char ~= 0 then
        stra = stra .. getchar(char)
      else
        do return end
      end
    end
    for i = 0, 1000 do
      local char = x50[e3 + i] or 0
      if type(char) == "string" then
        strb = strb .. char
      elseif char ~= 0 then
        strb = strb .. getchar(char)
      else
        do return end
      end
    end
    strx = stra .. strb
    local len = math.modf(0.5 + string.len(strx) / 2)
    for i = 0, len - 1 do
      x50[e1 + i] = string.sub(strx, i * 2 + 1, i * 2 + 2)
    end
    x50[e1 + len] = 0
    lib.Debug("50-10[[" .. strx .. "=" .. stra .. "+" .. strb)
  end, [12] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e3 = getvaule(0, e1, e3)
    local len = math.modf(0.5 + e3 / 2)
    for i = 0, len - 1 do
      x50[e2 + i] = "  "
    end
    x50[e2 + len] = 0
  end, [16] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e3 = getvaule(0, e1, e3)
    e4 = getvaule(1, e1, e4)
    e5 = getvaule(2, e1, e5)
    local v = nil
    if e2 == 0 then
      Byte.set16(JY.Data_Person, CC.PersonSize * e3 + e4, e5)
    elseif e2 == 1 then
      Byte.set16(JY.Data_Thing, CC.ThingSize * e3 + e4, e5)
    elseif e2 == 2 then
      Byte.set16(JY.Data_Scene, CC.SceneSize * e3 + e4, e5)
    elseif e2 == 3 then
      Byte.set16(JY.Data_Wugong, CC.WugongSize * e3 + e4, e5)
    elseif e2 == 4 then
      Byte.set16(JY.Data_Shop, CC.ShopSize * e3 + e4, e5)
    end
    lib.Debug("OOO|" .. e3 .. "," .. e4 .. "," .. e5)
  end, [17] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e3 = getvaule(0, e1, e3)
    e4 = getvaule(1, e1, e4)
    local v = nil
    if e2 == 0 then
      v = Byte.get16(JY.Data_Person, CC.PersonSize * e3 + e4)
    elseif e2 == 1 then
      v = Byte.get16(JY.Data_Thing, CC.ThingSize * e3 + e4)
    elseif e2 == 2 then
      v = Byte.get16(JY.Data_Scene, CC.SceneSize * e3 + e4)
    elseif e2 == 3 then
      v = Byte.get16(JY.Data_Wugong, CC.WugongSize * e3 + e4)
    elseif e2 == 4 then
      v = Byte.get16(JY.Data_Shop, CC.ShopSize * e3 + e4)
    end
    x50[e5] = v
    lib.Debug(e2 .. "," .. e3 .. "," .. e4 .. "," .. v)
  end, [18] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2) + 1
    e3 = getvaule(1, e1, e3)
    JY.Base["队伍" .. e2] = e3
  end, [19] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2) + 1
    x50[e3] = JY.Base["队伍" .. e2]
  end, [20] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    for i = 1, CC.MyThingNum do
      if JY.Base["物品" .. i] == e2 then
        x50[e3] = JY.Base["物品数量" .. i]
    else
      end
    end
  end, [21] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    e4 = getvaule(2, e1, e4)
    e5 = getvaule(3, e1, e5)
    lib.SetD(e2, e3, e4, e5)
  end, [22] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    e4 = getvaule(2, e1, e4)
    x50[e5] = lib.GetD(e2, e3, e4)
  end, [23] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    e4 = getvaule(2, e1, e4)
    e5 = getvaule(3, e1, e5)
    e6 = getvaule(4, e1, e6)
    lib.Debug(string.format("SetS:%d,%d,%d,%d,%d", e2, e4, e5, e3, e6))
    lib.SetS(e2, e4, e5, e3, e6)
  end, [24] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    e4 = getvaule(2, e1, e4)
    e5 = getvaule(3, e1, e5)
    x50[e6] = lib.GetS(e2, e4, e5, e3)
  end, [25] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e5 = getvaule(0, e1, e5)
    e6 = getvaule(1, e1, e6)
    if e3 < 0 then
      e3 = 65536 + e3
    end
    if e4 < 0 then
      e4 = 65536 + e4
    end
    lib.Debug("H:" .. e4 .. ",L:" .. e3 .. ",off:" .. e6)
    local v = nil
    local address = (e4) * 65536 + (e3) + e6
    do
      if not x50[e5] then
        local num = e2 ~= 1 or 0
      end
      num = math.modf(num / 256)
      v = math.fmod(num, 256)
      v = num * 256 + v
    end
    if address == 1838072 then
      JY.MyPic = e5
    elseif address == 345330 then
      JY.Base["人方向"] = e5
    elseif address == 1911134 then
      JY.SubScene = e5
    elseif address == 1911132 then
      JY.Base["人X1"] = e5
    elseif address == 1911130 then
      JY.Base["人Y1"] = e5
    elseif address == 1911128 then
      do return end
    end
    if address == 1911126 then
      do return end
    end
    if address == 1837964 then
      JY.Base["人X"] = e5
    elseif address == 1837960 then
      JY.Base["人Y"] = e5
    elseif address >= 1637932 and address < 1638732 then
      address = address - 1637932
      local id = 1 + math.modf((address) / 4)
      local kind = (address) % 4
      if kind == 0 then
        JY.Base["物品" .. id] = e5
      end
    elseif kind == 2 then
      JY.Base["物品数量" .. id] = e5
    end
    lib.Debug("save>" .. address .. "::" .. e5)
  end, [26] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e6 = getvaule(0, e1, e6)
    if e3 < 0 then
      e3 = 65536 + e3
    end
    if e4 < 0 then
      e4 = 65536 + e4
    end
    local v = 0
    local address = (e4) * 65536 + (e3) + e6
    lib.Debug("H:" .. e4 .. ",L:" .. e3 .. ",off:" .. e6)
    if address == 1838072 then
      v = JY.MyPic
    elseif address == 345330 then
      v = JY.Base["人方向"]
    elseif address == 1911134 then
      v = JY.SubScene
    elseif address == 1911132 then
      v = JY.Base["人X1"]
    elseif address == 1911130 then
      v = JY.Base["人Y1"]
    elseif address == 1911128 then
      v = JY.Base["人X"]
    elseif address == 1911126 then
      v = JY.Base["人Y"]
    elseif address == 1837964 then
      v = JY.Base["人X"]
    elseif address == 1837960 then
      v = JY.Base["人Y"]
    elseif address == 374074 then
      if CONFIG.Type == 1 then
        v = 1
      else
        v = 0
      end
    elseif address >= 1637932 and address <= 1638734 then
      address = address - 1637932
      local id = 1 + math.modf((address) / 4)
      local kind = (address) % 4
      if kind == 0 then
        v = JY.Base["物品" .. id]
      end
    elseif kind == 2 then
      v = JY.Base["物品数量" .. id]
    end
    if e2 == 0 then
      x50[e5] = v
    elseif e2 == 1 then
      x50[e5] = v % 256
    end
    lib.Debug("load>" .. address .. "::" .. v)
  end, [27] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e3 = getvaule(0, e1, e3)
    lib.Debug("27>>" .. e3)
    local str = nil
    if e2 == 0 then
      str = JY.Person[e3]["姓名"]
    elseif e2 == 1 then
      str = JY.Thing[e3]["名称"]
    elseif e2 == 2 then
      str = JY.Scene[e3]["名称"]
    elseif e2 == 3 then
      str = JY.Wugong[e3]["名称"]
    end
    str = lib.CharSet(str, 1)
    local len = math.modf(0.5 + string.len(str) / 2)
    for i = 0, len - 1 do
      x50[e4 + i] = string.sub(str, i * 2 + 1, i * 2 + 2)
    end
    x50[e4 + len] = 0
  end, [32] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule , E , idx
    e3 = getvaule(0, e1, e3)
    E[idx + 8 + e3] = x50[e2] or 0
  end, [33] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule , getchar
    e3 = getvaule(0, e1, e3)
    e4 = getvaule(1, e1, e4)
    e5 = getvaule(2, e1, e5)
    if e5 < 0 then
      e5 = 65536 + e5
    end
    local str = ""
    local col = ReadCol((e5) % 256)
    for i = 0, 1000 do
      local char = x50[e2 + i] or 0
      if type(char) == "string" then
        str = str .. char
      elseif char ~= 0 then
        str = str .. getchar(char)
      else
        do return end
      end
    end
    str = lib.CharSet(str, 0)
    local fontsize = nil
    if CONFIG.Type == 1 then
      fontsize = 18
    else
      fontsize = CC.DefaultFont
    end
    lib.Debug("DrawStr::" .. str)
    DrawString(e3, e4, str, col, fontsize)
    ShowScreen()
  end, [34] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: E , idx , getvaule , tmp_x , tmp_y , tmp_x1 , tmp_y1
     -- DECOMPILER ERROR: unhandled construct in 'if'

    if E[idx + 8] == 50 and E[idx + 9] ~= 39 then
      if E[idx + 9] == 40 then
        do return end
      end
    end
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    e4 = getvaule(2, e1, e4)
    e5 = getvaule(3, e1, e5)
    DrawBox(e2, e3, e2 + e4, e3 + e5, C_WHITE)
    tmp_x, tmp_y, tmp_x1, tmp_y1 = e2 - 4, e3 - 4, e2 + e4 + 4, e3 + e5 + 4
  end, [35] = function(e1, e2, e3, e4, e5, e6)
    local key = WaitKey()
    if key == VK_UP then
      key = 158
    elseif key == VK_DOWN then
      key = 152
    elseif key == VK_LEFT then
      key = 154
    elseif key == VK_RIGHT then
      key = 156
    end
    x50[e1] = key
  end, [36] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule , getchar
    e3 = getvaule(0, e1, e3)
    e4 = getvaule(1, e1, e4)
    e5 = getvaule(2, e1, e5)
    local str = ""
    for i = 0, 1000 do
      local char = x50[e2 + i] or 0
      if type(char) == "string" then
        str = str .. char
      elseif char ~= 0 then
        str = str .. getchar(char)
      else
        do return end
      end
    end
    str = lib.CharSet(str, 0)
    DrawStrBox(e3, e4, str, C_ORANGE, CC.DefaultFont)
    ShowScreen()
    x50[28672] = 1
    local key = WaitKey()
    if key == 121 or key == VK_SPACE or key == VK_RETURN then
      x50[28672] = 0
    end
  end, [37] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    lib.Delay(e2)
  end, [38] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    x50[e3] = Rnd(e2)
  end, [39] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule , getchar
    e2 = getvaule(0, e1, e2)
    e5 = getvaule(1, e1, e5)
    e6 = getvaule(2, e1, e6)
    local mymenu = {}
    for i = 1, e2 do
      local str = ""
      local start = x50[e3 + i - 1] or 0
      lib.Debug(i .. "," .. e3 .. "," .. start)
      for i = 0, 1000 do
        local char = x50[start + i] or 0
        if type(char) == "string" then
          str = str .. char
        elseif char ~= 0 then
          str = str .. getchar(char)
        else
          do return end
        end
      end
      str = lib.CharSet(str, 0)
      lib.Debug(str)
      mymenu[i] = {str, nil, 1}
    end
    local select = nil
    select = ShowMenu(mymenu, e2, e2, e5 - 5, e6 - 5, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
    x50[e4] = select
  end, [40] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule , getchar
    e2 = getvaule(0, e1, e2)
    e5 = getvaule(1, e1, e5)
    e6 = getvaule(2, e1, e6)
    local shownum = nil
    if e1 < 0 then
      e1 = 65536 + e1
    end
    shownum = math.modf((e1) / 256)
    local mymenu = {}
    for i = 1, e2 do
      local str = ""
      local start = x50[e3 + i - 1] or 0
      lib.Debug(i .. "," .. e3 .. "," .. start)
      for i = 0, 1000 do
        local char = x50[start + i] or 0
        if type(char) == "string" then
          str = str .. char
        elseif char ~= 0 then
          str = str .. getchar(char)
        else
          do return end
        end
      end
      str = lib.CharSet(str, 0)
      lib.Debug(str)
      mymenu[i] = {str, nil, 1}
    end
    local select, select = nil, nil
    select = ShowMenu(mymenu, e2, shownum, e5 - 5, e6 - 5, 0, 0, 1, 1, CC.DefaultFont, C_ORANGE, C_WHITE)
    x50[e4] = select
  end, [41] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e3 = getvaule(0, e1, e3)
    e4 = getvaule(1, e1, e4)
    e5 = getvaule(2, e1, e5)
    local id = nil
    if e2 == 0 then
      id = 0
    elseif e2 == 1 then
      id = 1
      e5 = e5 * 2
    end
    lib.PicLoadCache(id, e5, e3, e4)
    ShowScreen()
  end, [42] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    JY.Base["人X"] = e2
    JY.Base["人Y"] = e3
  end, [43] = function(e1, e2, e3, e4, e5, e6)
    -- upvalues: getvaule
    e2 = getvaule(0, e1, e2)
    e3 = getvaule(1, e1, e3)
    e4 = getvaule(2, e1, e4)
    e5 = getvaule(3, e1, e5)
    e6 = getvaule(4, e1, e6)
    x50[28928] = e3
    x50[28929] = e4
    x50[28930] = e5
    x50[28931] = e6
    if e2 == 202 then
      if e5 == 0 then
        instruct_2(e3, e4)
      end
      lib.Debug("得到物品" .. e3)
    elseif e2 == 542 then
      lib.PicInit(CONFIG.DataPath .. "mmap.col")
      lib.PicLoadFile(CC.SMAPPicFile, 0)
      --lib.PicLoadFile(CC.HeadPicFile, 1)
    elseif e2 == 543 then
      lib.PicInit(CONFIG.DataPath .. "dream.col")
      lib.PicLoadFile(CC.SMAPPicFile, 0)
      --lib.PicLoadFile(CC.HeadPicFile, 1)
    elseif e3 == 544 then
      lib.PicInit(CONFIG.DataPath .. "night.col")
      lib.PicLoadFile(CC.SMAPPicFile, 0)
      --lib.PicLoadFile(CC.HeadPicFile, 1)
    else
      ReadKDEF(e2)
    end
  end}
  local NewInstruct_50 = function(code, e1, e2, e3, e4, e5, e6)
    -- upvalues: newinstruct_50_sub
    lib.Debug(string.format("50code::[%d:%d:%d:%d:%d:%d:%d]start:%d", code, e1, e2, e3, e4, e5, e6, lib.GetTime()))
    newinstruct_50_sub[code](e1, e2, e3, e4, e5, e6)
  end
  while idx < len do
  	
		if E[idx] == -1 then
			break;
		end
    while E[idx] == 0 do
      Cls()
      idx = idx + 1
    end
    while E[idx] == 1 do
      TalkEx(ReadTalk(E[idx + 1]), E[idx + 2], E[idx + 3])
      idx = idx + 4
    end
    while E[idx] == 2 do
      instruct_2(E[idx + 1], E[idx + 2])
      idx = idx + 3
    end
    while E[idx] == 3 do
      instruct_3(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5], E[idx + 6], E[idx + 7], E[idx + 8], E[idx + 9], E[idx + 10], E[idx + 11], E[idx + 12], E[idx + 13])
      idx = idx + 14
    end
    while E[idx] == 4 do
      if instruct_18(E[idx + 1]) then
        idx = idx + E[idx + 2]
      else
        idx = idx + E[idx + 3]
      end
      idx = idx + 4
    end
    while E[idx] == 5 do
      if instruct_5() then
        idx = idx + E[idx + 1]
      else
        idx = idx + E[idx + 2]
      end
      idx = idx + 3
    end
    while E[idx] == 6 do
      if WarMain(E[idx + 1], E[idx + 4]) then
        idx = idx + E[idx + 2]
      else
        idx = idx + E[idx + 3]
      end
      idx = idx + 5
    end
    while E[idx] == 7 do
      idx = idx + 1
      return;
    end
  
	  while E[idx] == 8 do
		instruct_8(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 9 do
		if instruct_9() then
		  idx = idx + E[idx + 1]
		else
		  idx = idx + E[idx + 2]
		end
		idx = idx + 3
	  end
	  while E[idx] == 10 do
		instruct_10(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 11 do
		if instruct_11() then
		  idx = idx + E[idx + 1]
		else
		  idx = idx + E[idx + 2]
		end
		idx = idx + 3
	  end
	  while E[idx] == 12 do
		instruct_12()
		idx = idx + 1
	  end
	  while E[idx] == 13 do
		instruct_13()
		idx = idx + 1
	  end
	  while E[idx] == 14 do
		instruct_14()
		idx = idx + 1
	  end
	  while E[idx] == 15 do
		instruct_15()
		idx = idx + 2
	  end
	  while E[idx] == 16 do
		if instruct_16(E[idx + 1]) then
		  idx = idx + E[idx + 2]
		else
		  idx = idx + E[idx + 3]
		end
		idx = idx + 4
	  end
	  while E[idx] == 17 do
		instruct_17(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5])
		idx = idx + 6
	  end
	  while E[idx] == 18 do
		if instruct_18(E[idx + 1]) then
		  idx = idx + E[idx + 2]
		else
		  idx = idx + E[idx + 3]
		end
		idx = idx + 4
	  end
	  while E[idx] == 19 do
		instruct_19(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 20 do
		if instruct_20() then
		  idx = idx + E[idx + 1]
		else
		  idx = idx + E[idx + 2]
		end
		idx = idx + 3
	  end
	  while E[idx] == 21 do
		instruct_21(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 22 do
		instruct_22()
		idx = idx + 1
	  end
	  while E[idx] == 23 do
		instruct_23(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 24 do
		instruct_24()
		idx = idx + 1
	  end
	  while E[idx] == 25 do
		instruct_25(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4])
		idx = idx + 5
	  end
	  while E[idx] == 26 do
		instruct_26(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5])
		idx = idx + 6
	  end
	  while E[idx] == 27 do
		instruct_27(E[idx + 1], E[idx + 2], E[idx + 3])
		idx = idx + 4
	  end
	  while E[idx] == 28 do
		if instruct_28(E[idx + 1], E[idx + 2], E[idx + 3]) then
		  idx = idx + E[idx + 4]
		else
		  idx = idx + E[idx + 5]
		end
		idx = idx + 6
	  end
	  while E[idx] == 29 do
		if instruct_29(E[idx + 1], E[idx + 2], E[idx + 3]) then
		  idx = idx + E[idx + 4]
		else
		  idx = idx + E[idx + 5]
		end
		idx = idx + 6
	  end
	  while E[idx] == 30 do
		instruct_30(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4])
		idx = idx + 5
	  end
	  while E[idx] == 31 do
		if instruct_31(E[idx + 1]) then
		  idx = idx + E[idx + 2]
		else
		  idx = idx + E[idx + 3]
		end
		idx = idx + 4
	  end
	  while E[idx] == 32 do
		instruct_32(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 33 do
		instruct_33(E[idx + 1], E[idx + 2], E[idx + 3])
		idx = idx + 4
	  end
	  while E[idx] == 34 do
		instruct_34(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 35 do
		instruct_35(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4])
		idx = idx + 5
		  end
	  while E[idx] == 36 do
		if E[idx + 1] < 256 then
		  if instruct_36(E[idx + 1]) then
			idx = idx + E[idx + 2]
		  else
			idx = idx + E[idx + 3]
		  end
		else
		  local tzflag = x50[28672] or 0
		  if tzflag == 0 then
			idx = idx + E[idx + 2]
			elseif tzflag == 1 then
			  idx = idx + E[idx + 3]
			end
		end
		idx = idx + 4
	  end
	  while E[idx] == 37 do
		instruct_37(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 38 do
		instruct_38(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4])
		idx = idx + 5
	  end
	  while E[idx] == 39 do
		instruct_39(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 40 do
		instruct_40(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 41 do
		instruct_41(E[idx + 1], E[idx + 2], E[idx + 3])
		idx = idx + 4
	  end
	  while E[idx] == 42 do
		if instruct_42() then
		  idx = idx + E[idx + 1]
		else
		  idx = idx + E[idx + 2]
		end
		idx = idx + 3
	  end
	  while E[idx] == 43 do
		if instruct_43(E[idx + 1]) then
		  idx = idx + E[idx + 2]
		else
		  idx = idx + E[idx + 3]
		end
		idx = idx + 4
	  end
	  while E[idx] == 44 do
		instruct_44(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5], E[idx + 6])
		idx = idx + 7
	  end
	  while E[idx] == 45 do
		instruct_45(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 46 do
		instruct_46(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 47 do
		instruct_47(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 48 do
		instruct_48(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 49 do
		instruct_49(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 50 do
		if E[idx + 1] > 128 then
		  if instruct_50(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5]) then
			idx = idx + E[idx + 6]
		  else
			idx = idx + E[idx + 7]
		  end
		else
		  NewInstruct_50(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5], E[idx + 6], E[idx + 7])
		end
		idx = idx + 8
	  end
	  while E[idx] == 51 do
		instruct_51()
		idx = idx + 1
	  end
	  while E[idx] == 52 do
		instruct_52()
		idx = idx + 1
	  end
	  while E[idx] == 53 do
		instruct_53()
		idx = idx + 1
	  end
	  while E[idx] == 54 do
		instruct_54()
		idx = idx + 1
	  end
	  while E[idx] == 55 do
		if instruct_55(E[idx + 1], E[idx + 2]) then
		  idx = idx + E[idx + 3]
		else
		  idx = idx + E[idx + 4]
		end
		idx = idx + 5
	  end
	  while E[idx] == 56 do
		instruct_56(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 57 do
		instruct_57()
		idx = idx + 1
	  end
	  while E[idx] == 58 do
		instruct_58()
		idx = idx + 1
	  end
	  while E[idx] == 59 do
		instruct_59()
		idx = idx + 1
	  end
	  while E[idx] == 60 do
		if instruct_60(E[idx + 1], E[idx + 2], E[idx + 3]) then
		  idx = idx + E[idx + 4]
		else
		  idx = idx + E[idx + 5]
		end
		idx = idx + 6
	  end
	  while E[idx] == 61 do
		if instruct_61() then
		  idx = idx + E[idx + 1]
		else
		  idx = idx + E[idx + 2]
		end
		idx = idx + 3
	  end
	  while E[idx] == 62 do
		instruct_62(E[idx + 1], E[idx + 2], E[idx + 3], E[idx + 4], E[idx + 5], E[idx + 6])
		idx = idx + 7
	  end
	  while E[idx] == 63 do
		instruct_63(E[idx + 1], E[idx + 2])
		idx = idx + 3
	  end
	  while E[idx] == 64 do
		instruct_64()
		idx = idx + 1
	  end
	  while E[idx] == 65 do
		instruct_65()
		idx = idx + 1
	  end
	  while E[idx] == 66 do
		instruct_66(E[idx + 1])
		idx = idx + 2
	  end
	  while E[idx] == 67 do
		instruct_67(E[idx + 1])
		idx = idx + 2
	  end
	end
end



Crack = function(E, len)
  local C = {19, 3, 67, 12, 28, 55, 37, 47, 36, 61, 49, 32, 2, 45, 51, 21, 11, 46, 64, 9, 25, 26, 14, 43, 1, 59, 54, 34, 62, 27, 18, 53, 44, 42, 58, 10, 7, 6, 16, 8, 63, 39, 13, 31, 20, 52, 22, 30, 33, 48, 56, 50, 24, 65, 29, 41, 38, 4, 5, 35, 0, 57, 60, 66, 23, 17, 40; [0] = 15}
  for i = 0, len - 1 do
    local v = E[i]
    if C[v] then
      E[i] = C[v]
    end
  end
end


