-------------------------------------
--�����ˣ�����Ұȸ
--ʱ��  ��2022.5.15
--�ļ�����JingMaiFunc.lua
--����  ������ϵͳ�������жϺ���������
-------------------------------------

-- ��쳾���
function JingMaiFunc_Person01_01()
	-- ����Ŀǰ����������300, �������� ˣ������ + 10
	local id = 1
	if JY.GOLD >= 300 and JY.Person[id]["�츳1"] < 2 then
		JY.Person[id]["ˣ������"] = JY.Person[id]["ˣ������"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["�츳1"] = JY.Person[id]["�츳1"] + 1
		return
	end
end

function JingMaiFunc_Person01_02()
	-- ����Ŀǰ����������300, �������� �������� + 10
	local id = 1	
	if JY.GOLD >= 300 and JY.Person[id]["�츳2"] < 2 then
		JY.Person[id]["��������"] = JY.Person[id]["��������"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["�츳2"] = JY.Person[id]["�츳2"] + 1
		return
	end
end

function JingMaiFunc_Person01_03()
	local id = 1	
	if JY.GOLD >= 300 and JY.Person[id]["�츳3"] < 2 then

		JY.Person[id]["ָ������"] = JY.Person[id]["ָ������"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["�츳3"] = JY.Person[id]["�츳3"] + 1
		return
	end
end

function JingMaiFunc_Person01_04()
	local id = 1
	if JY.GOLD >= 300 and JY.Person[id]["�츳4"] < 2  then
		JY.Person[id]["�������"] = JY.Person[id]["�������"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["�츳4"] = JY.Person[id]["�츳4"] + 1
		return
	end
end

function JingMaiFunc_Person01_05()
	local id = 1
	if JY.GOLD >= 300 and JY.Person[id]["�츳5"] < 2 then
		JY.Person[id]["ȭ�ƹ���"] = JY.Person[id]["ȭ�ƹ���"] + 10
		JY.GOLD = JY.GOLD - 300
		JY.Person[id]["�츳5"] = JY.Person[id]["�츳5"] + 1
		return
	end
end

function JingMaiFunc_Person01_06()
	-- ����Ŀǰ����������300, �������� ˣ������ + 10
	local id = 1
	if JY.GOLD >= 1000 and JY.Person[id]["�츳6"] < 2 then
		JY.Person[id]["ˣ������"] = JY.Person[id]["ˣ������"] + 20
		JY.GOLD = JY.GOLD - 1000
		JY.Person[id]["�츳6"] = JY.Person[id]["�츳6"] + 1
		return
	end
end

function JingMaiFunc_Person01_07()
	-- ����Ŀǰ����������300, �������� �������� + 10
	local id = 1	
	if JY.GOLD >= 1000 and JY.Person[id]["�츳7"] < 2 then
		JY.Person[id]["��������"] = JY.Person[id]["��������"] + 20
		JY.GOLD = JY.GOLD - 1000
		JY.Person[id]["�츳7"] = JY.Person[id]["�츳7"] + 1
		return
	end
end

function JingMaiFunc_Person01_08()
	local id = 1
	if JY.GOLD >= 1000 and JY.Person[id]["�츳8"] < 2  then
		JY.Person[id]["�������"] = JY.Person[id]["�������"] + 20
		JY.GOLD = JY.GOLD - 1000
		JY.Person[id]["�츳8"] = JY.Person[id]["�츳8"] + 1
		return
	end
end

function JingMaiFunc_Person01_09()
	local id = 1
	if JY.GOLD >= 2000 and JY.Person[id]["���˾���"] <= 0 then
		JY.Person[id]["���˾���"] = 1
		JY.GOLD = JY.GOLD - 2000
		JY.Person[id]["�츳9"] = JY.Person[id]["�츳9"] + 1
		JY.Person[id]["���˾���"] = 1
		JY.Person[id]["�۽�����"] = 1
		RWWH[id] = "��Ӱ�ɺ�"
		return
	end
end

function JingMaiFunc_Person01_10()
	local id = 1
	if JY.GOLD >= 2000 and JY.Person[id]["���˾���"] <= 0 then
		JY.Person[id]["���˾���"] = 1
		JY.GOLD = JY.GOLD - 2000
		JY.Person[id]["�츳10"] = JY.Person[id]["�츳10"] + 1
		JY.Person[id]["���˾���"] = 2
		JY.Person[id]["�۽�����"] = 2
		RWWH[id] = "�ɶ�����"
		return
	end
end

