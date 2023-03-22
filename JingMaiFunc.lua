-------------------------------------
--创建人：闲云野雀
--时间  ：2022.5.15
--文件名：JingMaiFunc.lua
--作用  ：经脉系统的条件判断和属性提升
-------------------------------------

-- 胡斐经脉
function JingMaiFunc_Person01_01()
	-- 条件目前是消耗银两300, 提升属性 耍刀技巧 + 10
	local id = 1
	if JY.GOLD >= 300 and JY.Person[id]["天赋1"] < 2 then
		JY.Person[id]["耍刀技巧"] = JY.Person[id]["耍刀技巧"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["天赋1"] = JY.Person[id]["天赋1"] + 1
		return
	end
end

function JingMaiFunc_Person01_02()
	-- 条件目前是消耗银两300, 提升属性 御剑能力 + 10
	local id = 1	
	if JY.GOLD >= 300 and JY.Person[id]["天赋2"] < 2 then
		JY.Person[id]["御剑能力"] = JY.Person[id]["御剑能力"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["天赋2"] = JY.Person[id]["天赋2"] + 1
		return
	end
end

function JingMaiFunc_Person01_03()
	local id = 1	
	if JY.GOLD >= 300 and JY.Person[id]["天赋3"] < 2 then

		JY.Person[id]["指法技巧"] = JY.Person[id]["指法技巧"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["天赋3"] = JY.Person[id]["天赋3"] + 1
		return
	end
end

function JingMaiFunc_Person01_04()
	local id = 1
	if JY.GOLD >= 300 and JY.Person[id]["天赋4"] < 2  then
		JY.Person[id]["特殊兵器"] = JY.Person[id]["特殊兵器"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["天赋4"] = JY.Person[id]["天赋4"] + 1
		return
	end
end

function JingMaiFunc_Person01_05()
	local id = 1
	if JY.GOLD >= 300 and JY.Person[id]["天赋5"] < 2 then
		JY.Person[id]["拳掌功夫"] = JY.Person[id]["拳掌功夫"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["天赋5"] = JY.Person[id]["天赋5"] + 1
		return
	end
end

function JingMaiFunc_Person01_06()
	-- 条件目前是消耗银两300, 提升属性 耍刀技巧 + 10
	local id = 1
	if JY.GOLD >= 1000 and JY.Person[id]["天赋6"] < 2 then
		JY.Person[id]["耍刀技巧"] = JY.Person[id]["耍刀技巧"] + 20
		JY.GOLD = JY.GOLD - 1000
		JY.Person[id]["天赋6"] = JY.Person[id]["天赋6"] + 1
		return
	end
end

function JingMaiFunc_Person01_07()
	-- 条件目前是消耗银两300, 提升属性 御剑能力 + 10
	local id = 1	
	if JY.GOLD >= 1000 and JY.Person[id]["天赋7"] < 2 then
		JY.Person[id]["御剑能力"] = JY.Person[id]["御剑能力"] + 20
		JY.GOLD = JY.GOLD - 1000
		JY.Person[id]["天赋7"] = JY.Person[id]["天赋7"] + 1
		return
	end
end

function JingMaiFunc_Person01_08()
	local id = 1
	if JY.GOLD >= 1000 and JY.Person[id]["天赋8"] < 2  then
		JY.Person[id]["特殊兵器"] = JY.Person[id]["特殊兵器"] + 20
		JY.GOLD = JY.GOLD - 1000
		JY.Person[id]["天赋8"] = JY.Person[id]["天赋8"] + 1
		return
	end
end

function JingMaiFunc_Person01_09()
	local id = 1
	if JY.GOLD >= 2000 and JY.Person[id]["个人觉醒"] <= 0 then
		JY.Person[id]["个人觉醒"] = 1
		JY.GOLD = JY.GOLD - 2000
		JY.Person[id]["天赋9"] = JY.Person[id]["天赋9"] + 1
		JY.Person[id]["个人觉醒"] = 1
		JY.Person[id]["论剑奖励"] = 1
		RWWH[id] = "轻影飞狐"
		return
	end
end

function JingMaiFunc_Person01_10()
	local id = 1
	if JY.GOLD >= 2000 and JY.Person[id]["个人觉醒"] <= 0 then
		JY.Person[id]["个人觉醒"] = 1
		JY.GOLD = JY.GOLD - 2000
		JY.Person[id]["天赋10"] = JY.Person[id]["天赋10"] + 1
		JY.Person[id]["个人觉醒"] = 2
		JY.Person[id]["论剑奖励"] = 2
		RWWH[id] = "辽东刀王"
		return
	end
end

