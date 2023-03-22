
--设置全局变量CC，保存游戏中使用的常数
function SetGlobalConst()

	--无酒不欢：基本完整的SDL2键码，便于设置快捷键
	VK_ESCAPE=27
	VK_SPACE=32				--注意这里的空格实际上不需要定义，因为底层会自动把空格转换成回车
	VK_RETURN=13
	VK_F1=1073741882
	VK_F2=1073741883
	VK_F3=1073741884
	VK_F4=1073741885
	VK_A = 97
	VK_B = 98 
	VK_C = 99 
	VK_D = 100 
	VK_E = 101
	VK_F = 102 
	VK_G = 103
	VK_H = 104 
	VK_I = 105
	VK_J = 106 
	VK_K = 107
	VK_L = 108 
	VK_M = 109
	VK_N = 110 
	VK_O = 111
	VK_P = 112 
	VK_Q = 113
	VK_R = 114 
	VK_S = 115
	VK_T = 116 
	VK_U = 117
	VK_V = 118 
	VK_W = 119
	VK_X = 120 
	VK_Y = 121
	VK_Z = 122 
	
	VK_BACKSPACE = 8

	VK_UP=1073741906
	VK_DOWN=1073741905
	VK_LEFT=1073741904
	VK_RIGHT=1073741903
	VK_PGUP=1073741899
	VK_PGDN=1073741902
		
	-- 游戏中颜色定义
	C_STARTMENU = RGB(132, 0, 4)
	C_RED = RGB(216, 20, 24)
	C_WHITE = RGB(236, 236, 236)
	C_ORANGE = RGB(252, 148, 16)
	C_GOLD = RGB(236, 200, 40)
	C_BLACK = RGB(0, 0, 0)
	M_RED = RGB(216, 20, 24)
	M_Black = RGB(0, 0, 0)
	M_Sienna = RGB(160, 82, 45)
	M_DarkOliveGreen = RGB(85, 107, 47)
	M_DarkGreen = RGB(0, 100, 0)
	M_DarkSlateBlue = RGB(72, 61, 139)
	M_Navy = RGB(0, 0, 128)
	M_Indigo = RGB(75, 0, 130)
	M_DarkSlateGray = RGB(47, 79, 79)
	M_DarkRed = RGB(139, 0, 0)
	M_DarkOrange = RGB(255, 140, 0)
	M_Olive = RGB(128, 128, 0)
	M_Green = RGB(0, 128, 0)
	M_Teal = RGB(0, 128, 128)
	M_Blue = RGB(0, 0, 255)
	M_SlateGray = RGB(112, 128, 144)
	M_DimGray = RGB(105, 105, 105)
	M_Red = RGB(255, 0, 0)
	M_SandyBrown = RGB(244, 164, 96)
	M_Darkgold = RGB(207,181,59)
	M_YellowGreen = RGB(154, 205, 50)
	M_SeaGreen = RGB(46, 139, 87)
	M_MediumTurquoise = RGB(72, 209, 204)
	M_RoyalBlue = RGB(65, 105, 225)
	M_Purple = RGB(128, 0, 128)
	M_Gray = RGB(128, 128, 128)
	M_Magenta = RGB(255, 0, 255)
	M_Orange = RGB(255, 165, 0)
	M_Yellow = RGB(255, 255, 0)
	M_Lime = RGB(0, 255, 0)
	M_Cyan = RGB(0, 255, 255)
	M_DeepSkyBlue = RGB(0, 191, 255)
	M_DarkOrchid = RGB(153, 50, 204)
	M_Silver = RGB(192, 192, 192)
	M_Pink = RGB(255, 192, 203)
	M_Wheat = RGB(245, 222, 179)
	M_Wheat2 = RGB(205, 182, 139)
	M_LemonChiffon = RGB(255, 250, 205)
	M_PaleGreen = RGB(152, 251, 152)
	M_PaleTurquoise = RGB(175, 238, 238)
	M_LightBlue = RGB(173, 216, 230)
	M_Plum = RGB(221, 160, 221)
	M_White = RGB(255, 255, 255)
	MilkWhite =RGB(255, 255, 204)
	LimeGreen = RGB(100,200, 90)
	Lime = RGB(0,255,0)
	LightGreen = RGB(144,238,144)
	LightSkyBlue = RGB(135,206,250)
	green1 = RGB(145, 235, 45)
	OliveDrab = RGB(107, 142, 35)
	Snow3 = RGB(205, 201, 201)
	grey21 = RGB(54, 54, 54)
	LightSlateBlue = RGB(132, 112, 255)
	Violet = RGB(208, 152, 208)
	PinkRed = RGB(255, 102, 102)
	LightPurple = RGB(165, 28, 218)
	Color_Hurt1 = RGB(255, 215, 0)
	TG_Red = RGB(216, 20, 24)
	TG_Red_Bright = RGB(248, 40, 44)
	Dark_Gold = RGB(216, 180, 20)
	S_Yellow = RGB(245, 215, 15)
	-- 游戏中颜色定义
	C_WSTM = RGB(0, 0, 0)  --属性面板用	
	C_CYGOLD = RGB(216, 214, 175)  --属性面板用
	C_STARTMENU = RGB(132, 0, 4)
	C_RED = RGB(216, 20, 24) --红
	C_WHITE = RGB(236, 236, 236) --白
	C_ORANGE = RGB(252, 148, 16) --橘色
	C_GOLD = RGB(236, 200, 40) --金
	C_BLACK = RGB(0, 0, 0) --黑色
	M_Black = RGB(0, 0, 0) --黑色
	M_Sienna = RGB(160, 82, 45) --褐色
	M_DarkOliveGreen = RGB(85, 107, 47)--深绿 
	M_DarkGreen = RGB(0, 100, 0) --深绿
	M_DarkSlateBlue = RGB(72, 61, 139) --板岩暗蓝灰色
	M_Navy = RGB(0, 0, 128) --海军蓝
	M_Indigo = RGB(75, 0, 130) --靓蓝色
	M_DarkSlateGray = RGB(47, 79, 79) --深青色
	M_DarkRed = RGB(139, 0, 0) -- 深红
	M_DarkOrange = RGB(255, 140, 0) --深橘色
	M_Olive = RGB(128, 128, 0) --橄榄色
	M_Green = RGB(0, 128, 0) --绿
	M_Teal = RGB(0, 128, 128) --水绿
	M_Blue = RGB(0, 0, 255) --蓝
	M_SlateGray = RGB(112, 128, 144) --灰石
	M_DimGray = RGB(105, 105, 105) --暗灰
	M_Red = RGB(255, 0, 0) --红
	M_SandyBrown = RGB(244, 164, 96) --黄褐色
	M_YellowGreen = RGB(154, 205, 50) --黄绿
	M_SeaGreen = RGB(46, 139, 87) --海绿
	M_MediumTurquoise = RGB(72, 209, 204) --宝石绿
	M_RoyalBlue = RGB(65, 105, 225) --宝蓝色
	M_Purple = RGB(128, 0, 128) -- 紫
	M_Gray = RGB(128, 128, 128) --灰
	M_Magenta = RGB(255, 0, 255) --洋红
	M_Orange = RGB(255, 165, 0) --橘色
	M_Yellow = RGB(255, 255, 0) --黄
	M_Lime = RGB(0, 255, 0)  --石灰
	M_Cyan = RGB(0, 255, 255) --青色/蓝绿
	M_DeepSkyBlue = RGB(0, 191, 255) --深天蓝
	M_DarkOrchid = RGB(153, 50, 204) --深兰花紫 
	M_Silver = RGB(192, 192, 192) --银色
	M_Pink = RGB(255, 192, 203) -- 粉
	M_Wheat = RGB(245, 222, 179) --小麦色
	M_Wheat2 = RGB(205, 182, 139) --小麦色
	M_LemonChiffon = RGB(255, 250, 205) --柠檬色
	M_PaleGreen = RGB(152, 251, 152) -- 苍绿
	M_PaleTurquoise = RGB(175, 238, 238) -- 宝石绿
	M_LightBlue = RGB(173, 216, 230)   --浅蓝
	M_Plum = RGB(221, 160, 221) --紫红葡萄
	M_White = RGB(255, 255, 255) --白
	MilkWhite =RGB(255, 255, 204)  --奶白
	LimeGreen = RGB(100,200, 90) -- 灰灰绿
	Lime = RGB(0,255,0) --石灰
	LightGreen = RGB(144,238,144)  --浅绿
	LightSkyBlue = RGB(135,206,250) --深空蓝
	green1 = RGB(145, 235, 45)  --绿色1
	OliveDrab = RGB(107, 142, 35) --绿褐色
	Snow3 = RGB(205, 201, 201) --雪银
	grey21 = RGB(54, 54, 54)  --灰
	LightSlateBlue = RGB(132, 112, 255) -- 浅石蓝
	Violet = RGB(208, 152, 208) -- 紫罗兰
	PinkRed = RGB(255, 102, 102) --粉红
	LightPurple = RGB(165, 28, 218) --深紫
	Color_Hurt1 = RGB(255, 215, 0) --金
	TG_Red = RGB(216, 20, 24) --红色
	TG_Red_Bright = RGB(248, 40, 44) --亮红
	Dark_Gold = RGB(216, 180, 20) -- 黑金
	S_Yellow = RGB(245, 215, 15) --深黄
	LightYellow = RGB(255, 242, 204)  --浅黄
	LightYellow2 = RGB(255, 229, 153)  --浅黄
	LightYellow3 = RGB(255, 217, 102)  --浅黄2
	-- 游戏状态定义
    GAME_START =0       --开始画面
    GAME_FIRSTMMAP = 1  --第一次显示主地图
    GAME_MMAP =2;       --主地图
    GAME_FIRSTSMAP = 3  --第一次显示主地图
    GAME_SMAP =4;       --场景地图
    GAME_WMAP =5;       --战斗地图
	GAME_DEAD =6;       --死亡画面
    GAME_END  =7;       --结束
    GAME_NEWNAME = 8;		--开启新游戏
	
	
	--游戏数据全局变量
	CC={};				--定义游戏中使用的常量，这些可以在修改游戏时修改之

	--实际的屏幕宽度与高度
	CC.ScreenW=lib.GetScreenW();		--显示窗口宽高
    CC.ScreenH=lib.GetScreenH();

	CC.SrcCharSet=0;					--源代码的字符集 0 gb  1 big5，用于转换R×。 如果源码被转换为big5，则应设为1
	CC.OSCharSet=CONFIG.CharSet;		--OS 字符集，-1 系统判断，0 GB, 1 Big5
	CC.FontName=CONFIG.FontName;		--显示字体

	--定义记录文件名。S和D由于是固定大小，因此不再定义idx了。
	CC.R_IDXFilename = {[0] = CONFIG.DataPath .. "ranger.idx"}
	CC.R_GRPFilename = {[0] = CONFIG.DataPath .. "ranger.grp"}
	CC.S_Filename = {[0] = CONFIG.DataPath .. "allsin.grp"}
	CC.D_Filename = {[0] = CONFIG.DataPath .. "alldef.grp"}
	
	CC.SavePath = CONFIG.DataPath .. "save/";
	CC.R_GRP = CC.SavePath.."r%d.grp"
	CC.S_GRP = CC.SavePath.."s%d.grp"
	CC.D_GRP = CC.SavePath.."d%d.grp"
	CC.SaveNum = 10;			--存档数量为10

	CC.TempS_Filename=CONFIG.DataPath .. "allsinbk.grp";

	CC.PaletteFile=CONFIG.DataPath .. "mmap.col";
	
  CC.SayBoxNMFile=CONFIG.PicturePath .. "SAYBOXNM.png";  
    CC.SayBoxFile=CONFIG.PicturePath .. "SAYBOX.png";
	CC.BG01File=CONFIG.PicturePath .. "bg01.png";
	CC.FirstFile=CONFIG.PicturePath .. "title.png";
	CC.DeadFile=CONFIG.PicturePath .. "dead.png";
   CC.JYXXFile=CONFIG.PicturePath .. "JYXX.png";
	CC.MMapFile={CONFIG.DataPath .. "earth.002",
				CONFIG.DataPath .. "surface.002",
				CONFIG.DataPath .. "building.002",
		        CONFIG.DataPath .. "buildx.002",
				CONFIG.DataPath .. "buildy.002"};

	--各种贴图文件名。这里只给出文件名，扩展名必须为idx/grp
	CC.MMAPPicFile = {CONFIG.DataPath .. "mmap.idx", CONFIG.DataPath .. "mmap.grp"}
	CC.SMAPPicFile = {CONFIG.DataPath .. "smap.idx", CONFIG.DataPath .. "smap.grp"}
	CC.WMAPPicFile = {CONFIG.DataPath .. "wmap.idx", CONFIG.DataPath .. "wmap.grp"}
	CC.EFTFile = {CONFIG.DataPath .. "Eft.idx", CONFIG.DataPath .. "Eft.grp"}
	CC.BJ = {CONFIG.DataPath .. "bj.idx", CONFIG.DataPath .. "bj.grp"}
	CC.FightPicFile = {CONFIG.DataPath .. "fight/fight%03d.idx", CONFIG.DataPath .. "fight/fight%03d.grp"}

	CC.HeadPath = CONFIG.DataPath .. "head/";
	CC.HeadNum = 1010;
	CC.BodyPath = CONFIG.DataPath .. "body/";
	CC.BodyNum = 1010;
	CC.ThingPicFile = {CONFIG.DataPath .. "thing.idx", CONFIG.DataPath .. "thing.grp"}
	CC.BigHead = {CONFIG.DataPath .. "hdgrp.idx", CONFIG.DataPath .. "head.grp"}
	CC.IconPath = CONFIG.DataPath .. "icons/";
	CC.IconNum = 1010;

    CC.DzPath = CONFIG.DataPath .. "dzs/";
	CC.DzNum = 1010;	


  	CC.XTPath = CONFIG.DataPath .. "xt/";  
	CC.XTNum = 1100;	
	CC.UIPath = CONFIG.DataPath .. "UI/";
	CC.UINum = 1100;
	
	CC.PTPath = CONFIG.DataPath .. "Portrait/";
	CC.PTNum = 1010;
	
	CC.BJPath = CONFIG.DataPath .. "bj/";
	CC.BJNum = 1010;	
	
	if CONFIG.MP3 == 1 then
		CC.MIDIFile=CONFIG.SoundPath .. "game%02d.mp3";
	else
		CC.MIDIFile=CONFIG.SoundPath .. "game%02d.mid";
	end
	CC.OGGFile=CONFIG.SoundPath .. "game%02d.ogg";
	CC.ATKFile=CONFIG.SoundPath .. "atk%02d.wav";
	CC.EFile=CONFIG.SoundPath .. "e%02d.wav";

	CC.WarFile=CONFIG.DataPath .. "war.sta";
	CC.WarMapFile={CONFIG.DataPath .. "warfld.idx",
                  CONFIG.DataPath .. "warfld.grp"};

	CC.TRP = CONFIG.DataPath.."talk.grp"
	CC.TDX = CONFIG.DataPath.."talk.idx"
  
	CC.CircleFile = CONFIG.DataPath.."circle";
  
	CC.CircleNum = 1;		--周目数

	--定义记录文件R×结构。  lua不支持结构，无法直接从二进制文件中读取，因此需要这些定义，用table中不同的名字来仿真结构。
	CC.TeamNum=15;          --队伍人数
	CC.MyThingNum=300      --主角物品数量
	
	CC.ItemInfoPath = CONFIG.ScriptPath .. "ItemInfo/"
	
	--版本号
	CC.Version="版本 3.0"
   
	--动态显示提示
	CC.Timer={
						stime=0,
						status=0,
						str='',
						len=0,
						fun=demostr,
					};
	--动态显示的内容
	CC.RUNSTR={
							'快捷键 F1-马车 F3-队列 F4-整理物品 H-回家',
							'多培养一些队友，可以让你后面的战斗更轻松',
							'黑鱼狂想录不仅限金庸，会有各种意想不到的东西',
							'建议在小村把队友和主角练至最高的30级再出门历险',
							'小村的厨灶和炼丹炉可以制作提升生命和内力上限的药品'
						};
   

	CC.Base_S={};         --保存基本数据的结构，以便以后存取
	CC.Base_S["乘船"]={0,0,2}   -- 起始位置(从0开始)，数据类型(0有符号 1无符号，2字符串)，长度
	CC.Base_S["无用"]={2,0,2};
	CC.Base_S["人X"]={4,0,2};
	CC.Base_S["人Y"]={6,0,2};
	CC.Base_S["人X1"]={8,0,2};
	CC.Base_S["人Y1"]={10,0,2};
	CC.Base_S["人方向"]={12,0,2};
	CC.Base_S["船X"]={14,0,2};
	CC.Base_S["船Y"]={16,0,2};
	CC.Base_S["船X1"]={18,0,2};
	CC.Base_S["船Y1"]={20,0,2};
	CC.Base_S["船方向"]={22,0,2};
	CC.Base_S["难度"]={24,0,2};
	CC.Base_S["标准"]={26,0,2};
	CC.Base_S["畅想"]={28,0,2};
	CC.Base_S["特殊"]={30,0,2};
	CC.Base_S["天书数量"]={32,0,2};
	CC.Base_S["斗神"]={34,0,2};
	CC.Base_S["宠物"]={36,0,2};
	for i=1,CC.TeamNum do
		CC.Base_S["队伍" .. i]={38+2*(i-1),0,2};
	end

	for i=1,CC.MyThingNum do
		CC.Base_S["物品" .. i]={68+4*(i-1),0,2};
		CC.Base_S["物品数量" .. i]={68+4*(i-1)+2,0,2};
	end

    CC.PersonSize=298;   --每个人物数据占用字节
    CC.Person_S={};      --保存人物数据的结构，以便以后存取
    CC.Person_S["代号"]={0,0,2}
    CC.Person_S["头像代号"]={2,0,2}
    CC.Person_S["生命增长"]={4,0,2}
    CC.Person_S["无用"]={6,0,2}
    CC.Person_S["姓名"]={8,2,10}
    CC.Person_S["外号"]={18,2,10}
    CC.Person_S["性别"]={28,0,2}
    CC.Person_S["等级"]={30,0,2}
    CC.Person_S["经验"]={32,1,2}
    CC.Person_S["生命"]={34,0,2}
    CC.Person_S["生命最大值"]={36,0,2}
    CC.Person_S["受伤程度"]={38,0,2}
    CC.Person_S["中毒程度"]={40,0,2}
    CC.Person_S["体力"]={42,0,2}
    CC.Person_S["物品修炼点数"]={44,0,2}
    CC.Person_S["武器"]={46,0,2}
    CC.Person_S["防具"]={48,0,2}

	for i=1,5 do
		CC.Person_S["出招动画帧数" .. i]={50+2*(i-1),0,2};
        CC.Person_S["出招动画延迟" .. i]={60+2*(i-1),0,2};
        CC.Person_S["武功音效延迟" .. i]={70+2*(i-1),0,2};
	end

    CC.Person_S["内力性质"]={80,0,2}
    CC.Person_S["内力"]={82,0,2}
    CC.Person_S["内力最大值"]={84,0,2}
    CC.Person_S["攻击力"]={86,0,2}
    CC.Person_S["轻功"]={88,0,2}
    CC.Person_S["防御力"]={90,0,2}
    CC.Person_S["医疗能力"]={92,0,2}
    CC.Person_S["用毒能力"]={94,0,2}
    CC.Person_S["解毒能力"]={96,0,2}
    CC.Person_S["抗毒能力"]={98,0,2}
    CC.Person_S["拳掌功夫"]={100,0,2}
	CC.Person_S["指法技巧"]={102,0,2}
    CC.Person_S["御剑能力"]={104,0,2}
    CC.Person_S["耍刀技巧"]={106,0,2}
    CC.Person_S["特殊兵器"]={108,0,2}
    CC.Person_S["暗器技巧"]={110,0,2}
    CC.Person_S["武学常识"]={112,0,2}
    CC.Person_S["品德"]={114,0,2}
    CC.Person_S["攻击带毒"]={116,0,2}
    CC.Person_S["左右互搏"]={118,0,2}
    CC.Person_S["声望"]={120,0,2}
    CC.Person_S["资质"]={122,0,2}
    CC.Person_S["修炼物品"]={124,0,2}
    CC.Person_S["修炼点数"]={126,0,2}

    for i=1,12 do
        CC.Person_S["武功" .. i]={128+2*(i-1),0,2};
        CC.Person_S["武功等级" .. i]={152+2*(i-1),0,2};
    end

    for i=1,4 do
        CC.Person_S["携带物品" .. i]={176+2*(i-1),0,2};
        CC.Person_S["携带物品数量" .. i]={184+2*(i-1),0,2};
    end
	
	for i=1,4 do
		CC.Person_S["天赋外功"..i]={192+2*(i-1),0,2};
	end
	
	CC.Person_S["天赋内功"]={200,0,2}
	CC.Person_S["天赋轻功"]={202,0,2}
	CC.Person_S["实战"]={204,0,2}
	CC.Person_S["出战"]={206,0,2}
	CC.Person_S["休战"]={208,0,2}
	CC.Person_S["主运内功"]={210,0,2}
	CC.Person_S["主运轻功"]={212,0,2}
	CC.Person_S["六如觉醒"]={214,0,2}
	CC.Person_S["个人觉醒"]={216,0,2}
	CC.Person_S["畅想分阶"]={218,0,2}
	CC.Person_S["外号2"]={220,2,10}
	CC.Person_S["冰封程度"]={230,0,2}
	CC.Person_S["血量翻倍"]={232,0,2}
	CC.Person_S["论剑奖励"]={234,0,2}
	CC.Person_S["灼烧程度"]={236,0,2}
	CC.Person_S["行为模式"]={238,0,2}
	CC.Person_S["优先使用"]={240,0,2}
	CC.Person_S["是否吃药"]={242,0,2}
	CC.Person_S["生命阈值"]={244,0,2}
	CC.Person_S["内力阈值"]={246,0,2}
	CC.Person_S["体力阈值"]={248,0,2}
	CC.Person_S["禁用自动"]={250,0,2}
	CC.Person_S["特色指令"]={252,0,2}
	CC.Person_S["斗神宠物"]={254,0,2}
	CC.Person_S["坐骑"]={256,0,2}
	CC.Person_S["半身像"]={258,0,2}
	CC.Person_S["枪棒技巧"]={260,0,2}
	CC.Person_S["技能1"]={262,0,2}
	CC.Person_S["技能2"]={264,0,2}
	CC.Person_S["技能3"]={266,0,2}
	CC.Person_S["技能4"]={268,0,2}
	CC.Person_S["技能5"]={270,0,2}
	CC.Person_S["技能6"]={272,0,2}
	CC.Person_S["主运技能"]={274,0,2}
	CC.Person_S["饰品"]={276,0,2}
	CC.Person_S["天赋1"]={278,0,2}
	CC.Person_S["天赋2"]={280,0,2}
	CC.Person_S["天赋3"]={282,0,2}
	CC.Person_S["天赋4"]={284,0,2}
	CC.Person_S["天赋5"]={286,0,2}
	CC.Person_S["天赋6"]={288,0,2}
	CC.Person_S["天赋7"]={290,0,2}
	CC.Person_S["天赋8"]={292,0,2}
	CC.Person_S["天赋9"]={294,0,2}
	CC.Person_S["天赋10"]={296,0,2}

	
    CC.ThingSize=200;   --每个人物数据占用字节
    CC.Thing_S={};
    CC.Thing_S["代号"]={0,0,2}
    CC.Thing_S["名称"]={2,2,20}
    CC.Thing_S["名称2"]={22,2,20}
    CC.Thing_S["物品说明"]={42,2,30}
    CC.Thing_S["练出武功"]={72,0,2}
    CC.Thing_S["暗器动画编号"]={74,0,2}
    CC.Thing_S["使用人"]={76,0,2}
    CC.Thing_S["装备类型"]={78,0,2}
    CC.Thing_S["显示物品说明"]={80,0,2}
    CC.Thing_S["类型"]={82,0,2}
    CC.Thing_S["未知5"]={84,0,2}
    CC.Thing_S["未知6"]={86,0,2}
    CC.Thing_S["练出技能"]={88,0,2}
    CC.Thing_S["加生命"]={90,0,2}
    CC.Thing_S["加生命最大值"]={92,0,2}
    CC.Thing_S["加中毒解毒"]={94,0,2}
    CC.Thing_S["加体力"]={96,0,2}
    CC.Thing_S["改变内力性质"]={98,0,2}
    CC.Thing_S["加内力"]={100,0,2}

    CC.Thing_S["加内力最大值"]={102,0,2}
    CC.Thing_S["加攻击力"]={104,0,2}
    CC.Thing_S["加轻功"]={106,0,2}
    CC.Thing_S["加防御力"]={108,0,2}
    CC.Thing_S["加医疗能力"]={110,0,2}
    CC.Thing_S["加用毒能力"]={112,0,2}
    CC.Thing_S["加解毒能力"]={114,0,2}
    CC.Thing_S["加抗毒能力"]={116,0,2}
    CC.Thing_S["加拳掌功夫"]={118,0,2}
	CC.Thing_S["加指法技巧"]={120,0,2}	
    CC.Thing_S["加御剑能力"]={122,0,2}
    CC.Thing_S["加耍刀技巧"]={124,0,2}
    CC.Thing_S["加特殊兵器"]={126,0,2}
    CC.Thing_S["加暗器技巧"]={128,0,2}
    CC.Thing_S["加武学常识"]={130,0,2}
    CC.Thing_S["加品德"]={132,0,2}

    CC.Thing_S["加攻击次数"]={134,0,2}
    CC.Thing_S["加攻击带毒"]={136,0,2}
    CC.Thing_S["仅修炼人物"]={138,0,2}
    CC.Thing_S["需内力性质"]={140,0,2}
    CC.Thing_S["需内力"]={142,0,2}
    CC.Thing_S["需攻击力"]={144,0,2}
    CC.Thing_S["需轻功"]={146,0,2}
    CC.Thing_S["需用毒能力"]={148,0,2}
    CC.Thing_S["需医疗能力"]={150,0,2}
    CC.Thing_S["需解毒能力"]={152,0,2}
    CC.Thing_S["需拳掌功夫"]={154,0,2}	
	CC.Thing_S["需指法技巧"]={156,0,2}	
    CC.Thing_S["需御剑能力"]={158,0,2}
    CC.Thing_S["需耍刀技巧"]={160,0,2}
    CC.Thing_S["需特殊兵器"]={162,0,2}
    CC.Thing_S["需暗器技巧"]={164,0,2}

    CC.Thing_S["需资质"]={166,0,2}
    CC.Thing_S["需经验"]={168,0,2}
    CC.Thing_S["练出物品需经验"]={170,0,2}
    CC.Thing_S["需材料"]={172,0,2}

    for i=1,5 do
		CC.Thing_S["练出物品" .. i]={174+2*(i-1),0,2};
		CC.Thing_S["需要物品数量" .. i]={184+2*(i-1),0,2};
	end
	 
	CC.Thing_S["是否特效"]={194,0,2}
	CC.Thing_S["装备经验"]={196,0,2}
	CC.Thing_S["装备等级"]={198,0,2}

    CC.SceneSize=54;   --每个场景数据占用字节
    CC.Scene_S={};
    CC.Scene_S["代号"]={0,0,2}
    CC.Scene_S["名称"]={2,2,10}
    CC.Scene_S["出门音乐"]={12,0,2}
    CC.Scene_S["进门音乐"]={14,0,2}
    CC.Scene_S["跳转场景"]={16,0,2}
    CC.Scene_S["进入条件"]={18,0,2}
    CC.Scene_S["外景入口X1"]={20,0,2}
    CC.Scene_S["外景入口Y1"]={22,0,2}
    CC.Scene_S["外景入口X2"]={24,0,2}
    CC.Scene_S["外景入口Y2"]={26,0,2}
    CC.Scene_S["入口X"]={28,0,2}
    CC.Scene_S["入口Y"]={30,0,2}
    CC.Scene_S["出口X1"]={32,0,2}
    CC.Scene_S["出口X2"]={34,0,2}
    CC.Scene_S["出口X3"]={36,0,2}
    CC.Scene_S["出口Y1"]={38,0,2}
    CC.Scene_S["出口Y2"]={40,0,2}
    CC.Scene_S["出口Y3"]={42,0,2}
    CC.Scene_S["跳转口X1"]={44,0,2}
    CC.Scene_S["跳转口Y1"]={46,0,2}
    CC.Scene_S["跳转口X2"]={48,0,2}
    CC.Scene_S["跳转口Y2"]={50,0,2}
	CC.Scene_S["场景类型"]={52,0,2}

    CC.WugongSize=140;   --每个武功数据占用字节
    CC.Wugong_S={};
    CC.Wugong_S["代号"]={0,0,2}
    CC.Wugong_S["名称"]={2,2,10}
    CC.Wugong_S["未知1"]={12,0,2}
    CC.Wugong_S["未知2"]={14,0,2}
    CC.Wugong_S["未知3"]={16,0,2}
    CC.Wugong_S["麻痹系数"]={18,0,2}
    CC.Wugong_S["迟缓系数"]={20,0,2}
    CC.Wugong_S["出招音效"]={22,0,2}
    CC.Wugong_S["武功类型"]={24,0,2}
    CC.Wugong_S["武功动画&音效"]={26,0,2}
    CC.Wugong_S["伤害类型"]={28,0,2}
    CC.Wugong_S["攻击范围"]={30,0,2}
    CC.Wugong_S["消耗内力点数"]={32,0,2}
    CC.Wugong_S["敌人中毒点数"]={34,0,2}

    for i=1,10 do
		CC.Wugong_S["攻击力" .. i]={36+2*(i-1),0,2};
		CC.Wugong_S["移动范围" .. i]={56+2*(i-1),0,2};
		CC.Wugong_S["杀伤范围" .. i]={76+2*(i-1),0,2};
		CC.Wugong_S["加内力" .. i]={96+2*(i-1),0,2};
		CC.Wugong_S["杀内力" .. i]={116+2*(i-1),0,2};
    end
	 
	CC.Wugong_S["冰封系数"]={136,0,2}
	CC.Wugong_S["灼烧系数"]={138,0,2}

	CC.ShopSize=36;   --每个小宝商店数据占用字节
	CC.Shop_S={};
	for i=1,6 do
		CC.Shop_S["物品" .. i]={0+2*(i-1),0,2};
		CC.Shop_S["物品数量" .. i]={12+2*(i-1),0,2};
		CC.Shop_S["物品价格" .. i]={24+2*(i-1),0,2};
	end

	CC.ShopScene={};       --小宝商店场景数据，sceneid 场景id，d_shop 小宝位置D*, d_leave 小宝离开D*，一般在场景出口，路过触发
	CC.ShopScene[0]={sceneid=1,d_shop=16,d_leave={17,18}, };
	CC.ShopScene[1]={sceneid=3,d_shop=14,d_leave={15,16}, };
	CC.ShopScene[2]={sceneid=40,d_shop=20,d_leave={21,22}, };
	CC.ShopScene[3]={sceneid=60,d_shop=16,d_leave={17,18}, };
	CC.ShopScene[4]={sceneid=61,d_shop=9,d_leave={10,11,12}, };


	--其他常量
	CC.MWidth=480;       --主地图宽
	CC.MHeight=480;      --主地图高

	CC.SWidth=64;     --子场景地图大小
	CC.SHeight=64;

	CC.DNum=200;       --D*每个场景的事件数

	CC.XScale=CONFIG.XScale;    --贴图一半的宽高
	CC.YScale=CONFIG.YScale;


	CC.Frame=CONFIG.FrameRate;     --每帧毫秒数
	CC.BattleDelay=CONFIG.BattleDelay;     --战斗点数显示的延迟（毫秒）

	CC.SceneMoveFrame=100;           --场景移动帧速，用于场景移动事件
	CC.PersonMoveFrame=100;          --主角移动速度，用于主角移动事件
	CC.AnimationFrame=150;           --动画显示帧速，用于显示动画事件

	CC.WarAutoDelay=300;                   --自动战斗时显示头像的延时

	CC.DirectX={0,1,-1,0};  --不同方向x，y的加减值，用于走路改变坐标值
	CC.DirectY={-1,0,0,1};

	CC.MyStartPicM=2501;      --男主角走路起始贴图
	CC.MyStartPicF=5001;      --女主角走路起始贴图
	CC.BoatStartPic=3715;    --船起始贴图

	CC.Level=30;                  ---人物等级和每等级经验
	CC.Exp={   50,    150,     300 ,500   , 750 ,
               1050,  1400,   1800 ,2250  , 2750 ,
               3850,  5050,   6350 ,7750  , 9250 ,
               10850, 12550, 14350 ,16750 , 18250 ,
               21400, 24700, 28150 ,31750 , 35500 ,
	           39400, 43450, 47650 ,52000 , 60000 , [0] = 0 };

    CC.MMapBoat={};    --主地图船可以进入的贴图
	local tmpBoat={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x3f8,0x3fe},};
    for i,v in ipairs(tmpBoat) do      --把这些数据变换成数组，其中有值就是可以进入
        for j=v[1],v[2],2 do
            CC.MMapBoat[j]=1;
        end
    end
	--Alungky 解决船开到深海区时，显示为人的问题
	local tmpForbid={{0x264,0x29E}}
    for i,v in ipairs(tmpForbid) do    
        for j=v[1],v[2],2 do
			CC.MMapBoat[j]=1;
        end
    end

    CC.SceneWater={};    --场景人不能进入的贴图
    local tmpWater={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x332,0x338},
                     {0x346,0x346},{0x3a6,0x3a8},{0x3f8,0x3fe},{0x52c,0x544},};
    for i,v in ipairs(tmpWater) do      --把这些数据变换成数组，其中空项就是可以进入的贴图
        for j=v[1],v[2],2 do
            CC.SceneWater[j]=1;
        end
    end

    CC.WarWater={};    --战斗地图人不能进入的贴图
    local tmpWater={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x332,0x338},
                     {0x346,0x346},{0x3a6,0x3a8},{0x3f8,0x3fe},{0x52c,0x544},};
    for i,v in ipairs(tmpWater) do      --把这些数据变换成数组，其中空项就是可以进入的贴图
        for j=v[1],v[2],2 do
            CC.WarWater[j]=1;
        end
    end

--武功招式
CC.KFMove={}
--逍遥游3招
CC.KFMove[2]={
{'饭来张口',600},
{'沿门托钵',600},
{'见人伸手',600}
}
--五毒神掌1招
CC.KFMove[3]={
{'五毒摧心',700}
}
--鹰爪功6招
CC.KFMove[4]={
	{'飞燕流波',700},
	{'孤鹫长空',700},
	{'水鸟亮翅',800},
	{'红鹤梳妆',800},
	{'白鹭涉滩',900},
	{'凤凰天炽',900}
}
--寒冰绵掌1招
CC.KFMove[5]={
{'寒冰封体',700}
}
--美女拳法3招
CC.KFMove[6]={
{'红玉击鼓',700},
{'文姬归汉',700},
{'木兰弯弓',700}
}
--绵掌1招
CC.KFMove[7]={
{'绵绵不绝',700}
}
--天山六阳掌3招
CC.KFMove[8]={
{'阳歌天钧',900},
{'阳春白雪',900},
{'阳关三叠',900}
}
--白驼雪山掌1招
CC.KFMove[9]={
{'雪山白驼',800}
}
--百花错拳2招
CC.KFMove[10]={
{'红花天梦',800},
{'天池缭乱',800}
}
--九阴白骨爪1招
CC.KFMove[11]={
{'冥华幻灭',1100}
}
--落英神剑掌3招
CC.KFMove[12]={
{'珞樱缤纷',900},
{'雨急风狂',900},
{'江城飞花',900}
}
--铁掌1招
CC.KFMove[13]={
{'壁立千仞',900}
}
--天山折梅手2招
CC.KFMove[14]={
{'踏雪折梅',1200},
{'天山灵鹫',1200}
}
--空明拳3招
CC.KFMove[15]={
{'深藏若虚',1200},
{'天马行空',1200},
{'空空如也',1200}
}
--太极拳3招
CC.KFMove[16]={
{'上步野马分鬃',1000},
{'提步高探马',1000},
{'白鹤晾翅',1000}
}
--一阳指3招
CC.KFMove[17]={
{'梵指南天',1200},
{'指矢天日',1200},
{'紫微伏龙',1200}
}
--弹指神通2招
CC.KFMove[18]={
{'弹指一瞬',1200},
{'踏月香华',1200}
}
--幻阴指1招
CC.KFMove[19]={
{'魔幻天阴',1000}
}
--龙爪手1招
CC.KFMove[20]={
{'沛然有雨',1000}
}
--玄冥神掌2招
CC.KFMove[21]={
{'玄冥侵体',1100},
{'冰毒缭绕',1100}
}
--大金刚掌3招
CC.KFMove[22]={
{'大梵炼狱',1000},
{'九仪崩乱',1000},
{'地火燃穹',1000}
}
--七伤拳2招
CC.KFMove[23]={
{'藏离精失',1000},
{'三焦齐逆',1000}
}
--须弥山神掌3招
CC.KFMove[24]={
{'色空四显',1200},
{'无色无相',1200},
{'慑伏外道',1200}
}
--黯然销魂掌6招
CC.KFMove[25]={
{'杞人忧天',1300},
{'无中生有',1300},
{'拖泥带水',1300},
{'行尸走肉',1300},
{'倒行逆施',1300},
{'面无人色',1300}
}
--松风剑法3招
CC.KFMove[27]={
{'平沙落雁',300},
{'鸿飞冥冥',300},
{'碧渊腾蛟',300}
}
--雷震剑术2招
CC.KFMove[28]={
{'轰雷掣电',300},
{'雷霆万钧',300}
}
--三分剑术3招
CC.KFMove[29]={
{'冰河倒泻',400},
{'雪中奇莲',400},
{'千岩竞秀',400}
}
--恒山剑法3招
CC.KFMove[30]={
{'万花齐放',500},
{'万卉争艳',500},
{'清澈梅花',500}
}
--泰山剑法3招
CC.KFMove[31]={
{'五大夫剑',500},
{'岱宗如何',500},
{'七星落长空',500}
}
--衡山剑法3招
CC.KFMove[32]={
{'泉鸣芙蓉',600},
{'鹤翔紫盖',600},
{'天柱云气',600}
}
--嵩山剑法3招
CC.KFMove[33]={
{'叠翠浮青',600},
{'玉进天池',600},
{'天外玉龙',600}
}
--华山剑法3招
CC.KFMove[34]={
{'苍松迎客',600},
{'金雁横空',600},
{'天坤倒悬',600}
}
--雪山剑法3招
CC.KFMove[35]={
{'雪泥鸿爪',600},
{'梅雪争春',600},
{'雪山六出',600}
}
--柔云剑法3招
CC.KFMove[36]={
{'杏花春雨',700},
{'满天花雨',700},
{'玉带围腰',700}
}
--两仪剑法2招
CC.KFMove[37]={
{'金针渡劫',800},
{'峭壁断云',800}
}
--玉萧剑法5招
CC.KFMove[38]={
{'山外清音',800},
{'金声玉振',800},
{'凤曲长鸣',800},
{'响隔楼台',800},
{'棹歌中流',800}
}
--全真剑法5招
CC.KFMove[39]={
{'大江似练',800},
{'春意阑珊',800}, 
{'斜风细雨',800}, 
{'星河欲转',800}, 
{'桃花流水',800}
}
--金蛇剑法5招
CC.KFMove[40]={
{'金光蛇影',900},
{'蛇影万馈',900},
{'金蛇化龙',900},
{'灵蛇电闪',900},
{'蛇困愁城',900}
}
--倚天剑法3招
CC.KFMove[41]={
{'玉碎昙香',1000},
{'天劫俱灭',1000}, 
{'倚天照海',1000}
}
--玉女剑法6招
CC.KFMove[42]={
{'清饮小酌',800},
{'浪迹天涯',800},
{'举案齐眉',800},
{'皓腕玉镯',800},
{'冷月窥人',800},
{'竹帘临池',800}
}
--斗转星移2招
CC.KFMove[43]={
{'星落云散',1200},
{'星光日月',1200}
}
--苗家剑法6招
CC.KFMove[44]={
{'冲天掌苏秦背剑',1000},
{'黄龙转身吐须势',1000},
{'迎门腿反劈华山',1000},
{'洗剑怀中抱月',1000},
{'上步云边摘月',1000},
{'提撩剑白鹤舒翅',1000}
}
--玄铁剑法4招
CC.KFMove[45]={
{'逆击',1500},
{'倒劈',1500},
{'顺刺',1500},
{'横削',1500}
}
--太极剑法3招
CC.KFMove[46]={
{'仙人指路',1300},
{'青龙出水',1300},
{'三环套月',1300}
}
--独孤九剑9招
CC.KFMove[47]={
{'总决式',1600},
{'破剑式',1600},
{'破枪式',1600},
{'破刀式',1600},
{'破鞭式',1600},
{'破索式',1600},
{'破掌式',1600},
{'破箭式',1600},
{'破气式',1600}
}
--辟邪剑法6招
CC.KFMove[48]={
{'扫荡群魔',800},
{'紫气东来',800},
{'锺馗抉目',800}, 
{'花开见佛',800},
{'直捣黄龙',800}, 
{'指打奸邪',800}
}
--柴刀十八路2招
CC.KFMove[50]={
{'砍',500},
{'劈',500}
}
--鬼头刀法1招
CC.KFMove[52]={
{'鬼见愁',600}
}
--南山刀法2招
CC.KFMove[53]={
{'铁锁横江',600},
{'燕子入巢',600}
}
--鸳鸯刀法2招
CC.KFMove[54]={
{'云蕾花开',1200},
{'玲珑偃月',1200}
}
--狂风刀法2招
CC.KFMove[55]={
{'狂风大作',700},
{'飞沙走石',700}
}
--奇门三才刀2招
CC.KFMove[56]={
{'带醉脱靴',700},
{'奇刀单鞭式',700}
}
--慈悲刀法2招
CC.KFMove[57]={
{'放下屠刀',600},
{'立地成佛',600}
}
--修罗刀1招
CC.KFMove[58]={
{'恨意绵绵',600}
}
--五虎断门刀2招
CC.KFMove[59]={
{'白虎跳涧',600},
{'剪扑自如',600}
}
--反两仪刀法2招
CC.KFMove[60]={
{'重节守义',700},
{'万劫不复',700}
}
--金乌刀法2招
CC.KFMove[61]={
{'梅雪逢夏',700},
{'赤日炎炎',700}
}
--夫妻刀法4招
CC.KFMove[62]={
{'女貌郎才珠万斛',1200},
{'天教丽质为眷属',1200}, 
{'清风引佩下瑶台',1200}, 
{'明月照妆成金屋',1200}
}
--血刀大法3招
CC.KFMove[63]={
{'呕心沥血',800},
{'批纸削腐',800},
{'流星经天',800}
}
--玄虚刀法2招
CC.KFMove[64]={
{'玄之又玄',900}
}
--燃木刀法2招
CC.KFMove[65]={
{'钻木取火',900},
{'无名孽火',900}
}
--火焰刀法2招
CC.KFMove[66]={
{'烈火燎原',1200},
{'举火烧天',1200}
}
--胡家刀法2招
CC.KFMove[67]={
{'穿手藏刀式',1100},
{'八方藏刀式',1100}
}
--杨家枪法3招
CC.KFMove[68]={
{'回马枪',500},
{'春雷震怒',500},
{'凤点头',500}
}
--中平枪法2招
CC.KFMove[70]={
{'中正锁喉',600},
{'枪平九洲',600}
}
--裴将军帖2招
CC.KFMove[71]={
{'大君制六合',700},
{'猛将清九垓',700}
}
--棋盘招式8招
CC.KFMove[72]={
{'紧气',800},
{'提子',800},
{'大飞',800},
{'小飞',800},
{'天元',800},
{'跳',800},
{'立',800},
{'长',800}
}
--鹤蛇八打2招
CC.KFMove[74]={
{'冲天一鹤',700},
{'仙鹤穿云',700}
}
--大剪刀2招
CC.KFMove[75]={
{'咔嚓',800},
{'我剪',800}
}
--阴阳倒乱刃2招
CC.KFMove[77]={
{"假刀非刀",1000},
{"假剑非剑",1000}
}
--黄沙万里鞭2招
CC.KFMove[78]={
{"血染黄沙",800},
{"飞沙万里",800}
}
--银索金铃2招
CC.KFMove[79]={
{"银索缠身",1100},
{"锁穴金铃",1100}
}
--打狗棒法4招
CC.KFMove[80]={
{'棒打狗头',1400},
{'反截狗臀',1400},
{'獒口夺杖',1400},
{'棒打双犬',1400}
}
--灵蛇杖法2招
CC.KFMove[81]={
{'怪蟒翻身',1400},
{'毒蛇吐信',1400}
}
--金刚伏魔圈4招
CC.KFMove[82]={
{'祗园精舍',1100},
{'诸行无常',1100},
{'娑罗双树',1100}, 
{'幻梦一场',1100}
}
--无上大力杵3招
CC.KFMove[83]={
{'力战千钧',1200},
{'拔山填海',1200},
{'千钧压顶',1200}
}
--倚天屠龙功6招
CC.KFMove[84]={
{'武林至尊',1000},
{'宝刀屠龙',1000},
{'号令天下',1000},
{'莫敢不从',1000},
{'倚天不出',1000},
{'谁与争锋',1000}
}
--伏魔杖法2招
CC.KFMove[86]={
{'天魔降伏',1100},
{'降龙伏虎',1100}
}
--太玄神功5招
CC.KFMove[102]={
{'赵客缦胡缨 吴钩霜雪明',1200},
{'银鞍照白马 飒沓如流星',1200},
{'三杯吐然诺 五岳倒为轻',1200},
{'纵死侠骨香 不惭世上英',1200},
{'谁能书阁下 白首太玄经',1200}
}	
--野球拳3招
CC.KFMove[109]={
{'石头',1200},
{'剪子',1200},
{'布',1200}
}
--神山剑法3招
CC.KFMove[110]={
{'神洲移山剑',1200},
{'神洲镇山剑',1200},
{'神洲擎山剑',1200}
}
--西瓜刀法3招
CC.KFMove[111]={
{'切瓜',1200},
{'剁瓜',1200},
{'砍瓜',1200}
}
--犽月流空2招
CC.KFMove[112]={
{'月犽流',1200},
{'月骁流',1200}
}
--连城剑法4招
CC.KFMove[114]={
{'故人西辞黄鹤楼',900},
{'烟花三月下扬州',900},
{'孤帆远影碧空尽',900},
{'唯见长江天际流',900}
}
--三花聚顶掌1招
CC.KFMove[115]={
{'天虹倒划',700}
}
--冰蚕毒掌1招
CC.KFMove[120]={
{'冰毒缭绕',1100}
}
--凝血神爪2招
CC.KFMove[134]={
{'风驰电掣',1000},
{'逆挽天华',1000}
}
--大力金刚指2招
CC.KFMove[135]={
{'金刚揭谛',700},
{'金刚震脉',700}
}
--无相劫指2招
CC.KFMove[136]={
{'天地玄黄',1300},
{'天火焚城',1300}
}
--参合指6招
CC.KFMove[138]={
{'国破山河在，城春草木深',1500},
{'感时花溅泪，恨别鸟惊心',1500},
{'锋火连三月，兵败参合陂',1500},
{'白头搔更短，浑欲不胜簪',1500},
{'夜来参星斗，天命何所归',1500},
{'顾盼子孙贤，铭记复国志',1500}
}
--玉女素心剑6招
CC.KFMove[139]={
{'清饮小酌',1100},
{'浪迹天涯',1100},
{'举案齐眉',1100},
{'皓腕玉镯',1100},
{'冷月窥人',1100},
{'竹帘临池',1100}
}
--达摩剑法1招
CC.KFMove[140]={
{'天罗地煞',1000}
}
--百胜刀法2招
CC.KFMove[141]={
{'却月天戈',1000},
{'孤月寒江',1000}
}
--妙笔丹青1招
CC.KFMove[142]={
{'神封太渊',1200}
}
--沧溟刀法2招
CC.KFMove[153]={
{'素月分辉',1200},
{'银河共影',1200}
}
--越女剑法4招
CC.KFMove[156]={
{'电照长空',1500},
{'仙猿剑舞',1500},
{'诛天凌神',1500},
{'天仙剑影',1500}
}
--枣核钉1招
CC.KFMove[157]={
{'瞬狱一杀',1000}
}
--五轮大转2招
CC.KFMove[158]={
{'天罡震烈',1300},
{'天舞宝轮',1300}
}
--苍狼战戟2招
CC.KFMove[159]={
{'魔澜惊炽',2000},
{'罗摩沌灭',2000}
}
--玄女剑法1招
CC.KFMove[161]={
{'碧落穹苍',1200}
}
--狂风快剑2招
CC.KFMove[162]={
{'一叶扁舟',1200},
{'天外飞龙',1200}
}
--白蟒鞭法1招
CC.KFMove[164]={
{'残烛引月',1200}
}
--青莲剑法10招
CC.KFMove[167]={
{'长风万里送秋雁',1200},
{'对此可以酣高楼',1200},
{'蓬莱文章建安骨',1200},
{'中间小谢又清发',1200},
{'俱怀逸兴壮思飞',1200},
{'欲上青天览明月',1200},
{'抽刀断水水更流',1200},
{'举杯消愁愁更愁',1200},
{'人生在世不称意',1200},
{'明朝散发弄扁舟',1200}
}
--逍遥神剑2招
CC.KFMove[168]={
{'蓬莱仙梦',1600},
{'百剑无终',1600}
}

--达摩神掌4招
CC.KFMove[173]={
{'亿万小时',3000},
{'精心打磨',3000},
{'国产绿色',3000},
{'休闲单机',3000}
}

--阴风刀2招
CC.KFMove[174]={
{'阴风阵阵',1200},
{'利刃寒锋',1200}
}



--离队人员列表: {人员id，离队调用函数}      ----如果有新的离队人员加入，直接在这里增加
CC.PersonExit = {
{1, 100}, 
{2, 102}, 
{4, 104}, 
{9, 106}, 
{16, 108}, 
{17, 110}, 
{25, 112}, 
{28, 114}, 
{29, 116}, 
{30, 118}, 
{35, 120}, 
{36, 122}, 
{37, 124}, 
{38, 126}, 
{44, 128}, 
{45, 130}, 
{47, 132}, 
{48, 134}, 
{49, 136}, 
{51, 138}, 
{52, 140}, 
{53, 142}, 
{54, 144}, 
{55, 146}, 
{56, 148}, 
{58, 150}, 
{59, 152},
{61, 10003},--欧阳克离队事件 
{63, 154}, 
{66, 156}, 
{72, 158}, 
{73, 160}, 
{74, 162}, 
{75, 164}, 
{76, 166}, 
{77, 168}, 
{78, 170}, 
{79, 172}, 
{80, 174}, 
{81, 176}, 
{82, 178}, 
{83, 180}, 
{84, 182}, 
{85, 184}, 
{86, 186}, 
{87, 188}, 
{88, 190}, 
{89, 192}, 
{90, 194}, 
{91, 196}, 
{92, 198},
{589, 8005},--水笙离队事件
{590, 8650},--李文秀离队事件
{601, 4138},--韦小宝离队事件
{161, 4183},--李莫愁离队事件
{626, 4184},--郭襄离队事件
{628, 4191},--神雕离队事件
{629, 4200},--阿九离队事件
{607, 4202},--焦宛儿离队事件
{631, 4209} --周芷若离队事件
}

    --所有可加入人员离队需要清除的D*事件，清除后这些人就找不到了。得到神杖时使用
    CC.AllPersonExit={ {1, 5}, 
			{2, 6}, 
			{4, 21}, 
			{9, 17}, 
			{16, 31}, 
			{17, 32}, 
			{25, 28}, 
			{28, 29}, 
			{29, 26}, 
			{30, 13}, 
			{35, 15}, 
			{36, 25}, 
			{37, {7,8}}, 
			{38, {16,58}}, 
			{44, 33}, 
			{45, 12}, 
			{47, 23}, 
			{48, 24}, 
			{49, {10,11}}, 
			{51, 22}, 
			{52, 41}, 
			{53, 9}, 
			{54, 18}, 
			{55, 13}, 
			{56, 14}, 
			{58, 19}, 
			{59, 20}, 
			{63, 30}, 
			{66, 38}, 
			{72, 40}, 
			{73, 35}, 
			{74, 36}, 
			{75, 37}, 
			{76, 27}, 
			{77, 39}, 
			{78, 59}, 
			{79, 42}, 
			{80, 52}, 
			{81, 46}, 
			{82, 54}, 
			{83, 55}, 
			{84, 34}, 
			{85, 47}, 
			{86, 49}, 
			{87, 50}, 
			{88, 43}, 
			{89, 44}, 
			{90, 53}, 
			{91, 51}, 
			{92, 1},
			{589, 80},
			{590, 86},
			{601, 48}	--韦小宝
			};

    CC.BookNum=14;               --天书个数
    CC.BookStart=144;            --14天书起始物品id

    CC.MoneyID=174;              --金钱物品id
    CC.Shemale = {[78] = 1, [93] = 1}

	--特效帧数
	CC.Effect = {
	14, 	--特效1 Blue puff
	17, 	--特效2 Water drop
	9, 		--特效3 Thin yellow line with tiny pink circle at bottom
	13, 	--特效4 Tiny yellow splashing
	17, 	--特效5 Water drop with thunder like effect
	17, 	--特效6 Water drop with thunder like effect + yellow flames rising
	17, 	--特效7 Vertical red flame fading
	18, 	--特效8	Ice falling then breaking
	19, 	--特效9 Bright yellow explotion smoke
	19, 	--特效10 yellow flames rising
	15, 	--特效11 Small blood spilling
	13, 	--特效12 Small blood spilling (fewer frames)
	10, 	--特效13 Black half circle splashing
	10, 	--特效14 Red half circle splashing
	15, 	--特效15 Tiny tornado exploding
	21, 	--特效16 blood spilling with tiny yellow explotion
	16, 	--特效17
	9, 		--特效18
	11, 	--特效19
	8, 		--特效20
	9, 		--特效21 太极
	8, 		--特效22
	8, 		--特效23
	7, 		--特效24
	8, 		--特效25
	8, 		--特效26
	9, 		--特效27
	12, 	--特效28
	19, 	--特效29
	11, 	--特效30
	14, 	--特效31 Yellow puff
	12, 	--特效32
	17, 	--特效33
	8, 		--特效34
	11, 	--特效35
	10, 	--特效36
	13, 	--特效37
	10, 	--特效38 
	19, 	--特效39 Bright yellow mushroom cloud
	14, 	--特效40
	17, 	--特效41
	19, 	--特效42
	14, 	--特效43
	21, 	--特效44
	16, 	--特效45
	13, 	--特效46
	18, 	--特效47
	14, 	--特效48
	17, 	--特效49
	17, 	--特效50
	16, 	--特效51
	7, 		--特效52 Tiny mushroom cloud
	12, 	--特效53 Yellow dragon rising(badly drawn)
	40, 	--特效54 Beige ghost like smoke
	16, 	--特效55
	9, 		--特效56
	15, 	--特效57
	15, 	--特效58 Classic explotion flame
	31, 	--特效59
	38, 	--特效60 Swords falling
	24, 	--特效61
	26, 	--特效62 Swords falling(fewer and faded)
	24, 	--特效63 北冥
	20, 	--特效64 化功
	12, 	--特效65
	17, 	--特效66
	14, 	--特效67
	14, 	--特效68
	10, 	--特效69
	10, 	--特效70
	18, 	--特效71 吸星
	31, 	--特效72
	12, 	--特效73
	7, 		--特效74
	6, 		--特效75
	7, 		--特效76
	28, 	--特效77
	16, 	--特效78
	7, 		--特效79
	16, 	--特效80
	20, 	--特效81
	15, 	--特效82
	13, 	--特效83
	15, 	--特效84
	11, 	--特效85
	11, 	--特效86
	11, 	--特效87
	20, 	--特效88
	20, 	--特效89
	20, 	--特效90
	17, 	--特效91
	17, 	--特效92
	17, 	--特效93
	9, 		--特效94
	8, 		--特效95
	8, 		--特效96
	17, 	--特效97
	10, 	--特效98
	11, 	--特效99
	8, 		--特效100
	29, 	--特效101
	6, 		--特效102
	13, 	--特效103
	31, 	--特效104
	14, 	--特效105
	4, 		--特效106
	13, 	--特效107 two blades
	13, 	--特效108
	15,		--特效109
	24; 	--特效110 打狗
	20; 	--特效111 降龙
	12; 	--特效112 
	16; 	--特效113 blue serpent
	18; 	--特效114 yellow tornado
	17; 	--特效115 red lights flailing
	14; 	--特效116 ice breaking
	12; 	--特效117 dark serpent
	19; 	--特效118 Old school explotion
	16; 	--特效119 Yellow cross explotion
	12; 	--特效120 Red light rising
	14; 	--特效121 Light green explotion
	14; 	--特效122 Fire arrow
	6; 		--特效123 Devil face
	8; 		--特效124 Fire explosion
	24; 	--特效125 Light slashing
	19; 	--特效126 Yellow cosmic explosion
	16; 	--特效127 Small burning explotion
	14; 	--特效128 Heart shaped explotion
	20; 	--特效129 Violet halo
	18;		--特效130 五轮
	16;		--特效131 lightning
	13;		--特效132 bright light swords surrounding
	25;		--特效133 Flame ring
	20;		--特效134 连珠腐尸毒
	13;		--特效135 blizzard shield
	22;		--特效136 blue spiral
	35;		--特效137 Pink saber
	11;		--特效138 进阶太岳
	17;		--特效139 进阶云雾
	25;		--特效140 进阶万岳
	23;		--特效141 进阶万花
	16;		--特效142 进阶泰山
	11;		--特效143 thin orange flame
	13;		--特效144 thin blue flame
	7;		--特效145 口才
	14;		--特效146 破军
	27;		--特效147 yellow halo
	16;		--特效148 poison
	14;		--特效149 倾国
	44;		--特效150 nuclear explosion
	12;		--特效151 集中
	16;		--特效152 ice entangle
	14;		--特效153 梯云纵
	18;		--特效154 fire bird
	16;     --特效155 地裂(155-174贴图偏下)
	9;     --特效156 冰火
	20;     --特效157 flower Cross
	19;    --特效158 Demon face light
	14;    --特效159 Purple light
	12;    --特效160 Lotus tears
	17;    --特效161 刀光剑影
	12;    --特效162 Rising flame Dragon
	12;    --特效163 质地成钢
	21;    --特效164 豺华
	12;    --特效165 暴风
	12;    --特效166 紫色风暴
	27;    --特效167 风雷
	15;    --特效168 举火烧天
	15;    --特效169 冰风
	11;    --特效170 焚烟
	19;    --特效171 爆炸
	10;    --特效172 血色雷
	24;    --特效173 火剑下落
	40;    --特效174 万剑诀
	26;    --特效175 凤凰涅槃
	12;    --特效176 猛虎
	17;    --特效177 双龙 
	21;    --特效178 蝴蝶
	19;    --特效179 蓄力鬼斩（偏移180,50）
	20;    --特效180 激流(大特效)
	15;    --特效181 大凤凰于飞(大特效)	
	17;    --特效182 冰环（大特效，偏移237,168）
	17;    --特效183 巨灵神（大特效，偏移237,168）
	14;    --特效184 爆炸念珠（偏移180,50）
	[0] = 9	--特效0	Tiny heart(when heal)
	}
	
	--装备对威力的加成
    CC.ExtraOffense = {
			{52, 75, 100},		--鳄嘴剪+大剪刀
			{45, 67, 100},		--冷月宝刀+胡刀
			{202, 67, 100},		--闯王军刀+胡刀
			{37, 41, 100},		--倚天剑+灭剑
			{49, 80, 200},		--打狗棒+打狗棒法
			{44, 63, 200},		--血刀+血刀
			{40, 40, 200},		--金蛇剑+金蛇
			{36, 45, 100},		--玄铁剑+玄铁
			{276, 155, 3000},	--火枪+火枪
			{51, 78, 200},		--金龙鞭+黄沙万里鞭法
			{50, 86, 100},		--伏魔杵+伏魔杖法
			{241, 39, 100},		--君子剑+全真剑法
			{242, 42, 100},		--淑女剑+玉女剑法
			{244, 81, 200},		--西毒蛇杖+灵蛇杖法
			{55, 110, 100},		--神山剑+神山剑法
			{56, 111, 100},		--玄铁菜刀+西瓜刀法
			{57, 112, 100},		--犽月+犽月流空
			{243, 77, 200},		--金刀黑剑+阴阳倒乱刃
			{39, 44, 100},		--白龙剑+苗家剑法
			{236, 46, 100}		--真武剑+太极剑法
			}

CC.JXFG = {}
CC.JXFG[1] = {'轻影飞狐','辽东刀王'}
CC.JXFG[2] = {'海棠药王','神木毒师'}
CC.JXFG[3] = {'阳炎金佛','暗炎魔凰'}
CC.JXFG[4] = {'千金养生','黑刃断魂'}            

CC.JXFG[28] = {'夺命狂医','生死一指'}
CC.JXFG[37] = {'审判天神','影流之主'}
CC.JXFG[54] = {'毒蛟戏画','碧血蝰剑'}

CC.JXFG[72] = {'灭剑血龙','绝刀哀号'}
CC.JXFG[78] = {'邪王魔瞳','洞察白眼'}

CC.JXFG[90] = {'六库仙贼','役兽灵使'}


CC.JXFG[517] = {'严流秘剑','六重燕返'}
CC.JXFG[589] = {'神佑室女','大雪无寒'}



    CC.NewPersonName=CONFIG.PlayName;                --新游戏的数据
	
    CC.NewGameSceneID = 70
	CC.NewGameSceneX = 16
	CC.NewGameSceneY = 31
	CC.NewGameEvent = 691
	CC.NewPersonPicM = 2515
	CC.NewPersonPicF = 5015

	CC.PersonAttribMax = {}
	CC.PersonAttribMax["经验"] = 60000
	CC.PersonAttribMax["物品修炼点数"] = 30000
	CC.PersonAttribMax["修炼点数"] = 30000
	CC.PersonAttribMax["生命最大值"] = 999
	CC.PersonAttribMax["受伤程度"] = 100
	CC.PersonAttribMax["中毒程度"] = 100
	CC.PersonAttribMax["内力最大值"] = 9999
	CC.PersonAttribMax["体力"] = 100
	CC.PersonAttribMax["攻击力"] = 520
	CC.PersonAttribMax["防御力"] = 520
	CC.PersonAttribMax["轻功"] = 520
	CC.PersonAttribMax["医疗能力"] = 200
	CC.PersonAttribMax["用毒能力"] = 200
	CC.PersonAttribMax["解毒能力"] = 200
	CC.PersonAttribMax["抗毒能力"] = 200
	CC.PersonAttribMax["拳掌功夫"] = 320
	CC.PersonAttribMax["指法技巧"] = 320
	CC.PersonAttribMax["御剑能力"] = 320
	CC.PersonAttribMax["耍刀技巧"] = 320
	CC.PersonAttribMax["特殊兵器"] = 320
	CC.PersonAttribMax["暗器技巧"] = 320
	CC.PersonAttribMax["武学常识"] = 200
	CC.PersonAttribMax["品德"] = 120
	CC.PersonAttribMax["资质"] = 100
	CC.PersonAttribMax["攻击带毒"] = 340

    CC.WarDataSize=186;         --战斗数据大小  war.sta数据结构
    CC.WarData_S={};        --战斗数据结构
    CC.WarData_S["代号"]={0,0,2};
    CC.WarData_S["名称"]={2,2,10};
    CC.WarData_S["地图"]={12,0,2};
    CC.WarData_S["经验"]={14,0,2};
    CC.WarData_S["音乐"]={16,0,2};
    for i=1,6 do
        CC.WarData_S["手动选择参战人"  .. i]={18+(i-1)*2,0,2};
        CC.WarData_S["自动选择参战人"  .. i]={30+(i-1)*2,0,2};
        CC.WarData_S["我方X"  .. i]={42+(i-1)*2,0,2};
        CC.WarData_S["我方Y"  .. i]={54+(i-1)*2,0,2};
    end
    for i=1,20 do
        CC.WarData_S["敌人"  .. i]={66+(i-1)*2,0,2};
        CC.WarData_S["敌方X"  .. i]={106+(i-1)*2,0,2};
        CC.WarData_S["敌方Y"  .. i]={146+(i-1)*2,0,2};
    end

    CC.WarWidth=64;        --战斗地图大小
    CC.WarHeight=64;

	--显示主地图和场景地图坐标
	--如果显示坐标，则会增加cpu占用。机器速度慢的话可能会卡。这个在调试时有用。
	CC.ShowXY=1      --0 不显示 1 显示


	--以下为控制显示方式的参数
	CC.MenuBorderPixel=5  -- 菜单四周边框留的像素数，也用于绘制字符串的box四周留得像素

	CC.DefaultFont=math.modf(math.min(CC.ScreenW,CC.ScreenH) / 320 * 14);
	CC.SmallFont = CC.DefaultFont*3/4;
	CC.FontBIG = math.modf(CC.DefaultFont*1.45)
	CC.FontBig = math.modf(CC.DefaultFont*1.3)
	CC.Fontbig = math.modf(CC.DefaultFont*1.15)
	CC.Fontsmall = math.modf(CC.DefaultFont*0.85)
	CC.FontSmall = math.modf(CC.DefaultFont*0.7)
	CC.FontSmall2 = math.modf(CC.DefaultFont*0.65)
	CC.FontSmall3 = math.modf(CC.DefaultFont*0.635)
	CC.FontSmall4 = math.modf(CC.DefaultFont*0.9)
	CC.FontSmall5 = math.modf(CC.DefaultFont*0.92)
	CC.FontSMALL = math.modf(CC.DefaultFont*0.55)
	CC.RowPixel = math.modf(math.min(CC.ScreenW, CC.ScreenH) / 100)

	--CC.StartMenuY= 160       --开始菜单Y坐标
	CC.StartMenuFontSize=CC.DefaultFont  --开始菜单字号

	--CC.NewGameY= 160         --新游戏属性显示Y坐标
	CC.NewGameFontSize =CC.DefaultFont   --新游戏属性选择字号


	CC.MainMenuX=10;         --主菜单开始坐标
	CC.MainMenuY=10;

	CC.GameOverX=90;
	CC.GameOverY=65;

    CC.PersonStateRowPixel= 5;    --显示人物状态行间距像素
    
    --物品显示定义
    CC.ThingFontSize = CC.Fontsmall;
		
	--CC.ThingPicWidth=math.modf(100*CONFIG.Zoom/100);    --物品图片宽高
	CC.ThingPicWidth=100	--物品图片固定尺寸
	CC.ThingPicHeight=CC.ThingPicWidth;

	local n = math.modf(CC.ScreenW/CC.ThingPicWidth-2);			--一行显示几个物品
	if n < 10 then	
		CC.MenuThingXnum = 9;				
	else
		CC.MenuThingXnum = 9
	end
		
	local m = math.modf(CC.ScreenH/CC.ThingPicHeight-2);		--物品显示几列
	if m < 5 then	
		CC.MenuThingYnum = 5;
	else
		CC.MenuThingYnum = 5;
	end

	CC.ThingGapOut=4;		--物品图像显示四周留白
	CC.ThingGapIn=4;		--物品图像显示中间间隔	

    CC.StartMenuY=CC.ScreenH-3*(CC.StartMenuFontSize+CC.RowPixel)-20;
	CC.NewGameY=CC.ScreenH-4*(CC.NewGameFontSize+CC.RowPixel)-10;

	--子菜单的开始坐标
	CC.MainSubMenuX=CC.MainMenuX+2*CC.MenuBorderPixel+2*CC.DefaultFont+5;       --主菜单为两个汉字
	CC.MainSubMenuY=CC.MainMenuY;

	--二级子菜单开始坐标
	CC.MainSubMenuX2=CC.MainSubMenuX+2*CC.MenuBorderPixel+4*CC.DefaultFont+5;   --子菜单为四个字符

	CC.SingleLineHeight=CC.DefaultFont+2*CC.MenuBorderPixel+5;  --带框的单行字符高

	CC.StartThingPic = 0
	
	CC.AutoMoveEvent = {[0]=0};		--鼠标操作时是否触发事件， 第一个位置0未触发， 1触发， 2触发并且能够走到面前， 第二和第三个位置为XY坐标
	CC.MMapAdress = {};				--大地图地址

	CC.DYRW = -1
    CC.DYRW2 = -1
	
	DSJH={5,64,140,455,57,27}
	
	LMSJ = {"少商剑", "商阳剑", "中冲剑", "关冲剑", "少冲剑", "少泽剑"}
	XL18 = {"亢龙有悔", "飞龙在天","潜龙勿用","神龙摆尾","见龙在田", "双龙出水"}
	XL18JY = {"极意--亢龙·鸿渐於陆", "极意--飞龙·或跃在渊", "极意--潜龙·密雨不云", "极意--神龙·震惊百里", "极意--见龙·利涉大川", "极意--双龙·突如其来", "极意--六龙·履霜冰至", "极意--龙战·损则有孚"}
	TFSSJ = {"·『天道惊雷憾』", "·『指点墨山河』", "·『一剑镇神洲』", "·『羽葬煌炎斩』", "·『千机龙绝闪』", "·『斗焰罡霸劲』", "·『仁者无敌』", "·『八门聚万象』", "·『天人五衰』"}
	ZJTF = {"盖世神拳", "灵犀一指", "剑神一笑", "傲世狂刀", "奇门无双", "绝世天罡", "仁者无敌", "回天圣手", "欲天摩罗"}
	TFE = {"拳", "指", "剑", "刀", "特", "罡", "仁", "医", "毒"}
	--实战经验
	WARSZJY = {3, 2, 5, 2, 40, 15, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 2,
	10, 5, 4, 4, 5, 4, 2, 2, 20, 40, 2, 3, 3, 3, 3, 3, 3, 5, 3, 4, 4,
	8, 8, 4, 4, 4, 4, 2, 5, 3, 4, 3, 30, 4, 2, 3, 3, 4, 4, 15, 5, 5,
	15, 3, 15, 3, 15, 10, 2, 8, 3, 15, 7, 8, 3, 3, 3, 4, 2, 2, 2, 2,
	4, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 7, 7, 4, 4, 2,
	2, 12, 2, 2, 2, 3, 3, 3, 3, 3, 7, 7, 50, 3, 3, 5, 6, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 20, 3, 3, 3, 3, 3, 3, 3, 2, 3, 2, 35, 2, 2, 2,
	2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 4, 3, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 3, 7, 7, 4, 3, 5, 5, 3}
	--称号
	RWWH = {}
	RWWH[1] = "雪山飞狐"
	RWWH[2] = "灵枢素问"
	RWWH[3] = "金面佛"
	RWWH[4] = "雁过拨毛"
	RWWH[5] = "太极宗师"
	RWWH[6] = "灭绝师太"
	RWWH[7] = "铁琴先生"	--何太冲
	RWWH[8] = "崆峒掌门"	--唐文亮
	RWWH[9] = "九阳明尊"
	RWWH[10] = "光明右使"
	RWWH[11] = "光明左使"
	RWWH[12] = "白眉鹰王"
	RWWH[13] = "金毛狮王"
	RWWH[14] = "青翼蝠王"
	RWWH[15] = "紫衫龙王"
	RWWH[16] = "蝶谷医仙"
	RWWH[17] = "蝶谷毒仙"
	RWWH[18] = "混元霹雳手"
	RWWH[19] = "君子剑"
	RWWH[20] = "潇湘夜雨"
	RWWH[21] = "恒山掌门"
	RWWH[22] = "嵩山掌门"
	RWWH[23] = "泰山掌门"
	RWWH[24] = "青城掌门"
	RWWH[25] = "五毒教主"
	RWWH[26] = "日月魔帝"
	RWWH[27] = "风云再起"
	RWWH[28] = "杀人名医"
	RWWH[29] = "万里独行"
	RWWH[30] = "傻小子"
	RWWH[31] = "梅庄四友"
	RWWH[32] = "梅庄四友"
	RWWH[33] = "梅庄四友"
	RWWH[34] = "梅庄四友"
	RWWH[35] = "九剑传人"
	RWWH["35"] = "剑魔再临"
	RWWH[36] = "辟邪剑客"
	RWWH[37] = "真名神照"
	RWWH[38] = "狗杂种"
	RWWH["38"] = "混沦太玄"
	RWWH["38-2"] = "红心之王"
	RWWH[39] = "侠客岛主"
	RWWH[40] = "侠客岛主"
	RWWH[41] = "赏善使者"
	RWWH[42] = "罚恶使者"
	RWWH[43] = "雪山掌门"
	RWWH[44] = "凶神恶煞"
	RWWH[45] = "阎王敌"
	RWWH[46] = "星宿老怪"
	RWWH[47] = "曼珠沙华"
	RWWH[48] = "冰毒怪客"
	RWWH[49] = "小和尚"
	RWWH["49"] = "逍遥掌门"
	RWWH[50] = "狂龙天征"
	RWWH[51] = "姑苏慕容"
	RWWH[52] = "中平神枪"
	RWWH[53] = "六脉真传"
	RWWH[54] = "碧血长风"
	RWWH[55] = "侠之大者"
	RWWH[56] = "兰质蕙心"
	RWWH[57] = "桃花岛主"
	RWWH[58] = "西狂"
	RWWH[59] = "冷若天仙"
	RWWH[60] = "西毒"
	RWWH[62] = "元蒙帝师"
	RWWH[63] = "青箫落瑛"
	RWWH[64] = "顽童武痴"
	RWWH[65] = "南僧"
	RWWH[66] = "波斯圣女"
	RWWH[67] = "铁掌帮主"
	RWWH[68] = "长春子"
	RWWH[69] = "北丐"
	RWWH[71] = "神龙教主"
	RWWH[72] = "天龙掌门"
	RWWH[73] = "日月圣姑"
	RWWH[74] = "翠羽黄衫"
 	RWWH[75] = "天池红花"
	RWWH[76] = "琅嬛仙子"
	RWWH[77] = "秀外慧中"
	RWWH[78] = "铁尸魔煞"
	RWWH[79] = "慧中灵剑"
	RWWH[80] = "火手判官"
	RWWH[81] = "雪岭双姝"
	RWWH[82] = "玉面孟尝"
	RWWH[83] = "五毒教主"
	RWWH[84] = "吾乃蛮夷"
	RWWH[85] = "老谋深算"
	RWWH[86] = "倾国倾城"
	RWWH[87] = "媚眼如丝"
	RWWH[88] = "酒神"
	RWWH[89] = "食神"
	RWWH[90] = "毓秀灵姝"	
	RWWH[91] = "青青子衿"
	RWWH[92] = "暗香疏影"
	RWWH[94] = "仁义刀"
	RWWH[95] = "柔云剑"
	RWWH[96] = "冷月剑"
	RWWH[97] = "血刀老祖"
	RWWH[98] = "恶贯满盈"
	RWWH[101] = "笔砚生"
	RWWH[102] = "天龙禅师"
	RWWH[103] = "大轮明王"
	RWWH[104] = "云舞霓裳"
	RWWH[106] = "金刀无敌"
	RWWH[112] = "震天魔狼"
	RWWH[113] = "参合潜龙"
	RWWH[114] = "达摩再世"
	RWWH[115] = "聪辩先生"
	RWWH[116] = "风月无间"
	RWWH[117] = "不老长春"
	RWWH[118] = "秋水无尘"
	RWWH[129] = "中神通"
	RWWH[131] = "妙手书生"
	RWWH[138] = "一指震江南"	--瓦尔拉齐
	RWWH[140] = "剑术通神"		--风清扬
	RWWH[142] = "狂风快剑"
	RWWH[153] = "暗器之王"
	RWWH[154] = "鸳鸯刀"
	RWWH[157] = "湘西尸王"
	RWWH[158] = "波斯大贾"
	RWWH[159] = "瑜伽鬼王"
	RWWH[161] = "赤练仙子"
	RWWH[164] = "摩天居士"
	RWWH[171] = "武当儒侠"
	RWWH[185] = "神剑仙猿"
	RWWH[553] = "真田一之兵"
	RWWH[589] = "铃剑侠女"		--水笙
	RWWH[590] = "心秀天铃"		--李文秀
	RWWH[592] = "无我无剑"		--独孤求败
	RWWH[594] = "铁索横江"		--戚长发
	RWWH[601] = "天魁地宝"		--韦小宝
	RWWH[603] = "满洲勇士"		--鳌拜
	RWWH[604] = "越女剑仙"		--阿青
	RWWH[605] = "姑射仙姿"		--林朝英
	RWWH[606] = "西域战神"		--阿凡提
	RWWH[607] = "乱世浮萍"		--焦宛儿
	RWWH[616] = "绝情谷主"		--公孙止
	RWWH[617] = "铁掌莲花"		--裘千尺
	RWWH[626] = "小东邪"		--郭襄
	RWWH[627] = "上帝之鞭"		--蒙哥
	RWWH[628] = "雕兄"			--神雕
	RWWH[629] = "长平公主"		--阿九
	RWWH[631] = "谁与争锋"		--周芷若
	RWWH[642] = "精心打磨"		--四大山

	--天赋
	RWTFLB = {}
	RWTFLB[1] = "魂系一刀"
	RWTFLB[4] = "跌打医生"
	RWTFLB[9] = "运转乾坤"
	RWTFLB[35] = "灵奇洒脱"
	RWTFLB[37] = "赤心连城"
	RWTFLB[38] = "名相皆无"	
	RWTFLB[48] = "心无所住"
	RWTFLB[49] = "福缘深厚"
	RWTFLB[50] = "奋英雄怒"
	RWTFLB[51] = "离合参商"
	RWTFLB[53] = "磊落仁心"
	RWTFLB[54] = "志垂日月"
	RWTFLB[55] = "大器晚成"
	RWTFLB[56] = "奇门遁甲"
	RWTFLB[58] = "逆流勇进"
	RWTFLB[59] = "一片冰心"
	RWTFLB[60] = "倒行逆施"
	RWTFLB[63] = "外和内刚"
	RWTFLB[64] = "返璞归真"
	RWTFLB[73] = "琴铮盈盈"
	RWTFLB[74] = "巾帼之才"
	RWTFLB[76] = "武中无相"
	RWTFLB[77] = "珠联璧合"
	RWTFLB[80] = "勇猛精进"
	RWTFLB[83] = "纤纤铁手"
	RWTFLB[92] = "指挥若定"
	RWTFLB[97] = "借刀杀人"
	RWTFLB[102] = "双树枯荣"
	RWTFLB[112] = "天威奋烈"
	RWTFLB[116] = "北冥极渊"
	RWTFLB[117] = "转瞬红颜"
	RWTFLB[118] = "无相转身"
	RWTFLB[153] = "千臂如来"
	RWTFLB[553] = "赤胆忠魂"
	RWTFLB[589] = "似水柔情"	--水笙
	RWTFLB[592] = "料敌先机"	--独孤求败
	RWTFLB[601] = "机敏无双"	--韦小宝
	RWTFLB[605] = "惊才绝艳"	--林朝英
	RWTFLB[606] = "踏沙无痕"	--阿凡提
	RWTFLB[631] = "秀若芝兰"	--周芷若
	RWTFLB[642] = "亿万小时"	--四大山
--门派相关
CC.MP = {
	{"丐帮", nil, 1, "乞儿"},
	{"武当派", nil, 1, "侠义"},
	{"少林寺", nil, 1, "佛性"},
	{"密宗", nil, 1, "蛮夷"},	
    {"明教", nil, 1, "焚影"}, --沼跃鱼：开放明教
	{"五岳剑派", nil, 1, "剑气"},--沼跃鱼：开放五岳剑派
	{"白驼山", nil, 1, "奇毒"}, --武骧金星：开放白驼山
	{"桃花岛", nil, 1, "术理"}, --武骧金星：开放桃花岛
}

CC.MPAttrib = { --1攻2防3轻，4医5毒6解7暗，8命9内，10 11 12 13,14五系
	[0] = {0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0,0},
	{1.1, 1, 0.95, 0, 0, 0, 0, 1.1, 0.9, 0, 0, 0, 0,0}, --丐帮
	{1.05, 1.05, 1.05, 0, 0, 0, 0, 1.1, 1, 0, 0, 0, 0,0}, --武当
	{1, 1.1, 0.9, 0, 0, 0, 0, 1, 1.05, 0, 0, 0, 0,0}, --少林
	{1.2, 0.9, 1, 0, 0, 0, 0, 0.95, 1.15, 0, 0, 0, 0,0}, --血刀
	{0.95, 1.2, 1, 50, 0, 0, 0, 1.1, 1.2, 0, 0, 0, 0,0}, --明教
	{1.2, 0.9, 1.1, 0, 0, 0, 0, 1.05, 1.2, 0, 0, 0, 0,0}, --五岳剑派
	{1, 0.9, 1, 0, 100, 100, 0, 1.05, 1, 0, 0, 0, 0,0}, --白驼
	{0.9, 1, 1.3, 0, 0, 0, 0, 1, 1.1, 0, 0, 0, 0,0}, --桃花岛, --桃花岛
}

CC.MPAttrib_none = {0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0}

CC.MPINFO = {
	"天下第一大帮，凡是叫花子皆属丐帮，除强济弱，重诺守信。嫡传武学打狗棒法千变万化，降龙十八掌刚猛无双。帮中弟子武功博杂不一，以肩负的布袋数量多寡定其辈分高低，依照衣着分为污衣和净衣两派。",
	"一代奇人张三丰在武当山上开宗立派，讲究以静制动，以柔克刚，以短胜长，以慢击快、以意运气，以气运身。武当武学进展缓慢，属万日有成。重于防守，急功进躁乃大忌，根据主运功法分为纯阳宫和太极门两派。",
	"俗话说天下武功出少林，百年基业并非浪得虚名。自达摩祖师以降，历代高僧频出，七十二项绝技名动江湖。武学上攻守兼备，有降龙伏虎之威。传闻寺内有隐藏的绝世高手，根据主运功法分为金刚门、达摩院和戒律堂三派。",
	"西域密宗，地处边疆，担任各国护国神教，因西域资源匮乏，故座下修炼多以恶劣环境自行磨砺，同时对中原门派敌视甚深，其主运功法则将门派分为了金轮寺、印度教和血刀门。",
	"当世二大魔教之一，相传传自西域，光明顶为明教总坛，易守难攻，教内弟子皆舍身忘死，自前任教主阳顶天失踪后，明教内部争权夺利，且根据主运功法也分有白莲教与阿萨辛两个派系。",
	"以五岳为基础，以日月魔教为仇敌所建立的门派。派中多以练剑为主，但各自为政，被日月魔教压制。现嵩山派正努力整合各派，反攻黑木崖，门中根据主运功法也有剑宗和气宗的区别。",
	"五绝之一西毒欧阳锋所创立的门派，位于西域双旗镇北。门人擅长驯养毒蛇，能驱蛇为阵，武功阴险毒辣。独门绝学逆练神功能使经脉倒逆，怪招迭出，疯癫之余却令人心惊。",
	"东海黄药师所创，黄药师精通天文地理，奇门遁甲，座下弟子皆天资不凡，可惜弟子稀少，自当年叛徒黑风双煞离开，大概已多年未曾再收入弟子。",	
	}

CC.MPINFO2 = {
	"攻击加10％，轻功减5%，生命上限加10％，内力上限减10％",
	"攻击防御轻功加5%，生命上限加10％",
	"防御加10％，轻功减10％，内力上限加5%",
	"攻击加20％，防御减10％，生命上限减5％，内力上限加15％",	
	"攻击减5%，防御加20％，医疗能力加50，生命上限加10％，内力上限加20％",
	"攻击加20％，防御减10％，轻功加10％，生命上限加5％，内力上限加20％",
	"防御减10％，用毒解毒能力加100,  生命上限加5%",
	"攻击减10％，轻功加30％，内力上限加10％",
}

CC.MPDJ = {
	{"五袋弟子", "八袋弟子", "长老", "帮主"},
	{"入门弟子", "普通弟子", "高级弟子", "亲传弟子", "掌门"},
	{"入门弟子", "普通弟子", "高级弟子", "方丈"},
	{"喇嘛", "僧正", "法王"},
	{"普通弟子", "核心弟子", "护教法王", "光明使者", "教主"},--明教
	{"普通弟子", "亲传弟子", "长老", "掌门", "盟主"},--五岳剑派
	{"弟子", "少主", "庄主"},
    {"记名弟子", "入室弟子", "岛主"},
}

CC.PSKILL = {
	{"妙手", "百衲", "打狗棍阵"},
	{"乾坤", "八卦", "无极"},
	{"金钟罩", "铁布衫", "袈裟伏魔"},
	{"铁臂", "钢躯", "神威"},	
	{"焚躯", "天佑", "同袍"},--武骧金星：暂定
    {"剑气", "浩然", "剑意"},--武骧金星：暂定
	{"玄蛇", "玉蟾", "逆运"},
	{"落英", "通晓", "怒涛"},
}

CC.ASKILL = {
	{"锁喉擒拿手", "莲花落", "醉八仙"},
	{"以柔克刚", "以静制动", "混元无极"},
	{"点化", "金刚不坏体", "佛门狮子吼"},
	{"金刚乘", "无想转生"},	
	{"以身殉教", "光明裁决", "五行旗"},--武骧金星：暂定
    {"剑气纵横", "冰封天地"},--武骧金星：暂定
	{"集毒", "蟾息"},
	{"九花玉露", "碧海幻境"},	
}

CC.SKILLNAME = {
	{"妙手", "百衲", "打狗棍阵", "锁喉擒拿手", "莲花落", "醉八仙"},
	{"乾坤", "八卦", "无极", "以柔克刚", "以静制动", "混元无极"},
	{"金钟罩", "铁布衫", "袈裟伏魔", "点化", "金刚不坏体", "佛门狮子吼"},
	{"铁臂", "钢躯", "神威", "金刚乘", "无想转生"},
    {"焚躯", "天佑", "同袍", "以身殉教", "光明裁决", "五行旗"},
	{"剑宗", "浩然", "剑意", "剑气纵横", "冰封天地"},	
	{"玄蛇", "毒物", "逆运", "集毒", "蟾息"},
	{"落英", "通晓", "遁甲", "九花玉露", "碧海幻境"},
}

CC.MPMENU = {"门派介绍", "传授技能"}

CC.MPSUBMENU = {

}

CC.SKILLINFO = {
	{
	"效果：攻击时高几率获取金钱*条件：被动技能",
	"效果：装备防具效果双倍*条件：被动技能",
	"效果：场上会丐帮技能的己方*      人物相互分担伤害*条件：被动技能",
	"效果：自身和周围一格内敌人停止集气*      五十时序，免疫杀气*消耗：体力15点",
	"效果：自身和周围一格内己方内伤清零*消耗：体力30点",
	"效果：自身八次行动内攻击和防御加倍，*      免疫杀气，内力消耗加倍*条件：包里有酒*消耗：体力15点",
	},
	{
	"效果：攻击时伤害减低10%，被攻击*      时伤害减低15%*条件：被动技能",
	"效果：被攻击时存储伤害值，下次*      攻击时追加伤害，上限与门*      派等级有关*条件：被动技能",
	"效果：被攻击时如果被杀气则下次攻*      击附带等同的杀气值*条件：被动技能，门派等级2以上",
	"效果：自身怒气清零，目标敌人怒气*      减半且一定时序内集气速减半*消耗：体力25点",
	"效果：立刻进入防御状态无法行动，*      免疫杀气，一定时序后集气全*      满，攻击时把自身的异常状态*      加诸于敌人身上，自身状态全*      清，攻击效果双倍*消耗：体力20点内力500点",
	"效果：攻击和集气速度增加40%，*      持续4个回合，且八卦无极上升500点*      消耗：内力1000点",
	},		
	{
	"效果：被攻击时几率进入防御状态*条件：被动技能",
	"效果：防御状态下气防值增加*条件：被动技能",
	"效果：品德越高攻击效果越高*条件：被动技能",
	"效果：低几率使任意目标敌人退出战*      场，几率与自身品德有关*条件：品德50以上*消耗：体力25点",
	"效果：一定时序内以内力代替伤害，*      停止集气*条件：保持内力1000点以上*消耗：体力20点内力200点",
	"效果：全体敌人如果内力小于自身则集气*      槽后退，效果与现有内力成正比*条件：体力3000点以上*消耗：体力30点与现有内力值的一半",
	},			
	{
	"效果：攻击额外增加伤害*暴击、蓄力攻击伤害增加*效果随等级提高增加*条件：被动技能",
	"效果：减少受到的伤害*被攻击减少内伤*效果随等级提高增加*条件：被动技能",
	"效果：蓄力必成功*暴击后大幅杀集气*效果与内力值与武功消耗有关*条件：被动技能，僧正以上发动效果",
	"效果：怒气持续爆发*条件：保持生命为生命最大值的一半以上*消耗：体力15点，每时序减5点血*备注：爆发状态中回血武功失效",
	"效果：按现有生命与最大生命值的百分*      比值与任意敌人交换血量；一场*      战斗限一次*条件：生命超过生命最大值的一半*消耗：体力25点",
	},			
    {
	--"效果：暂定", 武骧金星：取消暗器回收
	"效果：被攻击时机率使敌人减少生命*并造成灼烧和内伤*效果随等级提高与光明裁决而增加*条件：被动技能",
	"效果：攻击效果随四系系数增加而提高*防御效果随现有内力变化而变化*两名以上明教弟子可组成圣火阵*条件：被动技能",
	"效果：己方有人退场则恢复内力与生命*自身退场对敌人造成不良状态*条件：被动技能，弟子以上发动效果",
	"效果：暴怒时以全身内力攻击敌人*使用后自身奄奄一息 *消耗：体力50点",
	"效果：标定一个敌人为异教徒*己方攻击时有伤害加成与生命收益*全局可标定三次*消耗：体力25点内力500点",
	"效果：召唤五行旗众对敌人进行攻击*消耗：体力25点内力500点",
	},
    {
	"效果：使用剑法伤害增加*攻击后恢复集气*效果随等级提高增加*条件：被动技能",
	"效果：被连击时连击伤害降低*效果随等级提高增加*条件：被动技能",
	"效果：不需学满也能使用五岳剑法*可以同时触发*条件：被动技能，核心弟子以上发动效果",
	"效果：本次攻击必然附着内力攻击，且无视对方防御*      *消耗：体力30点内力1000点",
	"效果：本次攻击必然全屏攻击* 并且造成所有敌方寒冰*消耗：体力25点内力1500点",
	},
	{
	"效果：攻击时几率无视毒抗上毒*条件：被动技能",
	"效果：根据门派等级时序增加怒气*条件：被动技能",
	"效果：受到攻击时几率不被封穴*条件：被动技能",
	"效果：使用后己方全体中毒清零，*      下次攻击额外增加伤害*消耗：体力30点内力300点",
	"效果：一定几率周围四格敌人怒气值清零*      且中毒程度增加*消耗：体力20点",
	},
	{
	"效果：发动桃花绝技效果可同时触发，不需学全*增加集气速度*效果随等级提高与碧海潮声曲增加*条件：被动技能",
	"效果：修炼武功效果增加*效果随等级提高增加*可与人物天赋叠加*条件：被动技能",
	"效果：几率发动【奇门遁甲】*闪避敌人攻击并瞬移*被暗器攻击几率失效*条件：被动技能",
	"效果：使用后己方全体内伤清零*      下次被攻击额外减少伤害*消耗：体力30点内力300点",
	"效果：接下来受到的三次攻击中可*      完全闪避*消耗：体力20点",
	},	
}
	
	
	--天赋介绍
	TFJS = {}
 	ZL = {}
	FY = {}
	TSZL = {}
	BOSSZT = {}
	TFJS[1] = {"Ｌ魂系一刀",
	"Ｗ使用胡家刀法有50%几率触发极意，暴怒必触发",
	"Ｎ",
	"Ｌ雪山飞狐",
	"Ｗ集气速度提升8点",
	}
    FY[1] = 
	{"Ｇ福缘际遇",
	"Ｗ得到《雪山飞狐》后，找苗人凤可洗第二格武功,胡刀到极后若刀系系数超过100，则领悟觉醒技",
	}
	TSZL[1] = 
	{"Ｒ特色指令：飞狐",
	"Ｗ效果：无视障碍物移动，在战场上来去自如",	
	}
	BOSSZT[1]=
	{ 
	"Ｚ觉醒技：一刀",
	"Ｗ使用胡家刀法后几率发动最高奥义.一刀,必破气防，且根据气攻降低敌人防御，必然触发极意,被攻击触发冷月刀意，增加气防",
	"Ｎ",
	}
	TFJS[2] = {"Ｌ灵枢素问",
	"Ｗ医疗能力上限400",
	"Ｗ用毒能力上限500",
    "Ｎ",
	"Ｌ毒手药王",
	"Ｗ攻击时附带【七心海棠】，敌方全体中毒20点",
	"Ｗ攻击时即使杀死敌方，也不会中断连击",
	"Ｗ自身附近队友提升集气速度且时序几率回复生命与中毒",
	}
    FY[2] = 
	{"Ｇ福缘际遇",
	"Ｗ获得化功大法时在队，洗第二格武功和天赋内功，并觉醒；获得玄冥神掌时在队，洗第一格武功和天赋外功",
	}
	BOSSZT[2] = {
	"Ｚ神木七星毒王",
	"Ｗ攻击中毒敌人则伤害加深，被中毒敌人攻击则伤害减少；并回复生命，效果与敌人中毒程度有关，时序回血速度随周围中毒敌人数量及其中毒程度而增加",
	}
	TFJS[3] = {"Ｌ金面佛",
	"Ｗ攻击时高几率附带灼烧",
	"Ｗ行动后回复生命和内力",
	}
	BOSSZT[3] = {
	"Ｚ凤翼天翔",
	"Ｗ攻击时有几率让对方停运内功，本次行动如击退至少一名敌方，则可追加一次攻击，无视原有攻击范围，攻击8格以内的敌方，被攻击触发凤火剑意，增加气防",
	}
	TFJS[4] = {"Ｌ跌打医生",
	"Ｗ医疗能力上限300",
	"Ｗ用毒能力上限300",
	"Ｎ",
	"Ｌ雁过拔毛",
	"Ｗ击退敌方后可获得银两",
	"Ｗ让田归农的攻击中附加带毒",
	}
	BOSSZT[4] = {"Ｚ千金毒方与胡家毒刀",
	"Ｗ攻击后用千金方恢复全体生命,被攻击时对攻击者反弹毒性，并根据中毒化解内力；胡刀攻击独立触发归真极意效果，用毒能力附加伤害",
	}
	TFJS[72] = {"Ｌ天龙掌门",
	"Ｗ无视兵器值需求装备[闯王军刀]",
	"Ｗ装备[闯王军刀]，攻击时必定附加流血效果",
	}
	FY[72] = {
	"Ｇ福缘际遇",
	"Ｗ飞狐邪线杀苗人凤后，洗第一、二格武功",
	}
	BOSSZT[72] = {
	"Ｚ刀剑十杀",
	"Ｗ自带互博几率50%,胡刀苗剑攻击附加伤害,互博时依次使用胡刀苗剑攻击触发三连极意",
	}
	TFJS[37] = {"Ｌ赤心连城",
	"Ｗ使用连城剑法高连击",
	"Ｗ伤害小于200追加一次连击",
	"Ｗ修炼血刀大法无惩罚，不会降低生命上限",
	"Ｎ",
	"Ｌ真名神照",
	"Ｗ神照功复活效果强化，回复100%血量，并且立即行动，无需运功",
	"Ｗ可使用神照功攻击，神照功等级修炼至极，轻功+20",
	"Ｗ使用神照功攻击可以使出招式“无影神拳”提升850气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ连城诀雪山剧情，洗第二、三格武功"
	}
	TFJS[589] = {"Ｌ似水柔情",
	"Ｗ误伤队友时恢复其血量",
	"Ｎ",
	"Ｌ铃剑侠女",
	"Ｗ使用连城剑法高连击"
	}
	TFJS[594] = {"Ｌ铁索横江",
	"Ｗ【闭气离墙.起死回生】，战斗中可以复活一次",
	"Ｗ自带“铁索横江”加力、护体，600威力，可叠加（几率与天书数、实战相关）",
	"Ｗ基础连击率大幅度提高"
	}
	TFJS[52] = {"Ｌ中平神枪",
	"Ｗ使用中平枪法时，气攻+1500",
    "Ｎ",
    "Ｌ彼尸可餐",
    "Ｗ每击退一个敌人，回复350点生命值",
	}
	TFJS[94] = {"Ｌ仁义刀",
	"Ｗ "
	}
	TFJS[95] = {"Ｌ柔云剑",
	"Ｗ "
	}
	TFJS[96] = {"Ｌ冷月剑",
	"Ｗ "
	}
	TFJS[97] = {"Ｌ借刀杀人",
	"Ｗ将击退的敌人满血满状态复活为己方",
	"Ｎ",
	"Ｌ诡谲",
	"Ｗ初始集气位置900，且移动+3格",
	"Ｎ",
	"Ｌ觉醒技：血神傀儡",
	"Ｗ觉醒后己方傀儡会为自己分担部分伤害",
	"Ｎ",
	"Ｌ血刀老祖",
	"Ｗ基础暴击率大幅度提高"
	}
	TFJS[45] = {"Ｌ阎王敌",
	"Ｗ医疗上限500点",
	"Ｗ战斗中满血复活自己或者同伴一次"
	}
	TFJS[46] = {"Ｌ星宿老怪",
	"Ｗ "
	}
	TFJS[47] = {"Ｌ铁丑之主",
	"Ｗ与游坦之同时在场，游坦之攻击必定暴击",
	"Ｌ曼珠沙华",
	"Ｗ每击退一个敌方，自身气攻气防提高200点",
	"Ｎ",
	"Ｒ特色指令：禁药",
	"Ｗ使用禁药刺激神经，自身每时序损失1%最大血量",
	"Ｗ此状态下自身血量越低，伤害/集气越高，不消耗回合",
	"Ｇ福缘际遇",
	"Ｗ鹿鼎山可洗玄冥神掌天外并觉醒",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	}
	TFJS["47-1"] = {"Ｌ铁丑之主",
	"Ｗ与游坦之同时在场，游坦之攻击必定暴击",
	"Ｌ曼珠沙华",
	"Ｗ每击退一个敌方，自身气攻气防提高200点",
	"Ｎ",
	"Ｒ特色指令：禁药",
	"Ｗ使用禁药刺激神经，自身每时序损失1%最大血量",
	"Ｗ此状态下自身血量越低，伤害/集气越高，不消耗回合",
	"Ｇ福缘际遇",
	"Ｗ鹿鼎山可洗玄冥神掌天外并觉醒",
	"Ｎ",
	"Ｚ紧那罗",
	"Ｗ引爆战场上敌人不良状态，并吸收敌人的不良状态转化为生命",
	"Ｗ攻击时使用彼岸乐章对战场敌人造成各种不良效果",
	"Ｗ击退敌方时对剩下的敌人追加中毒并杀气",
	}
	TFJS[48] = {"Ｌ心无所住",
	"Ｗ能使用内功攻击，内功可修炼至极",
	"Ｎ",
	"Ｌ冰毒怪客",
	"Ｗ所有攻击带毒240点",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ鹿鼎山阿紫觉醒剧情中一起觉醒【包括敌对NPC】",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	}
	TFJS["48-1"] = {"Ｌ心无所住",
	"Ｗ能使用内功攻击，内功可修炼至极",
	"Ｎ",
	"Ｌ冰毒怪客",
	"Ｗ所有攻击带毒240点",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ鹿鼎山阿紫觉醒剧情中一起觉醒【包括敌对NPC】",
	"Ｎ",
	"Ｚ冰蚕天罗.摩呼洛迦",
	"Ｗ使用冰蚕神掌攻击可以几率使所有敌方陷入冰封状态",
	"Ｚ地龙玄冰玉",
	"Ｗ使用冰蚕神掌攻击几率触发大招，根据冰封与中毒情况追加伤害",
	}
	TFJS[49] = {"Ｌ福缘深厚",
	"Ｗ攻击时50%几率触发【福泽加护】，下回合集气+200",
	"Ｎ",
	"Ｌ逍遥掌门",
	"Ｗ擂鼓山剧情后，自带北冥真气护体",
	"Ｗ学会八荒六合功后，使用天山六阳掌/天山折梅手攻击可触发【生死符】",
	"Ｗ生死符追加1700气攻，对被生死符击中的敌人，可使用【催符】指令",
	"Ｗ面板上每多一个武功到极，天山折梅手威力+50",
	"Ｗ天山折梅手修炼到极，资质变为50",
	"Ｎ",
	"Ｒ特色指令：催符",
	"Ｗ催动敌人身上的生死符，使其附加封穴25时序",
	"Ｗ？？？？？？",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ擂鼓山支线剧情，洗第一、二格武功",
    "Ｗ灵鹫宫支线剧情，觉醒成为【夜叉】",
	"Ｗ灵鹫宫拿八荒时，第三格洗为八荒六合功",
	"Ｗ灵鹫宫拿折梅时，第五格洗为天山折梅手"
	}
	TFJS["49-1"] = {"Ｌ福缘深厚",
	"Ｗ攻击时50%几率触发【福泽加护】，下回合集气+200",
	"Ｎ",
	"Ｌ逍遥掌门",
	"Ｗ擂鼓山剧情后，自带北冥真气护体",
	"Ｗ学会八荒六合功后，使用天山六阳掌/天山折梅手攻击可叠加【生死符】",
	"Ｗ生死符追加1700气攻，对被生死符击中的敌人，可使用【催符】指令",
	"Ｗ面板上每多一个武功到极，天山折梅手威力+50",
	"Ｗ天山折梅手修炼到极，资质变为50",
	"Ｎ",
	"Ｒ特色指令：催符",
	"Ｗ催动敌人身上的生死符，使其附加封穴25时序",
	"Ｗ觉醒后生死符进化为【螺旋生死符】，催动后敌人冰封并扣除大量内力",
	"Ｎ",
	"Ｚ绝学：幽冥夜叉.轮回掌",
	"Ｗ使用天山六阳掌/天山折梅手攻击几率触发，化解敌人内力并附加相应气攻",
	"Ｗ若敌人身上有生死符或冰封状态则增加伤害与气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ擂鼓山支线剧情，洗第一、二格武功",
    "Ｗ灵鹫宫支线剧情，觉醒成为【夜叉】",
	"Ｗ灵鹫宫拿八荒时，第三格洗为八荒六合功",
	"Ｗ灵鹫宫拿折梅时，第五格洗为天山折梅手"
	}
	TFJS[50] = {"Ｌ奋英雄怒",
	"Ｗ攻击时必定造成暴击并有红字特效",
	"Ｗ防御加成提升30%，半血时防御加成提升50%，血量低于25%防御加成提升75%",
	"Ｗ集气速度+8",
	"Ｗ门派为丐帮时为污衣派阵营，不随装备变更而变化",
	"Ｎ",
	"Ｌ狂龙天征",
	"Ｗ自带“擒龙功”加力、护体，1000威力，可叠加（几率与天书数、实战相关）",
	"Ｗ使用降龙十八掌，必定发动【降龙.极意】",
	"Ｗ使用降龙十八掌，几率发动【降龙.三叠浪】，暴怒时必定发动",
	"Ｗ使用降龙十八掌攻击无误伤",
	"Ｗ降龙十八掌耗内降低50%（与天赋外功效果叠加，降低75%内力消耗）",
	"Ｎ",
	"Ｌ帝释天威",
	"Ｗ在战场时，根据自身内力值提升己方攻防能力与集气速度",
	"Ｗ在战场时，根据自身内力值降低敌方攻防能力与集气速度",	
	"Ｗ怒气爆发后以上效果翻倍",	
	"Ｎ",
	"Ｚ绝学：天锁苍龙诀",
	"Ｗ触发三叠浪后有几率追加一次降龙十八掌连击",
	"Ｗ连击次数超过4时，触发绝招【诸天归一.龙牙天引】",	
	"Ｗ附加内力最大值伤害，且扩大极意范围",	
	}
	TFJS[51] = {"Ｌ离合参商",
	"Ｗ斗转反击时，无视兵器值需求必定发动离合参商",
	"Ｗ斗转反击发动时额外减伤",
	"Ｗ斗转星移发动几率提升",
	"Ｎ",
	"Ｌ姑苏慕容",
	"Ｗ可使用斗转星移进行攻击",
    "Ｒ特色指令：幻梦",
	"Ｗ至该角色下次行动为止，被攻击必定发动幻梦星辰反击",
    "Ｎ",
	"Ｚ绝学：无间斗转",
	"Ｗ觉醒后斗转反击发动时，可使用修罗战技【无间斗转】",
	"Ｗ包括五个效果之一",
	"Ｗ【趣果无间】反击时自身获得一定时序幸运状态，被攻击者陷入厄运状态",
	"Ｗ【受苦无间】反击时使被攻击者一定时序随机产生冻结、燃烧、化血、溃疡等状态",
	"Ｗ【时无间】反击后立刻行动",
	"Ｗ【命无间】反击后获得一定时序回血，并立刻恢复被攻击者1%的最大生命值",
	"Ｗ【身形无间】反击后进入一定时序隐身状态，且叠加一层飒踏",
	"Ｗ斗转发动时可增加一点修罗值",
	"Ｎ",
	"Ｚ绝学：修罗无惨剑",
	"Ｗ修罗值达到五点以后用斗转星移主动攻击或参合指可几率触发",
	"Ｗ根据修罗值与敌人内力缺失情况提升伤害和杀气效果",		
	}
	TFJS[53] = {"Ｌ磊落仁心",
	"Ｗ内力上限9999",
	"Ｎ",
	"Ｌ六脉真传",
	"Ｗ六脉神剑出招式几率追加二次判定",
	"Ｗ六脉神剑耗内降低50%（与天赋外功效果叠加，降低75%内力消耗）",
	"Ｎ",
	"Ｒ特色指令：凌波",
	"Ｗ至该角色下次行动为止，被攻击有50%几率闪避",
	"Ｎ",
	"Ｚ龙脉剑气",
	"Ｗ使用六脉神剑可在敌人身上种植剑气，并培育身上龙气",
	"Ｗ被攻击时也会根据伤害提升龙气，行动后可消耗龙气恢复生命",
	"Ｗ身上带有剑气的敌人攻击和被攻击时剑气上升，行动后一半剑气爆发扣除生命",
	"Ｎ",
	"Ｚ绝学：龙剑交泰",
	"Ｗ六脉神剑攻击几率触发，可消耗当前一半龙气吸收敌人生命",
	"Ｗ若敌人身上有剑气则引爆一半剑气吸收内力",	
	"Ｗ同时根据敌人剑气值增加气攻和伤害",	
	"Ｇ福缘际遇",
	"Ｗ无量山洞剧情，洗第一、二格武功",
	"Ｗ天龙寺剧情，洗第三格武功"
	}
	TFJS[70] = {"Ｌ少林掌门",
	"Ｗ "
	}
	TFJS[76] = {"Ｌ武中无相",
	"Ｗ无视限制条件修炼武学秘籍",
	"Ｗ初始自带100点武常",
	"Ｎ",
	"Ｌ琅嬛仙子",
	"Ｗ作为主角时，初始五系兵器值提升至30点",
	"Ｎ",
	"Ｚ妙法无形",
	"Ｗ在场时，我方全体攻击范围增加一格",
	"Ｎ",
	"Ｚ御法绝尘",
	"Ｗ☆需要自身五系兵器值之和大于等于500",
	"Ｗ在场时，敌方全体攻击时不会出招式",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ获得凌波微步后，天赋轻功洗为凌波微步"
	}
	TFJS[90] = {"Ｌ毓秀灵姝",
	"Ｗ使用闪电貂攻击几率偷敌方身上携带的道具",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ找到闪电貂，第一格武功洗为闪电貂"
	}
	TFJS[98] = {"Ｌ恶贯满盈",
	"Ｗ暴击攻击加成提升至200%"
	}
	TFJS[99] = {"Ｌ无恶不作",
	"Ｗ暴击攻击加成提升至200%"
	}
	TFJS[100] = {"Ｌ穷凶极恶",
	"Ｗ暴击攻击加成提升至200%"
	}
	TFJS[44] = {"Ｌ凶神恶煞",
	"Ｗ暴击攻击加成提升至200%"
	}
	TFJS[101] = {"Ｌ大理家臣",
	"Ｗ "
	}
	TFJS[102] = {"Ｌ双树枯荣",
	"Ｗ灼烧恢复能力加倍（时序恢复2点灼烧）",
	"Ｗ自带“枯荣真气”护体，800威力，可叠加（几率与天书数、实战相关）",
	"Ｗ攻击时几率追加800气攻，可叠加（几率与天书数、实战相关）",
	"Ｎ",
	"Ｌ天龙禅师",
	"Ｗ使用一阳指高几率连击"
	}
	TFJS[103] = {"Ｌ大轮明王",
	"Ｗ火焰刀法【大轮密宗.火焰刀】发动几率100%",
	"Ｗ自带“明王真气”护体（500气防），可叠加",
	"Ｎ",
	"Ｌ指令：幻化",
	"Ｗ可幻化包裹中的武功秘籍",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	}
	TFJS["103-1"] = {"Ｌ大轮明王",
	"Ｗ火焰刀法【大轮密宗.火焰刀】发动几率100%",
	"Ｗ自带“明王真气”护体（500气防），可叠加",
	"Ｎ",
	"Ｌ指令：幻化",
	"Ｗ可幻化包裹中的武功秘籍",
	"Ｎ",
	"Ｚ迦楼罗",
	"Ｗ暴怒后依次使用明王残火刀四招",
	"Ｗ触发【大轮密宗.火焰刀】可恢复生命和集气",
	}
	TFJS[104] = {"Ｌ云舞霓裳",
	"Ｗ无视限制条件穿戴任何装备"
	}
	TFJS[105] = {"Ｌ琴韵温香",
	"Ｗ "
	}
	TFJS[110] = {"Ｌ聚贤庄主",
	"Ｗ "
	}
	TFJS[111] = {"Ｌ聚贤庄主",
	"Ｗ "
	}
	TFJS[112] = {"Ｌ天威奋烈",
	"Ｗ时序增加1点怒气",
	"Ｎ",
	"Ｌ震天魔狼",
	"Ｗ必连击，必暴击"
	}
	TFJS[113] = {"Ｌ参合潜龙",
	"Ｗ斗转反击时，无视兵器值需求必定发动离合参商反击两次",
	"Ｗ自带“参合真气”加力、护体，600威力，可叠加（几率与天书数、实战相关）"
	}
	TFJS[114] = {"Ｌ达摩再世",
	"Ｗ内力上限9999，初始武学常识100",
	"Ｗ被攻击100%触发【天地独尊】，完全免疫杀气",
	"Ｗ攻击时高几率触发封穴",
	"Ｗ攻击时武功视觉特效随机触发，攻击无误伤",
	"Ｎ",
	"Ｌ天佛化生·金刚护体",
	"Ｗ降低受到的伤害50%，初始几率25%，每20点实战增加1%",
	}
	TFJS[115] = {"Ｌ聪辩先生",
	"Ｗ拥有琴棋书画四种天赋外功"
	}
	TFJS[116] = {"Ｌ北冥极渊",
	"Ｗ被攻击时必定发动北冥真气护体",
	"Ｚ畅想主角专属",
	"Ｗ主动攻击触发北冥神功吸内时，增加自身属性",
	"Ｎ",
	"Ｌ风月无间",
	"Ｗ对异性伤害提高20%，被异性伤害减少20%",
	"Ｎ",
	"Ｌ逍遥三老",
	"Ｗ面板上每多一个武功到极，天山折梅手威力+50"
	}
	TFJS[117] = {"Ｌ转瞬红颜",
	"Ｗ每过80时序，自动回满血内体并解除自身异常状态",
	"Ｎ",
	"Ｌ不老长春",
	"Ｗ被攻击时恢复80点生命",
	"Ｗ触发八荒六合功减伤时，不消耗内力，反增加内力",
	"Ｎ",
	"Ｌ逍遥三老",
	"Ｗ面板上每多一个武功到极，天山折梅手威力+50"
	}
	TFJS[118] = {"Ｌ无相转身（畅想主角专属）",
	"Ｗ被攻击时几率触发，免疫本次攻击并获得一次移动机会",
	"Ｗ移动后会在自身位置留下一个幻象",
	"Ｗ幻象生命为1点，且无法攻击",
	"Ｗ幻象消失前，不会再次触发无相转身",
	"Ｎ",
	"Ｌ秋水无尘",
	"Ｗ自身集气速度不受异常状态影响",
	"Ｎ",
	"Ｌ逍遥三老",
	"Ｗ面板上每多一个武功到极，天山折梅手威力+50"
	}
	TFJS[55] = {"Ｌ大器晚成",
	"Ｗ左右互搏发动几率固定为80%",
	"Ｗ作为队友时，最后10级的升级属性提高",
	"Ｎ",
	"Ｌ侠之大者",
	"Ｗ使用降龙十八掌发动连击时，在第二击附加随机多重后劲，额外增加伤害和杀气",
	"Ｗ后劲上限随天书数而增加，最多13道；后劲超过11道时，无视敌方绝对气防",
	"Ｗ每道后劲增加8%的高优先级伤害和150点气攻，NPC郭靖上限固定为10道后劲",
	"Ｎ",
	"Ｚ觉醒称号：射雕英雄",
	"Ｗ攻击时有一定几率触发【翔龙箭】",
	"Ｗ行动后以暗器方式放出，对击中点范围5格内敌人产生作用",
	"Ｗ根据敌人内力最大值的一半扣除内力和一定比例生命，并附加内伤",
	"Ｎ",
	"Ｚ觉醒特技：北斗罡步",
	"Ｗ觉醒后手动操作，被攻击时有一定几率发动北斗罡步",
	"Ｗ可通过一定范围内移动避开敌人攻击",
	"Ｗ之后以降龙掌发动反击",
	"Ｎ",
	"Ｚ特技：蛇行狸翻（畅想主角专属）",
	"Ｗ习得九阴后，被攻击几率触发，打断对方连击，几率为(天书数*2)%",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ射雕桃花岛招亲剧情，洗第一、二、三格武功",
	"Ｗ射雕正线桃花岛收郭靖时，可重新选择内力属性"
	}
	TFJS[56] = {"Ｌ奇门遁甲",
	"Ｗ战斗开始前可布置奇阵，不同颜色的地面有不同效果:",
	"Ｒ红色——造成的伤害提高20%",
	"Ｌ绿色——受到的伤害减少20%",
	"Ｄ蓝色——攻击时追加2000点气攻",
	"Ｚ紫色——被攻击时有30%几率闪避",
	"Ｎ",
	"Ｌ兰质蕙心",
	"Ｗ修炼武功秘籍时，兵器值成长翻倍",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ射雕明霞岛剧情，洗第一、二格武功"
	}
	TFJS[57] = {"Ｌ东邪",
	"Ｗ攻击时发动碧海潮生曲,杀全体敌人内力500",
	"Ｗ攻击时高几率造成封穴",
	"Ｗ集气速度+10",
	"Ｗ自带桃花绝技，不用学满特效即可使用桃花绝技全部效果",
	"Ｗ自带“奇门奥义”加力、护体，500威力，可叠加（几率与天书数、实战相关）",
	"Ｎ",
	"Ｌ觉醒技：奇门阵图",
	"Ｗ“奇门奥义”护体时，几率进化成“奇门阵图”，根据自身与敌人的内力差减伤与气攻",
	"Ｗ并触发以下八种效果中的一种",
	"Ｒ开门——一段时序内进入幸运状态",
	"Ｌ生门——受到的伤害减少20%",
	"Ｄ景门——打断连击且立即行动",
	"Ｚ伤门——攻击者被反弹“肝损”与“千本落英”状态",
	"Ｒ杜门——一段时序内反弹敌人所有伤害",
	"Ｌ惊门——攻击者被反弹集气紊乱状态和集气惩罚",
	"Ｄ休门——自身进入疗伤状态，攻击者进入毒击状态",
	"Ｚ死门——攻击者被反弹“神经蛇毒”和自身的异常状态，自身恢复内力",
	"Ｎ",
	"Ｌ觉醒技：碧海魔音",	
    "Ｗ在被连击时，“奇门奥义”护体，几率触发“碧海魔音”，使攻击者一定时序精神错乱",
	}
	TFJS[60] = {"Ｌ倒行逆施",
	"Ｗ集气时有小概率跳跃（集气值随机增加）",
	"Ｗ学会逆运后，被攻击必定进入【真.逆运经脉-走火入魔】状态",
	"Ｗ走火状态必定暴击，攻击/防御效果提高10%，加力/护体/出招几率大幅提高",
	"Ｗ走火状态无法休息，如体力低于20点，则停止走火",
	"Ｎ",
	"Ｌ白驼庄主",
	"Ｗ所有攻击无误伤",
	"Ｗ攻击时无视敌方毒抗强制上毒30点",
	"Ｗ蛤蟆功.蟾震九天效果加强，可根据蓄力值的高低追加伤害",
	"Ｗ灵蛇杖法或内功攻击，几率发动灵蛇杖影，被攻击者陷入集气紊乱和摇摆双重效果",
	"Ｎ",
	"Ｚ觉醒称号：西毒",
	"Ｗ觉醒后，被攻击时根据攻击者中毒情况减伤，并附加蛇毒，攻击者时序中毒流血",
	"Ｗ若攻击者中毒超过50 ，则附加溶血蛇毒，流血时根据中毒状况加大流血效果",
	"Ｗ被杀气时根据攻击者中毒情况减免且反弹杀气值",
    "Ｗ若攻击者中毒超过50 ，则附加神经蛇毒，一定时序内特效概率为0",
	"Ｗ觉醒后攻击，根据被攻击者中毒情况回复生命和内伤",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ射雕明霞岛剧情后，洗第二格武功，天赋内功洗为逆运经脉",
	"Ｗ华山绝顶支线剧情，洗第三格武功",
	"Ｗ射雕正线重阳宫处NPC觉醒",
	}
	TFJS[61] = {"Ｌ白驼少主",
	"Ｗ暴怒时，使用雪山白驼掌可触发灵蛇拳，击中的敌人集气进入波动状态20时序",
	"Ｚ觉醒称号：蛇蝎公子",
	"Ｗ觉醒后，攻击无视敌方毒抗强制上毒10-30点",
	"Ｗ灵蛇拳几率进化成潜影毒手，附加七死爆毒状态，被攻击者加力或护体时毒发",
    "Ｗ同时根据敌人中毒情况额外附加伤害和冰封效果",
	"Ｎ",
	}
	TFJS[64] = {"Ｌ返璞归真",
	"Ｗ左右互搏发动几率100%",
	"Ｎ",
	"Ｌ顽童武痴",
	"Ｗ每行动一次，攻击效果提升10%",
	"Ｎ",
	"Ｚ空明之武道",
	"Ｗ攻击时，有(25+实战/20)%几率使敌方无法触发内功护体",
	"Ｎ",
	"Ｚ左右补偿（畅想主角专属）",
	"Ｗ发动左右互搏后，会根据资质补偿一次额外的左右机会",
	"Ｎ",
	"Ｚ觉醒技:极限空明之武道",
	"Ｗ觉醒后，几率攻击使被攻击者无法发动概率型特效",
	"Ｎ",
	"Ｚ顽童觉醒技:螺旋空明拳",
	"Ｗ蓄力时必然成功，可多次叠加蓄力层数",
	"Ｗ蓄力后根据层数加快集气速度和恢复集气",
	"Ｗ蓄力后攻击会附加与蓄力层数相关的气攻与蓄力层数平方倍",
	"Ｗ相关的拳掌系数伤害，蓄力会被敌方攻击打断而受到杀气惩罚",
	"Ｎ",
	}
	TFJS[65] = {"Ｌ南僧",
	"Ｗ使用一阳指，给敌方追加“无明业火”状态，持续50时序",
	"Ｗ处于“无明业火”状态的人攻击时，会损失50%内力消耗量的生命",
	"Ｗ攻击时高几率造成封穴",
	"Ｎ",
	"Ｚ先天一阳",
	"Ｗ战斗中首次被击退可复活一次",
	"Ｗ回复70%生命值，部分状态，并立即行动",
	"Ｗ复活后，集气速度+5",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ第四次触发先天一阳后，觉醒",
	"Ｎ",
	"Ｚ觉醒技：气剑指",
	"Ｗ指系攻击附加指法和剑系系数的伤害",
	"Ｗ一阳指攻击时几率发动【七诀剑气】",
	"Ｗ被攻击护体时,几率回复内力与内伤，且减少伤害与气攻",
	"Ｎ",
	"Ｚ燃灯复生",
	"Ｗ复活后，完全免疫敌方连击的伤害",
	"Ｗ杀死“无明业火”状态的敌人，会点燃其内力，杀伤敌方全体"
	}
	TFJS[68] = {"Ｌ长春子",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[67] = {"Ｌ铁掌帮主",
	"Ｗ使用任何武功高连击，高暴击"
	}
	TFJS[69] = {"Ｌ丐帮帮主",
	"Ｗ使用降龙十八掌，50%几率发动【降龙.极意】",
	"Ｗ使用降龙十八掌攻击无误伤",
	"Ｗ自带“丐王真气”加力、护体，600威力，可叠加（几率与天书数、实战相关）",
	"Ｎ",
    "Ｚ觉醒称号：北丐",
	"Ｗ使用降龙十八掌或者打狗棒时，有几率在攻击结束后追加另一个武功的攻击",
	"Ｗ追加攻击中，降龙十八掌进化成【贪狼降龙掌】，会追加连击",
	"Ｗ追加攻击中打狗棒法进化成【龙纹打狗棒】，附加特系和攻击力的伤害并暴击",
	"Ｗ并且根据当前内力附加大量气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ华山绝顶支线剧情，洗第三格武功，天赋内功洗为九阴神功，内力属性转为阴内"
	}
	TFJS[78] = {"Ｌ铁尸魔煞",
	"Ｗ华山观武后，九阴白骨爪威力增加50%"
	}
	TFJS[119] = {"Ｌ渔",
	"Ｗ "
	}
	TFJS[120] = {"Ｌ樵",
	"Ｗ "
	}
	TFJS[121] = {"Ｌ耕",
	"Ｗ "
	}
	TFJS[122] = {"Ｌ读",
	"Ｗ "
	}
	TFJS[123] = {"Ｌ丹阳子",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[124] = {"Ｌ长真子",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[125] = {"Ｌ长生子",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[126] = {"Ｌ玉阳子",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[127] = {"Ｌ广宁子",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[128] = {"Ｌ清净散人",
	"Ｗ华山观武后全真剑法威力翻倍"
	}
	TFJS[129] = {"Ｌ中神通",
	"Ｗ华山观武后，全真剑法威力翻倍",
	"Ｗ使用全真剑法，60%几率发动重阳剑气，追加777气攻",
	"Ｗ攻击时高几率造成封穴",
	"Ｎ",
	"Ｚ神通技·重阳再现",
	"Ｗ战斗中首次被击退可复活一次",
	"Ｗ回复70%生命值，部分状态，并立即行动",
	"Ｎ",
	"Ｚ神通技·北斗七闪",
	"Ｗ发动重阳再现后，自身进入北斗真打状态",
	"Ｗ获得两本天书后习得第一层效果",
	"Ｗ之后每获得两本天书增加一层，共七层",
	"Ｗ层数即代表可维持真打状态的轮数",
	"Ｗ自身每行动一次减少一层，耗完即消去真打状态",
	"Ｗ在真打状态下，全程怒气爆发",
	"Ｗ必定发动内功加力且气攻值增幅",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ第四次触发重阳再现后，完成觉醒",	
	"Ｎ",
	"Ｚ觉醒技：先天剑罡",
	"Ｗ任意攻击都能触发封穴效果",
	"Ｗ重阳剑气几率进化为重阳剑罡，必然无视气防（包括太奥和易筋真谛）发动杀气",
	"Ｗ觉醒后被攻击护体时,几率打断连击",
	"Ｗ回复生命，且忽略对方气攻和杀气",
	"Ｎ",
	"Ｚ觉醒技：气化三清",
	"Ｗ觉醒后几率根据自身内力情况发动连击",
	"Ｗ连击次数上限根据内力情况计算",
	"Ｎ",
	"Ｚ终极觉醒技：重阳遗剑",
	"Ｗ觉醒后北斗七闪随使用层数逐步加强气攻和威力",
	"Ｗ最后一层发动【终闪.重阳遗剑】，双倍攻击且无视对方防御",
	}
	TFJS[130] = {"Ｌ飞天蝙蝠",
	"Ｗ"
	}
	TFJS[131] = {"Ｌ妙手书生",
	"Ｗ华山观武后分筋错骨手威力翻倍",
	"Ｗ使用妙手空空攻击，可盗取敌方身上携带的物品"
	}
	TFJS[132] = {"Ｌ马王神",
	"Ｗ "
	}
	TFJS[133] = {"Ｌ南山樵子",
	"Ｗ "
	}
	TFJS[134] = {"Ｌ笑弥陀",
	"Ｗ "
	}
	TFJS[135] = {"Ｌ闹市侠隐",
	"Ｗ "
	}
	TFJS[136] = {"Ｌ越女剑",
	"Ｗ "
	}
	TFJS[590] = {"Ｌ心秀天铃",
	"Ｗ使用奇门武功攻击时，有60%几率追加大量气攻"
	}
	TFJS[137] = {"Ｌ青蟒剑",
	"Ｗ "
	}
	TFJS[138] = {"Ｌ一指镇江南",
	"Ｗ "
	}
	TFJS[86] = {"Ｌ倾国倾城",
	"Ｗ敌方全体防御效果降低10%"
	}
	TFJS[87] = {"Ｌ媚眼如丝",
	"Ｗ敌方全体攻击效果降低10%"
	}
	TFJS[139] = {"Ｌ延平郡王",
	"Ｗ "
	}
	TFJS[150] = {"Ｌ一剑无血",
	"Ｗ "
	}
	TFJS[71] = {"Ｌ神龙教主",
	"Ｗ使用任何武功高连击，高暴击"
	}
	TFJS[19] = {"Ｌ君子剑",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ笑傲福威镖局选择正邪剧情，洗第一、三格武功"
	}
	TFJS[20] = {"Ｌ潇湘夜雨",
    "Ｗ攻击时几率发动“潇湘夜雨”，本次攻击必定造成额外内伤",
    "Ｎ",
	}
	TFJS[21] = {"Ｌ恒山掌门",
	"Ｗ "
	}
	TFJS[22] = {"Ｌ嵩山掌门",
	"Ｗ攻击时高几率附带冰封",
	"Ｗ自带“寒冰真气”加力、护体，500威力，可叠加（几率与天书数、实战相关）"
	}
	TFJS[23] = {"Ｌ泰山掌门",
	"Ｗ攻击时高几率附带灼烧"
	}
	TFJS[24] = {"Ｌ青城掌门",
	"Ｗ "
	}
	TFJS[25] = {"Ｌ凤凰传奇",
	"Ｗ攻击效果提升10%",
	"Ｎ",
	"Ｌ五毒教主",
	"Ｗ用毒能力上限400"
	}
	TFJS[26] = {"Ｌ日月魔帝",
	"Ｗ吸星大法吸体力效果提高",
	"Ｗ自带加力护体（600威力，可叠加）几率与天书数、实战有关",
	"Ｗ使用任何武功高几率暴击、高几率造成封穴 ",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	}
	TFJS["26-1"] = {"Ｌ日月魔帝",
	"Ｗ吸星大法吸体力效果提高",
	"Ｗ自带加力护体（600威力，可叠加）几率与天书数、实战有关",
	"Ｗ使用任何武功高几率暴击、高几率造成封穴 ",
	"Ｎ",
	"Ｇ噬魂魔帝",
	"Ｒ本次行动如击退至少一名敌方，则吸干敌方内力",
	"Ｚ若所吸内力超过内力最大值，则未吸收内力转化为生命值",
	"Ｒ若被击退敌方没有内力，则吸收全体敌方内力500与生命100",
	"Ｚ对于内力不够的敌人，则集气倒退100，扣除生命200",
	}
	TFJS[27] = {"Ｌ风云再起",
	"Ｗ攻击无误伤",
	"Ｗ集气速度提升6点",
	"Ｗ必连击，且连击时伤害、气攻不减",
	"Ｎ",
	"Ｌ葵花点穴手",
	"Ｗ攻击时几率追加1000气攻，且必定造成封穴",
	"Ｎ",
	"Ｌ葵花秘法·化凤为凰",
	"Ｗ暴怒时触发，直至暴怒解除前无法被杀气"
	}
	TFJS[28] = {"Ｌ杀人名医",
	"Ｗ每击退一名敌人集气速度+3点、医疗能力+50（最多5个有效）",
	"Ｗ医疗能力上限500"
	}
	TFJS[29] = {"Ｌ万里独行",
	"Ｗ战场上已方人员越少集气速度提升越多",
	"Ｗ集气速度提升值为：20-在场队友数量×4",
	"Ｎ",
	"Ｌ无女不欢",
	"Ｗ战场上对方女性角色越多集气速度越快",
	"Ｗ集气速度提升值为：在场对方女性数量×4",
	"Ｎ",
	"Ｚ绝招：无明神风流",
	"Ｗ觉醒后可使用无明神风流绝技，几率使用以下绝招:",
	"Ｗ蜃：使用后30时序内无法被人锁定攻击",
	"Ｗ凤：消除对方怒气并转化成内力损失",
	"Ｗ麒麟：攻击造成对方集气紊乱且虚弱",
	"Ｗ玄武：攻击使自己一定时序内免疫内伤且吸收杀气",
	}
	TFJS[31] = {"Ｌ江南四友",
	"Ｗ "
	}
	TFJS[32] = {"Ｌ江南四友",
	"Ｗ "
	}
	TFJS[33] = {"Ｌ江南四友",
	"Ｗ "
	}
	TFJS[34] = {"Ｌ江南四友",
	"Ｗ "
	}
	TFJS[35] = {"Ｌ灵奇洒脱",
	"Ｗ移动格数+3",
	"Ｎ",
	"Ｌ九剑传人",
	"Ｗ被风清扬指点后，进入战斗初始集气值1000",
	"Ｎ",
	"Ｌ剑魔再临（独孤剑冢剧情后）",
	"Ｗ连击率大幅提升",
	"Ｗ使用独孤九剑攻击无误伤",
	"Ｗ攻击时有几率发动『剑魔再临·动如雷震』特效，三连击，暴怒必触发",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ笑傲思过崖剧情，洗第一格武功，天赋外功洗为独孤九剑",
	"Ｗ笑傲梅庄地牢剧情，洗第二格武功，天赋内功洗为吸星大法"
	}
	TFJS[36] = {"Ｌ辟邪剑客",
	"Ｗ进入战斗后，初始集气值700",
	"Ｗ葵花刺目追加二次判定",
	"Ｗ可使用葵花神功攻击",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ笑傲福威镖局选择正邪剧情，洗第一、二格武功",
	"Ｗ笑傲福威镖局选择正邪剧情，天赋内功洗为葵花神功"
	}
	TFJS[140] = {"Ｌ剑术通神",
	"Ｗ攻击和被攻击时，无论任何系，均按敌我御剑系数计算加成",
	"Ｎ",
	"Ｚ无招胜有招",
	"Ｗ暴怒时，使用独孤九剑攻击，追加2000点气攻，和10时序的静止状态，可叠加"
	}
	TFJS[73] = {"Ｌ琴铮盈盈",
	"Ｗ使用持瑶琴，几率发动“七弦无琴剑气”，对敌方全体造成50×血量倍数的伤害",
	"Ｎ",
	"Ｌ日月圣姑",
	"Ｗ与令狐冲同时在场时，使用持瑶琴攻击，几率发动“剑胆琴心 笑傲江湖”"
	}
	TFJS[79] = {"Ｌ慧中灵剑",
	"Ｗ每修炼一门剑法，攻击效果提升5%",
	"Ｗ每修炼一门剑法，初始集气+50",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ笑傲福威镖局选择正邪剧情，洗第一、二、三格武功",
	}
	TFJS[88] = {"Ｌ酒神",
	"Ｗ被攻击时有30%几率发动\"酒神秘踪步\"闪避",
	"Ｎ",
	"Ｒ特色指令：传功",
	"Ｗ将五格范围内我方任一队友当前集气提升500点"
	}
	TFJS[106] = {"Ｌ金刀无敌",
	"Ｗ "
	}
	TFJS[141] = {"Ｌ剑宗弃徒",
	"Ｗ "
	}
	TFJS[142] = {"Ｌ狂风快剑",
	"Ｗ使用剑法攻击，下回合集气+100"
	}
	TFJS[143] = {"Ｌ桃谷六仙",
	"Ｗ "
	}
	TFJS[144] = {"Ｌ桃谷六仙",
	"Ｗ "
	}
	TFJS[145] = {"Ｌ桃谷六仙",
	"Ｗ "
	}
	TFJS[146] = {"Ｌ桃谷六仙",
	"Ｗ "
	}
	TFJS[147] = {"Ｌ桃谷六仙",
	"Ｗ "
	}
	TFJS[148] = {"Ｌ桃谷六仙",
	"Ｗ "
	}
	TFJS[149] = {"Ｌ少林掌门",
	"Ｗ被攻击时根据攻击者怒气值百分比减伤",
	"Ｗ易筋真谛发动时恢复生命，效果随自身怒气值提升",
	"Ｎ",
	"Ｌ千手如来掌",
	"Ｗ拳法攻击时暴击时增加一次连击，最多3次",
	"Ｗ每次连击伤害与气攻加倍",
	"Ｎ",
	"Ｌ佛门狮子吼",
	"Ｗ内功加力时发动【佛门狮子吼】，造成全屏",
	"Ｗ伤害100点，内伤增加10点",
	"Ｗ对方有内伤时额外附加伤害和内伤",
	}
	TFJS[400] = {"Ｌ质朴罗汉",
	"Ｗ少林罗汉拳威力上升300",
	"Ｗ可独立使用伏虎罗汉拳",
	"Ｎ",
	"Ｌ千锤百炼",
	"Ｗ被攻击时触发【铁布衫】，减少伤害",
	"Ｗ天赋外功连击会变成三连击",
	}
	TFJS[74] = {"Ｌ巾帼之才",
	"Ｗ我方全体防御效果提高10%",
	"Ｎ",
	"Ｌ翠羽黄衫",
	"Ｗ使用三分剑术攻击杀敌体力7-8点",
	"Ｎ",
	"Ｒ特色指令：统率",
	"Ｗ我方全体集气加200点"
	}
	TFJS[75] = {"Ｌ天池红花",
	"Ｗ队友：升级时兵器值大幅提高",
	"Ｗ主角：初始兵器值大幅提高",
	"Ｎ",
	"Ｌ诸法皆通",
	"Ｗ每修炼一个拳法到极，伤害提升5%",
	"Ｗ每修炼一个指法到极，初始集气增加50点",
	"Ｗ每修炼一个刀法到极，被攻击伤害降低5%",
	"Ｗ每修炼一个剑法到极，集气速度增加5%",
	"Ｗ每修炼一个特系到极，被攻击怒气上涨速度提高5%",
	"Ｎ",
	"Ｌ渣男之王",
	"Ｗ攻击异性角色伤害提升15%，被异性角色攻击伤害降低15%",
	"Ｎ",
	"Ｌ觉醒特性：百花齐放",
	"Ｗ攻击力350以上领悟会心一击：生命值低于1/2时，35%几率攻击加倍",
    "Ｗ防御力350以上领悟铜身铁臂：30%几率战斗中所受到的伤害值减少1/3",
"Ｗ轻功350以上领悟逍遥游步：25%几率避过敌人的攻击",
"Ｗ内力上限5000以上领悟卸劲护元：25%几率遭受攻击时扣除内力值代",
"Ｗ替伤害，伤害最高为10点",
"Ｎ",
"Ｗ拳系130以上领悟铁拳奔袭：拳系攻击或百花错拳几率触发，攻击无视部分防御",
"Ｗ指系130以上领悟寸劲破罡：暗系攻击或百花错拳几率触发, 使被攻击者必封穴",
"Ｗ25时序",
"Ｗ剑系130以上领悟醉里挑灯：剑系攻击或百花错拳几率触发，行动后恢复250集气",
"Ｗ刀系130以上领悟吞天噬日：刀系攻击或百花错拳几率触发，吸血攻击",
"Ｗ特系130以上领悟横扫千军：特系攻击或百花错拳几率触发，根据自身内力附加伤害",
"Ｗ若采用百花错拳触发以上特效时，会附加随机触发五种气劲之一",
"Ｗ【横练劲】：攻击判定额外增加",
"Ｗ【炮捶劲】：强行杀气，且附加内伤",
"Ｗ【钻心劲】：附加异常状态之一，包括虚弱、千本落英、七死爆毒、猛毒、封印等",
"Ｗ【劈空劲】：提升自身恢复集气，且附加流血",
"Ｗ【崩山劲】：根据内力差附加伤害",
"Ｎ",
"Ｗ五系之和大于400领悟漫天流星：任何攻击60%几率触发, 全体敌人",
"Ｗ杀生命80，无法致死",
"Ｎ",
"Ｌ觉醒技：【错拳.百花缭乱】",
"Ｗ百花错拳攻击几率触发，可额外增加连击",
"Ｗ并无视五系系数要求必然触发百花齐放的攻击效果",
	}
	TFJS[80] = {"Ｌ勇猛精进",
	"Ｗ我方全体攻击效果提高10%",
	"Ｎ",
	"Ｌ火手判官",
	"Ｗ攻击时所造成内伤效果加倍",
	"Ｎ",
    "Ｚ觉醒技：火手太极",
	"Ｗ攻击时所造成内伤效果，可根据御剑系数强化",
    "Ｗ触发太极奥义时反弹内伤，并积蓄火手值，强化太奥时减伤效果",
	"Ｗ采用柔云剑法攻击会根据火手值附加灼烧，提升伤害与火手值",
	"Ｗ采用太极剑法攻击会几率触发全屏攻击，根据火手值与对方内伤附加气攻与伤害",
	"Ｗ同时全屏攻击也能在火手值超过50后必然触发",
    "Ｎ",
	"Ｌ天赋内功",
	"Ｗ修炼纯阳无极功与九阳神功一脉相承后，天赋内功变为九阳神功",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ武当山偷太极三宝支线，洗第二、三格武功，天赋外功增加太极剑",
	"Ｗ同时触发人物觉醒",
	"Ｗ书剑正线死囚牢触发人物觉醒"
	}
	TFJS[151] = {"Ｌ否极泰来",
    "Ｗ集气被杀至0以下时，清除封穴状态并立即行动，并进入50时序幸运状态",
	"Ｎ",
    "Ｚ觉醒技：奔雷手",
    "Ｗ攻击时，移动距离增加连击率和连击次数",
	"Ｗ连击时额外附带不可防御的伤害",
	"Ｗ行动后随移动距离恢复集气和内力",
    "Ｎ",
	"Ｇ福缘际遇",
	"Ｗ无论正邪，回民部落之战后红花会集体觉醒"
	}
	TFJS[152] = {"Ｌ鬼影迷踪步",
	"Ｗ 被攻击时根据敌我轻功差值几率进行闪避",
	"Ｎ",
	"Ｚ觉醒技：追魂夺命剑",
	"Ｗ觉醒后必然连击，几率连击3~5次",
	"Ｗ附加气攻，且伤害随连击而增加",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ无论正邪，回民部落之战后红花会集体觉醒"
	}
	TFJS[153] = {"Ｌ暗器之王",
	"Ｗ初始暗器值150点",
	"Ｗ使用暗器随机2~4倍伤害，且觉醒后可以同样数值回复生命",
	"Ｗ免疫暗器攻击",
	"Ｎ",
	"Ｌ太极高手",
	"Ｗ不用学习太极拳太极剑即可自带太极奥义",
	"Ｗ在战场时队友也可几率使用太奥",
	"Ｎ",
	"Ｚ觉醒技：千臂如来",
	"Ｗ觉醒后，被攻击时几率使用随机暗器反击",
	"Ｗ手动操作时可指定反击对象",
	"Ｇ福缘际遇",
	"Ｗ无论正邪，回民部落之战后红花会集体觉醒"
	}
	TFJS[154] = {"Ｌ双刀女侠",
	"Ｗ使用鸳鸯刀法攻击时50%几率触发左右互搏",
	"Ｗ观武后鸳鸯刀法威力上升300",
	"Ｗ战场上我方男性角色越多其攻击效果越高",
	"Ｚ觉醒技：鸳鸯连环刀",
	"Ｗ觉醒后左右互博后使用鸳鸯刀法则必连击",
	"Ｗ左右互搏后的第一次攻击附加耍刀系数伤害",
	"Ｗ而后续连击攻击范围大增",
	"Ｎ",
    "Ｇ福缘际遇",
	"Ｗ无论正邪，回民部落之战后红花会集体觉醒"
	}
	TFJS[155] = {"Ｌ黑无常",
	"Ｗ "
	}
	TFJS[156] = {"Ｌ白无常",
	"Ｗ "
	}
	TFJS[58] = {"Ｌ逆流勇进",
	"Ｗ生命值低于50%时暴击率两倍，生命值低于25%时暴击率3倍",
	"Ｗ当生命值50%时，生命值每再降低1%，下回合集气位置+10点",
	"Ｎ",
	"Ｌ西狂",
	"Ｗ重剑真传发动时会额外根据内力值增加气攻",
	"Ｗ攻击时附带“西狂之怒啸”，敌方全体集气倒退100点",
	"Ｗ战斗中，当小龙女被击退时，杨过立即出手并发动【西狂之震怒·雷霆狂啸】",
	"Ｎ",
	"Ｄ黯然极意",
	"Ｗ血量低于70%或内伤大于30时，使用黯然销魂掌有几率触发极意",
	"Ｗ血量越低，内伤越高，几率越高，满足条件时暴怒必定触发",
	"Ｗ资质大于等于50，触发黯然极意必出三叠浪",
	"Ｗ资质低于50，触发黯然极意必定连击",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ作为畅想主角时，有大量专属剧情",
	"Ｗ独孤剑冢拿玄铁剑法时，洗第一格武功",
	"Ｗ神雕重阳宫大战后，洗第三格武功，可选择洗天赋内功",
	"Ｗ神雕百花谷剧情后，洗第二格武功",
	"Ｗ射雕牛家村支线，可选择洗第三格武功和天赋内功",
	"Ｗ华山绝顶支线剧情，可选择洗第五格武功"
	}
	TFJS[59] = {"Ｌ一片冰心",
	"Ｗ左右互搏发动几率70%",
	"Ｎ",
	"Ｌ冷若天仙",
	"Ｗ使用玉女素心剑法高几率连击"
	}
	TFJS[62] = {"Ｌ元蒙帝师",
	"Ｗ任何攻击追加2000点气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ神雕重阳宫大战后，洗第二格武功，天赋外功洗为五轮大转"
	}
	TFJS[63] = {"Ｌ外和内刚",
	"Ｗ生命值低于50%时，攻击效果提升20%",
	"Ｎ",
	"Ｌ青箫落瑛",
	"Ｗ使用玉箫剑法攻击，可杀敌内力300点",
	"Ｗ战斗时可使用【青箫】指令",
	"Ｎ",
	"Ｚ觉醒技：百花楼主",
	"Ｗ觉醒后使用玉箫剑法攻击，可让敌陷入精神错乱状态",
	"Ｗ一定时序内敌我概念逆转，对己方伤害加大，对敌方加血",
	"Ｗ行动后一定几率使用百花仙音，使自身进行调息恢复",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ射雕正线牛家村剧情，洗第二、三格武功",
	"Ｗ并完成百花楼觉醒",
	}
	TFJS[84] = {"Ｌ吾乃蛮夷",
	"Ｗ任何攻击追加1000点气攻",
	"Ｗ攻击时几率发动\"暗箭·扇中钉\"，无视敌方毒抗强制上毒13-16点"
	}
	TFJS[89] = {"Ｌ食神",
	"Ｗ攻击不消耗体力",
	"Ｎ",
	"Ｒ特色指令：气补",
	"Ｗ回复指定邻接队友体力50点"
	}
	TFJS[157] = {"Ｌ湘西尸王",
	"Ｗ华山观武后鹤蛇八打威力翻倍"
	}
	TFJS[158] = {"Ｌ波斯大贾",
	"Ｗ作为畅想主角时开局获得一万银两"
	}
	TFJS[159] = {"Ｌ释迦掷象功",
	"Ｗ必定单击，伤害永久提高1.5倍（天赋外功与如雷的额外连击有效）"
	}
	TFJS[160] = {"Ｌ国师首徒",
	"Ｗ "
	}
	TFJS[161] = {"Ｌ赤练仙子",
	"Ｗ使用五毒神掌时，有70%几率变为赤练神掌，追加70点伤害，并强制上毒20点",
	"Ｗ觉醒后根据敌人中毒情况附加多倍伤害",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ神雕邪线古墓密道剧情，洗第二、三格武功，天赋内功洗为玉女心经并觉醒",
	"Ｎ",
	"Ｚ觉醒技：三无三不手",
	"Ｗ必然连击",
	"Ｗ一定几率发出三连击御",
	"Ｎ",
	"Ｚ觉醒技：冰魄银针",
	"Ｗ向敌人使用冰魄银针会附加额外的效果",
	}
	TFJS[455] = {"Ｌ瑜伽大成",
	"Ｗ出场即完成人物觉醒",
	"Ｗ被暴击时伤害减少为1",
	"Ｎ",
    "Ｌ佛本是道",
	"Ｗ瑜伽天内升阶后附加先天功相同效果",
	"Ｗ无上大力杵暴击时会几率触发降龙极意范围攻击",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ"
	}
	TFJS[38] = {"Ｌ名相皆无",
	"Ｗ计算加力/护体/出招几率时必定开启二次判定",
	"Ｗ华山观武后，金乌刀法威力增加50%",
	"Ｗ【罗汉伏魔】特效效果增强10%（包括伤害和杀气）",
	"Ｗ内力上限9999",
	"Ｎ",
	"Ｌ混沦太玄",
	"Ｗ可使用太玄神功攻击，并有几率追加1200点气攻",
	"Ｗ太玄神功修炼至极，轻功+50，开启第一次觉醒",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ侠客正线挑战岛主剧情，洗第二格武功，天赋内功洗为太玄神功",
	"Ｗ？？？？？？",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？",
	}
	TFJS["38-1"] = {"Ｌ名相皆无",
	"Ｗ计算加力/护体/出招几率时必定开启二次判定",
	"Ｗ华山观武后，金乌刀法威力增加50%",
	"Ｗ【罗汉伏魔】特效效果增强10%（包括伤害和杀气）",
	"Ｗ内力上限9999",
	"Ｎ",
	"Ｌ混沦太玄",
	"Ｗ可使用太玄神功攻击，并有几率追加1200点气攻",
	"Ｗ太玄神功修炼至极，轻功+50，开启第一次觉醒",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ侠客正线挑战岛主剧情，洗第二格武功，天赋内功洗为太玄神功",
	"Ｗ畅想石破天或石破天在队时，在黑木崖解开身世之谜",
	}
	TFJS["38-2"] = {"Ｌ名相皆无",
	"Ｗ计算加力/护体/出招几率时必定开启二次判定",
	"Ｗ华山观武后，金乌刀法威力增加50%",
	"Ｗ【罗汉伏魔】特效效果增强10%（包括伤害和杀气）",
	"Ｗ内力上限9999",
	"Ｎ",
	"Ｌ混沦太玄",
	"Ｗ可使用太玄神功攻击，并有几率追加1200点气攻,并具有特效",
	"Ｗ太玄神功修炼至极，轻功+50",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ侠客正线挑战岛主剧情，洗第二格武功，天赋内功洗为太玄神功",
	"Ｗ太玄神功修炼至极，开启第一次觉醒",
	"Ｗ畅想石破天或石破天在队时，在黑木崖解开身世之谜",
	"Ｎ",
	"Ｚ天破侠乱",
	"Ｗ使用太玄神功攻击所出现的太玄招式将具有实质的特效",
	"Ｗ使用太玄神功几率使出【石破天惊拳】，无视气防及部分防御",
	"Ｗ使用太玄神功几率使出【闪光指】，造成敌方刺目和灼烧效果",
	"Ｗ护体时，会触发【明镜止水】，反弹杀气和自身不良状态",
	"自身不良状态包括冰封，中毒，内伤与灼烧",
	"Ｎ",
	"Ｚ红心之王",
	"Ｗ被打中破绽时则必然闪避",
	"Ｗ打中敌人破绽时必然暴击",
	}
	TFJS[39] = {"Ｌ侠客岛主",
	"Ｗ攻击效果提升20%",
	"Ｗ使用任何武功高几率造成封穴",
	"Ｎ",
	"Ｌ苍龙之客",
	"Ｗ龙象之力至少发动5层以上",
	"Ｗ龙象之力可造成对方30时序虚弱",
	"Ｎ",
	"Ｌ太玄真意",
	"Ｗ无视太玄主运可发动【太玄之重】",
	"Ｗ触发【救赵挥金锤.邯郸先震惊】时，可清空被攻击者怒气，且附加内伤",
	}
	TFJS[40] = {"Ｌ侠客岛主",
	"Ｗ防御效果提升20%",
	"Ｗ被攻击造成封穴减半",
	"Ｎ",
	"Ｌ青木之客",
	"Ｗ龙象之御至少发动5层以上",
	"Ｗ发动时可根据层数回复生命",
	"Ｎ",
	"Ｌ太玄真意",
	"Ｗ无视太玄主运可发动【太玄之轻】",
	"Ｗ发动【太玄之轻】时可根据被杀气情况回复生命,并给予攻击者与杀气等同的集气惩罚",
	}
	TFJS[41] = {"Ｌ赏善使者",
	"Ｗ攻击时高几率附带灼烧"
	}
	TFJS[42] = {"Ｌ罚恶使者",
	"Ｗ攻击时高几率附带冰封"
	}
	TFJS[43] = {"Ｌ雪山派掌门",
	"Ｗ自带“自在极意功”加力、护体，500威力",
	"Ｎ",
	"Ｌ觉醒：自在极意功",
	"Ｗ七书观武后，领悟自在极意功的真髓",
	"Ｗ被攻击到破绽时，自身处于闪避状态且时序回血，反弹玄阴状态",
	"Ｗ加力攻击时，触发极意范围攻击，附加气攻，根据气攻效果附加冰封"
	}
	TFJS[162] = {"Ｌ一日不过三",
	"Ｗ "
	}
	TFJS[163] = {"Ｌ一日不过四",
	"Ｗ "
	}
	TFJS[164] = {"Ｌ摩天居士",
	"Ｗ自带“摩天居士”护体（500威力，可叠加）几率与天书数、实战有关"
	}
	TFJS[85] = {"Ｌ老谋深算",
	"Ｗ医疗能力上限400"
	}
	TFJS[5] = {"Ｌ太极宗师",
	"Ｗ太极拳连击时亦享受借力打力效果",
	"Ｗ攻击时几率发动万法自然，下回合集气+500",
	"Ｗ攻击时几率触发化朽为奇，追加1000气攻",
	"Ｗ被攻击几率发动无根无形，防御效果提升50%",
	"Ｗ移动格数至少为8格",
	"Ｎ",
	"Ｌ太极圆转",
	"Ｗ太极拳修炼到极且拥有太极蓄力时，太极拳攻击范围渐进增加:",
	"Ｗ蓄力值1～300，攻击范围+1",
	"Ｗ蓄力值300～600，攻击范围+2",
	"Ｗ蓄力值超过600，攻击范围变为可移动面攻，且必定连击",
	"Ｎ",
	"Ｌ太极奥义",
	"Ｗ太极奥义发动几率无视资质固定为75%",
	"Ｗ揽雀尾和倒卷肱发动几率无视资质固定为75%",
	"Ｗ真太极奥义发动时必发动无根无形，觉醒后几率进化成阴阳无极，防御效果再次提升",
	"Ｗ太极之形几率消耗1点发动连击"
    }
	TFJS[6] = {"Ｌ灭绝师太",
	"Ｗ使用任何武功高连击，必暴击",
	"Ｗ移动格数+3",
	"Ｎ",
    "Ｌ峨眉掌门",
	"Ｗ临济十二庄加力时附加“峨嵋九阳功”效果，以内力差附加内伤",
	"Ｗ临济十二庄护体时附加“峨嵋九阳功”效果，转换内伤为生命值",
	"Ｗ峨眉剑法攻击时根据敌人流血值附加伤害",
	}
	TFJS[7] = {"Ｌ昆仑掌门",
	"Ｗ "
	}
	TFJS[8] = {"Ｌ崆峒掌门",
	"Ｗ "
	}
	TFJS[9] = {"Ｌ运转乾坤",
	"Ｗ乾坤大挪移反弹效果 强化至反弹40%伤害（无需运功）",
	"Ｗ乾坤大挪移可同时反弹给两个人",
	"Ｎ",
	"Ｌ特技：逆转乾坤（畅想主角专属）",
	"Ｄ学会乾坤后，被攻击时，有（35+天书数）%的几率触发，可以选择",
	"ＷA.在两格范围内对敌方的攻击落点进行挪移（消耗300点内力）",
	"ＷB.按ESC键取消挪移，本次被攻击必定发动乾坤反弹50%伤害（无需运功）",
	"Ｚ触发『逆转乾坤』后，敌方的误伤伤害将大幅提高，并且对误伤者有杀气效果",
	"Ｚ主角处于爆豆状态时，『逆转乾坤』触发几率提升10%",	
	"Ｎ",
	"Ｌ九阳明尊",
	"Ｗ可使用九阳神功攻击",
	"Ｗ未发动乾坤大挪移反弹时，几率发动九阳神功反震反弹20%伤害",
	"Ｗ没触发内功加力，护体，补偿九阳或乾坤加力，九阳护体",
	"Ｎ",
	"Ｒ特色指令：挪移",
	"Ｗ将八格范围内的我方任一队友挪移到指定位置",
	"Ｎ",	
	"Ｇ福缘际遇",
	"Ｗ光明顶密道拿到乾坤时，洗第三格武功",
	"Ｗ武当山见张三丰，洗第四、五格武功"
	}
	TFJS[10] = {"Ｌ光明右使",
	"Ｗ挨打加减伤，上限20% ",
	"Ｎ",
    "Ｌ苦头陀",
	"Ｗ无视明教门派特性，被打时必然触发焚身，灼烧并伤害攻击者",
	"Ｗ自身生命越低，焚身效果越强",
	"Ｎ",
	"Ｌ觉醒：右使印记",
	"Ｗ觉醒后技能，攻击敌人时，几率叠加右使印记",
	"Ｗ被附加右使印记的人攻击敌人时会自焚，对自己与周围3格同伴造成伤害",
	"Ｗ被附加右使印记的人攻击如果触发焚身则加强被焚烧效果",
	}
	TFJS[11] = {"Ｌ光明左使",
	"Ｗ被杨逍击中的人，伤害增加1%，上限20%",
	"Ｎ",
    "Ｌ桃花门人（隐）",
	"Ｗ无视桃花三宝条件，直接具备弹指特效",
	"Ｎ",
	"Ｌ觉醒：左使印记",
	"Ｗ觉醒后技能，被攻击时，几率叠加左使印记",
	"Ｗ拥有左使印记后可无视是否拥有乾坤而反弹，且提升反弹伤害",
	"Ｗ10层后必然反弹，且无视对方攻击异常特效",
	"Ｎ",
	"Ｌ觉醒技：超轨弹石炮",
	"Ｗ攻击时几率触发额外追加飞蝗石暗器攻击",
	"Ｗ造成10倍暗器伤害，并附加虚弱和封穴效果50时序",
	"Ｗ几率触发【秘孔.喘破】",
	"Ｒ（你指尖跳跃的电光是我此生不变的信仰）",
	}
	TFJS[12] = {"Ｌ白眉鹰王",
	"Ｗ华山观武后，鹰爪功威力加倍",
	"Ｗ自带“鹰王真气”，提供额外的气攻气防"
	}
	TFJS[13] = {"Ｌ金毛狮王",
	"Ｗ狮子吼发动条件放宽为敌方内力低于自身即可",
	"Ｗ七伤拳一震七伤发动几率100%，且一震七伤额外造成7点内伤",
	"Ｗ防御效果提升40%"
	}
	TFJS[14] = {"Ｌ青翼蝠王",
	"Ｗ集气速度提升10点",
	"Ｗ华山观武后，寒冰绵掌威力加倍",
	"Ｎ",
	"Ｌ吸血蝙蝠",
	"Ｗ使用任何武功攻击有吸血效果，吸血值为伤害值的10%（单次攻击最多回复100点生命值）"
	}
	TFJS[15] = {"Ｌ紫衫龙王",
	"Ｗ"
	}
	TFJS[16] = {"Ｌ蝶谷医仙",
	"Ｗ医疗上限500点",
	"Ｗ可向队友用药",
	"Ｗ全场友军使用药品效果上升30%",
	"Ｎ",	
	}
	TSZL[17] = 
	{"Ｒ特色指令：群疗",
	"Ｗ周围五格范围内的队友时序回内伤并按比例回血，持续20时序",	
	}
	TFJS[17] = {"Ｌ蝶谷毒仙",
	"Ｗ用毒能力上限500",
	"Ｗ觉醒后用毒能力上限750",
	"Ｗ天赋开眼后晋升为【花虫毒王】",
	"Ｗ主运技能【七虫七花】后下毒增加【花虫混毒】的选项",
	"Ｎ",	
	}
	TSZL[17] = 
	{"Ｒ特色指令：施毒",
	"Ｗ周围五格范围内的敌人时序中毒，持续50时序",	
	}
	TFJS[18] = {"Ｌ混元霹雳手",
	"Ｗ自带混元霹雳功加力、护体，大概600威力，可叠加,几率与实战及天书数量有关",
	"Ｗ集气速度+10点",
	"Ｗ使用任何武功高几率连击",
	"Ｗ使用任何武功高几率封穴"
	}
	TFJS[66] = {"Ｌ波斯圣女",
	"Ｗ敌全体移动减三格"
	}
	TFJS[81] = {"Ｌ雪岭双姝",
	"Ｗ战场上可发现食材"
	}
	TFJS[82] = {"Ｌ我为伊狂",
	"Ｗ战场上我方女性角色越多其攻击效果越高",
	"Ｎ",
	"Ｌ玉面孟尝",
	"Ｗ "
	}
	TFJS[107] = {"Ｌ华山门人",
	"Ｗ "
	}
	TFJS[108] = {"Ｌ华山门人",
	"Ｗ "
	}
	TFJS[109] = {"Ｌ华山门人",
	"Ｗ "
	}
	TFJS[165] = {"Ｌ子柳传人",
	"Ｗ "
	}
	TFJS[166] = {"Ｌ太上掌门",
	"Ｗ "
	}
	TFJS[167] = {"Ｌ崆峒五老",
	"Ｗ "
	}
	TFJS[169] = {"Ｌ四大神僧",
	"Ｗ "
	}
	TFJS[170] = {"Ｌ四大神僧",
	"Ｗ "
	}
	TFJS[168] = {"Ｌ崆峒五老",
	"Ｗ "
	}
	TFJS[171] = {"Ｌ武当儒侠",
	"Ｗ使用太极拳或太极剑攻击后自动进入防御状态",
	"Ｎ",
	"Ｌ天赋内功",
	"Ｗ修炼纯阳无极功与九阳神功一脉相承后，天赋内功变为九阳神功"
	}
	TFJS[172] = {"Ｌ武当七侠",
	"Ｗ ",
	"Ｎ",
	"Ｌ天赋内功",
	"Ｗ修炼纯阳无极功与九阳神功一脉相承后，天赋内功变为九阳神功"
	}
	TFJS[173] = {"Ｌ波斯风使",
	"Ｗ "
	}
	TFJS[174] = {"Ｌ波斯云使",
	"Ｗ "
	}
    TFJS[175] = {"Ｌ波斯月使",
	"Ｗ "
	}
	TFJS[54] = {"Ｌ志垂日月",
	"Ｗ基础暴击率提升",
	"Ｗ暴击效果随天书数量提升（仅我方有效）",
	"Ｎ",
	"Ｌ碧血长风",
	"Ｗ本次行动如击退至少一名敌方，则可再次行动",
	"Ｎ",
	"Ｌ金蛇传人",
	"Ｗ使用暗器金蛇锥必定造成3倍伤害",
	"Ｎ",
	"Ｚ＜未解锁＞",
	"Ｗ？？？？？？",
	"Ｗ？？？？？？"
	}
	TFJS["54-1"] = {"Ｌ志垂日月",
	"Ｗ基础暴击率提升",
	"Ｗ暴击效果随天书数量提升（仅我方有效）",
	"Ｎ",
	"Ｌ碧血长风",
	"Ｗ本次行动如击退至少一名敌方，则可再次行动",
	"Ｎ",
	"Ｌ金蛇传人",
	"Ｗ使用暗器金蛇锥必定造成3倍伤害",
	"Ｎ",
	"Ｚ长平公主的眷恋",
	"Ｗ神行百变闪避/减伤几率提高",
	"Ｗ生命值低于30%时，可触发金蛇奥义"
	}
	TFJS[91] = {"Ｌ青青子衿",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ金蛇山洞拔出金蛇剑，洗第一格武功"
	}
	TFJS[83] = {"Ｌ纤纤铁手",
	"Ｗ使用五毒神掌攻击，随机2-5倍威力",
	"Ｗ自带“红袖拂风”加力、护体，500威力，可叠加（几率与天书数、实战相关）",
	"Ｎ",
	"Ｌ五毒教主",
	"Ｗ被攻击无视毒抗使攻击者中毒45~50点",
	"Ｗ用毒能力上限500",
	"Ｎ",
	"Ｌ特技：含沙射影",
	"Ｗ暗器攻击范围提升至7×7方阵"
	}
	TFJS[176] = {"Ｌ五毒教姑",
	"Ｗ "
	}
	TFJS[182] = {"Ｌ五丁手",
	"Ｗ "
	}
	TFJS[183] = {"Ｌ没影子",
	"Ｗ "
	}
	TFJS[184] = {"Ｌ护国真人",
	"Ｗ使用任何武功高几率暴击 "
	}
	TFJS[185] = {"Ｌ神剑仙猿",
	"Ｗ使用任何武功高几率造成封穴"
	}
	TFJS[186] = {"Ｌ神拳无敌",
	"Ｗ "
	}
	TFJS[187] = {"Ｌ八面威风",
	"Ｗ "
	}
	TFJS[188] = {"Ｌ铜笔铁算盘",
	"Ｗ "
	}
	TFJS[77] = {"Ｌ秀外慧中",
	"Ｗ修炼武功秘籍时，兵器值成长翻倍",
	"Ｎ",
	"Ｌ鸳鸯侠女",
	"Ｗ使用夫妻刀法必连击",
	"Ｗ可装备专属武器鸯刀",
	"Ｎ",
	"Ｒ特色指令：慧心",
	"Ｗ回复主角的状态，主角满怒气并满集气",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ河洛客栈收萧中慧时，可重新选择内力属性",
	"Ｗ书剑双线剧情，洗第一格武功",
	"Ｗ鸳鸯岛见萧半和，洗第二格武功"
	}
	TFJS[592] = {"Ｌ料敌先机",
	"Ｗ进入战斗的初始集气位置为1000",
	"Ｎ",
	"Ｌ无我无剑",
	"Ｗ被攻击时，根据敌我御剑系数和内力差值先手反击敌方全体"
	}
	TFJS[92] = {"Ｌ指挥若定",
	"Ｗ在队伍中时，可以在战斗开始前布阵",
	"Ｎ",
	"Ｌ暗香疏影",
	"Ｗ所有攻击无误伤",
	"Ｗ与主角同时在场时，主角集气速度增加2点",
	"Ｎ",
	"Ｚ刀剑归真",
	"Ｗ修炼胡刀或者苗剑后，再修炼另一项时兵器需求降低至60点"
	}
	--韦小宝
	TFJS[601] = {"Ｌ机敏无双",
	"Ｗ战斗开始前50时序，受到的伤害不超过50点",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ鹿鼎记鳌府密室剧情，洗第一、二格武功"
	}
	TFJS[604] = {"Ｌ天元剑气",
	"Ｗ使用剑系武功攻击时，敌方御剑系数以20%计算",
	"Ｎ",
	"Ｌ听风辨位",
	"Ｗ无视敌方的闪避效果（包括刺目，轻功，天赋等）",
	"Ｎ",
	"Ｌ闪电惊鸿",
	"Ｗ暴怒时，使用越女剑法必连击",
	"Ｎ",
	"Ｌ越女剑仙",
	"Ｗ自带“九霄仙息”护体，几率增加自身御剑系数×10点气防",
	"Ｗ每次行动前解除自身内伤中毒"
	}
	TFJS[605] = {"Ｌ惊才绝艳",
	"Ｗ武功威力提高10%，加力/护体/出招几率提高10%，总气攻提高10%",
	"Ｎ",
	"Ｌ姑射仙姿",
	"Ｗ被攻击时必发动\"轻云蔽月\"，免疫攻击10时序，冷却时间50时序",
	"Ｗ攻击时几率发动\"流风回雪\"，本次攻击必定造成冰封"
	}
	--阿凡提
	TFJS[606] = {"Ｌ踏沙无痕",
	"Ｗ移动格数+3，攻击后可以再次移动",
	"Ｎ",
	"Ｌ西域战神",
	"Ｗ拥有专属坐骑毛驴",
	"Ｗ休息时自带蓄力兼防御效果"
	}
	--焦宛儿
	TFJS[607] = {"Ｌ乱世浮萍",
	"Ｗ我方全体连击率提高10%"
	}
	--公孙止
	TFJS[616] = {"Ｌ绝情谷主",
	"Ｗ本方每阵亡一名队友，集气速度增加2点",
	"Ｎ",
	"Ｌ觉醒技：渔网大阵",
	"Ｗ使用阴阳倒乱刃时几率发动大范围极意攻击"
	}
	--裘千尺
	TFJS[617] = {"Ｌ铁掌莲花",
	"Ｗ作为畅想主角时可以获得年轻漂亮的头像贴图"
	}
	--神雕
	TFJS[628] = {"Ｌ雕兄双翼",
	"Ｗ使用玄铁剑法时，有几率发动左右互搏",
	"Ｎ",
	"Ｌ大鹏展翅",
	"Ｗ使用玄铁剑法时，攻击范围变为可移动",
	"Ｎ",
	"Ｌ鹏程万里",
	"Ｗ移动格数+3"
	}
	--阿九
	TFJS[629] = {"Ｌ长平公主",
	"Ｗ每次行动前有60%几率使敌方全体集气位置倒退100"
	}
	--周芷若
	TFJS[631] = {"Ｌ秀若芝兰",
	"Ｗ面板上每个外功增加1点集气，每个内功增加5%减伤",
	"Ｎ",
	"Ｌ谁与争锋",
	"Ｗ装备『倚天剑』时，全部剑法威力+200",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ倚天邪线少林剧情，洗第二格武功，天赋内功洗为九阴神功",
	"Ｗ倚天邪线战三渡时，可领悟左右互搏术"
	}
	TFJS["645-1"] = {
	"Ｌ太极化身",
	"Ｗ包括张三丰本人所有的天赋特性",
	"Ｎ",
	"Ｚ真传：太极领域",
	"Ｗ真张三丰在场时，50%几率敌人攻击会全部吸引到自己身上",
	"Ｗ额外增加200点太极蓄力值与200点八卦蓄力值，并增加太极之形",
	"Ｗ若对方连击发动则反弹一半伤害和所有异常",
	"Ｎ",
	"Ｚ反击技:续.撇身捶",
	"Ｗ在吸引敌人攻击后必然发动，以太极拳全屏反击",
	"Ｗ可与太极之形效果叠加",
	"Ｎ",
	"Ｚ斗神技:太极真解.进步搬拦捶",
	"Ｗ怒气爆发时满足一下条件之一发动：",
	"Ｗ太极之形大于8，八卦值大于100，太极蓄力值大于600",
	"Ｗ发动后大范围攻击敌人，并根据太极之形、八卦值和太极蓄力值",
	"Ｗ大幅增加伤害，若生命值较低则伤害更高",
	"Ｎ",
	"Ｚ斗神技:纯阳真解.龙蛇起陆",
	"Ｗ恢复集气无上限",
	"Ｗ被攻击怒气爆发后几率发动",
	"Ｗ立刻行动，且此次发动攻击的回合有几率恢复所有集气",
	"Ｗ再次发动攻击，并积蓄5点太极之形与500点八卦值",
	"Ｎ",
	}	
	TFJS["645-2"] = {
	"Ｌ顽童化身",
	"Ｗ包括周伯通本人所有的天赋特性",
	"Ｎ",
	"Ｚ左右专精（斗神专属）",
	"Ｗ发动左右互搏后，会50%几率补偿一次额外的左右机会",
	"Ｎ",
	"Ｚ斗神技:真武.空明之武道",
	"Ｗ觉醒后，几率攻击使被攻击者无法发动概率型特效且无法护体",
	"Ｎ",
	"Ｚ斗神技:螺旋七星拳",
	"Ｗ蓄力时必然成功，可比周伯通更快叠加蓄力层数",
	"Ｗ蓄力后根据层数加快集气速度和恢复集气",
	"Ｗ蓄力后攻击会附加与蓄力层数相关的气攻与蓄力层数平方倍",
	"Ｗ相关的拳掌系数伤害，蓄力会被敌方攻击打断而受到杀气惩罚",
	"Ｎ",
	"Ｚ斗神技:大伏魔拳",
	"Ｗ拳法攻击时几率发出，提高25%伤害",
	"Ｗ左右互搏时发动几率更高",
	"Ｎ",
	"Ｎ",
	"Ｚ斗神技:空明守护",
	"Ｗ被攻击时几率发动，豁免34%的伤害，并给于集气惩罚",
	"Ｗ初始三次必然发动",
	"Ｎ",
	}
	TFJS["645-3"] = {
	"Ｌ剑宗化身",
	"Ｗ包括风清扬本人所有的天赋特性",
	"Ｎ",
	"Ｚ九剑真传.攻",
	"Ｗ剑法攻击时必然触发以下特效之一",
	"Ｗ真荡剑式：行动后集气回复500",
	"Ｗ真离剑式：伤害不随攻击距离改变",
	"Ｗ真倒剑式：强行杀气300，且使被攻击者进入集气倒走状态",
	"Ｗ真撩剑式：伤害提高30%且必然暴击",
	"Ｗ几率发动四式合体，同时发动以上所有特效",
	"Ｎ",
	"Ｚ九剑真传.守",
	"Ｗ被攻击时发动破X式",
	"Ｗ随被攻击次数而降低伤害，且给予对方集气惩罚",
	"Ｗ若被对方用同一种类型武学攻击，则免疫伤害和杀气",
	"Ｎ",
	"Ｚ九剑真传.剑意",
	"Ｗ攻击时会随攻击和被攻击次数扩展被锁定攻击人数",
	"Ｗ达到十层时发动奥义",
	"Ｗ全屏攻击且回复生命，内力，部分清除内伤与中毒",
	"Ｎ",
	"Ｚ斗神技:清风剑诀",
	"Ｗ剑法攻击时触发以下特效之一",
	"Ｗ疾风卷劲草：进一步强化回集气，并对自身附加飒踏状态，时序回血",
	"Ｗ烈风点松明：大量杀气，根据对方内力情况和自身御剑系数",
	"Ｗ扣除生命与内力，附加灼烧效果",
	"Ｗ暴风镂鎏金：必暴击，追加一次连击，上限为5，附加剑系伤害，并必破气防",
	"Ｗ飓风吹暮雪：大范围攻击，附加冰封效果",
	"Ｗ附加与自身内力和御剑系数相关的伤害",
	}
	--拳王
	TFJS[281] = {"Ｌ盖世神拳",
	"Ｗ每修炼一个拳法到极，伤害提升5%、受伤害降低5%（上限7个）",
	"Ｗ以拳系天外与武功领悟开启并进阶职业领悟",
	"Ｗ职业领悟一阶后，拳主可根据拳系数提升拳法攻击杀气后的内伤",
	"Ｎ",
	"Ｄ降龙极意",
	"Ｗ使用降龙十八掌有40%几率触发极意",
	"Ｗ使用降龙十八掌有30%几率触发三叠浪，暴怒必触发",
	"Ｎ",
	"Ｄ黯然极意",
	"Ｗ血量低于70%或内伤大于30时，使用黯然销魂掌有几率触发极意",
	"Ｗ血量越低，内伤越高，几率越高，满足条件时暴怒必定触发",
	"Ｗ资质大于等于50，触发黯然极意必出三叠浪",
	"Ｗ资质低于50，触发黯然极意必定连击",
	"Ｎ",
	"Ｄ奔雷铁手",
	"Ｗ动如雷震上限上升到6次",
	"Ｗ职业领悟二阶后，连击时附加真实伤害，随连击次数而逐渐增加，上限为150",
	"Ｎ",
	"Ｚ绝技：天道惊雷撼",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，拳掌系数>=120，使用拳掌武功攻击几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ攻击无误伤，攻击效果提升33.3%，大幅提高封穴几率，追加1200气攻",
    "Ｗ职业领悟三阶后，必然触发如雷，且无视敌人部分防御力",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[282] = {"Ｌ灵犀一指",
	"Ｗ初始自带15%独立封穴几率",
	"Ｗ每修炼一个指法武功到极，封穴几率提高5%（上限7个）",
	"Ｗ使用六脉神剑的内力消耗减半",
	"Ｗ以指系天外与武功领悟开启并进阶职业领悟",
	"Ｗ职业领悟一阶后，将被攻击者叠加深度封穴，如果被攻击者身上带有封穴，则一定时序内封穴不减",
	"Ｗ若被攻击者身上没有封穴，则强行在一定时序内无法集气（奔流除外）",
	"Ｎ",
	"Ｌ特性：大风指",
	"Ｗ其疾如风可触发大风指，所有敌人集气位置降低200",
	"Ｗ职业领悟二阶后增加效果：",
	"Ｗ己方所有人集气全部上升200~400，并且叠加一层飒踏值",
	"Ｎ",
	"Ｚ绝技：点墨山河",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，指法系数>=120，使用指法武功攻击几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ攻击无误伤，不造成怒气，无视护体，同时清除敌方一半怒气，追加1100气攻",
	"Ｗ职业领悟三阶后，根据杀气情况追加封穴，如果封穴大于50，则追加封穴相关的真实伤害",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[283] = {"Ｌ剑神一笑", 
	"Ｗ每修炼一个剑法到极，集气速度+2（上限7个）",
	"Ｗ可无视自宫需求修炼葵花宝典、辟邪剑法",
	"Ｗ可学习独孤九剑",
	"Ｗ以剑系天外与武功领悟（包括阴阳倒乱刃）开启并进阶职业领悟",
	"Ｗ职业领悟一阶后，不同内力属性的剑主附加不同的效果",
	"Ｗ不同内力属性的剑主附加不同的效果：阳内无锋，调和轻羽与阴内利刃",
	"Ｎ",
	"Ｌ特性：迅疾剑意",
	"Ｗ其徐如林不再具有上限，且由如林提升集气速度效果增强",
	"Ｎ",
	"Ｚ绝技：一剑镇神州",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，御剑系数>=120，使用剑系武功攻击几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ攻击无误伤，锁定攻击战场上所有敌方目标，追加1500气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[284] = {"Ｌ傲世狂刀", 
	"Ｗ每修炼一个刀法到极，受伤害、杀气降低5%（上限7个）",
	"Ｗ使用胡家刀法有40%几率触发极意，暴怒必触发",
	"Ｗ使用火焰刀法和沧溟刀法时，特效触发几率追加二次判定",
	"Ｎ",
	"Ｌ特性：流刃若火",
	"Ｗ侵略如火必然附加灼烧效果",
	"Ｎ",
	"Ｚ绝技：羽葬煌炎斩",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，耍刀系数>=120，使用刀系武功攻击几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ攻击无误伤，无视绝对气防，追加1500气攻，行动后自身怒气恢复25点（可叠加）",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[285] = {"Ｌ奇门无双", 
	"Ｗ初始自带15%闪避",
	"Ｗ每修炼一个奇门武功到极，闪避率提高5%（上限7个）",
	"Ｗ打狗棒法『天下无狗』的触发几率提高，追加二次判定",
	"Ｎ",
	"Ｄ特性：虚空绝影",
	"Ｗ绝影闪可几率恢复必然闪避的次数",
	"Ｗ虚空藏可额外恢复内力",
	"Ｎ",
	"Ｚ绝技：千机龙绝闪",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，奇门系数>=120，使用奇门武功攻击几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ攻击无误伤，必定造成流血及封穴，追加1000气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[286] = {"Ｌ绝世天罡", 
	"Ｗ内力属性为天罡，同时拥有阴、阳、调和三种内力属性的特性",
	"Ｗ可使用内功攻击，内功可修炼至极",
	"Ｗ斗转反击时，无视兵器值需求必定发动离合参商",
	"Ｎ",
	"Ｄ天罡真气",
	"Ｗ使用内功攻击时50%几率触发天罡真气，提升气攻",
	"Ｎ",
	"Ｄ特性：斗焰调息",
	"Ｗ不动如山发动后恢复内力和生命",
	"Ｎ",
	"Ｚ天赋内功",
	"Ｗ游戏开始时可以选择九阴/九阳/易筋之一为天赋内功",
	"Ｗ学会天赋内功后，进入战斗会自动运行，无消耗",
	"Ｗ天赋内功不影响正常运功，即可同时运行两种内功",
	"Ｗ手动选择运功时，无法选择九阴/九阳/易筋",
	"Ｎ",
	"Ｚ绝技：斗焰霸罡劲",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，使用内功攻击几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ攻击无误伤，伤害提高30%，兵器值判定必定优势，无视绝对气防，追加1300气攻",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[287] = {"Ｌ仁者无敌", 
	"Ｗ初始道德值100，无法在天宁寺偷钱",
	"Ｗ初始五系兵器值均为40点",
	"Ｗ风林/六如特效发动几率大幅度提高，可同时触发两种效果",
	"Ｎ",
	"Ｄ特性：后发制人",
	"Ｗ难知如阴发动后可立即行动",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[288] = {"Ｌ回天圣手", 
	"Ｗ初始医疗200，解毒200，用毒200；医疗上限400，用毒上限400，解毒上限400",
	"Ｗ医疗范围提升至7×7方阵",
	"Ｗ每时序随机恢复自身生命、内力、中毒、内伤",
	"Ｎ",
	"Ｄ特性：生命奔流",
	"Ｗ临兵冲发动后恢复生命",
	"Ｎ",
	"Ｚ绝技：八门聚万象",
	"Ｗ华山后山觉醒后领悟",
	"Ｗ至少修炼9个武功，体力大于50点，行动结束后几率触发",
	"Ｗ资质越高，触发几率越高",
	"Ｗ发动之后立即获得再次行动机会，需消耗10点体力",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[289] = {"Ｌ欲天摩罗",
	"Ｗ初始解毒300，用毒300；用毒上限500，解毒上限500",
	"Ｗ上毒范围提升至7×7方阵，可以给自己上毒",
	"Ｗ每时序随机增加自身中毒程度",
	"Ｗ自身中毒越深，能力反而越强",
	"Ｎ",
	"Ｄ特性：夜枭击",
	"Ｗ隼旋击附加中毒伤害，随连击层数加强",
	"Ｎ",
	"Ｚ玄冥极意",
	"Ｗ使用玄冥神掌有40%几率触发极意，暴怒必触发",
	"Ｎ",
	"Ｇ福缘际遇",
	"Ｗ可以花一万银两在云岭洞学习\"迷踪步\""
	}
	TFJS[447] = {"Ｌ幻剑（观武后激活）",
	"Ｗ攻击时几率使用幻剑，无视闪避和乾坤反弹",
	"Ｎ",
    "Ｌ伊贺忍者",
	"Ｗ被攻击时几率发动空蝉移动到其他地方避免伤害",
	"Ｎ",
	}
	TFJS[448] = {"Ｌ霸刀（观武后激活）",
	"Ｗ攻击时几率使用绝情斩，无视护体",
	"Ｎ",
    "Ｌ雄霸天下",
	"Ｗ修罗刀法攻击范围增加，且可移动",
	"Ｗ华山观武后修罗刀法威力翻倍",
	"Ｎ",
	}
	TFJS[449] = {"Ｌ无痕公子",
	"Ｗ集气速度根据双倍轻功计算",
	"Ｗ行动后可再次移动",
	"Ｎ",
    "Ｌ漫天花雨洒金钱",
	"Ｗ攻击时几率对所有敌人扣除生命",
	"Ｗ暗器伤害固定为3倍",
	"Ｎ",
	}
	TFJS[450] = {"Ｌ顽童之子（观武后激活）",
	"Ｗ每行动一次，攻击效果提升5%",
	"Ｎ",
    "Ｌ不坏金身",
	"Ｇ攻击后几率进入金刚不坏体",
	"Ｇ在后续30时序内伤害免疫",
	"Ｎ",
	}
	TFJS[516] = {"Ｌ二天一流",
	"Ｗ攻击时几率秒杀对手",
	"Ｎ",
	}
	TFJS[517] = {"Ｌ燕返",
	"Ｗ被攻击时实现三连反击",
	"Ｎ",
	}
	TFJS[643] = {"Ｌ玄冥二老",
	"Ｗ使用玄冥神掌几率使用玄冥极意",
	"Ｎ",
    "Ｌ鹤笔仙翁",
	"Ｗ使用玄冥掌几率使出书的特效，封穴且加大伤害",
	"Ｎ",
   "Ｌ无酒不欢",
	"Ｗ几率闪避",
	"Ｎ",
	}
	TFJS[644] = {"Ｌ玄冥二老",
	"Ｗ使用玄冥神掌几率使用玄冥极意",
	"Ｎ",
    "Ｌ鹿杖仙客",
	"Ｗ使用伏魔杖法几率带出玄冥二阶天外效果",
	"Ｗ使用玄冥神掌暴击时附加额外气攻",
	"Ｎ",
   "Ｌ无女不欢",
	"Ｗ敌方女性角色越多集气速度越快",
	"Ｎ",
	}
	--主角专属介绍
	ZJZSJS = {"Ｌ风林火山功",
	"Ｄ获得方式：拿到七本天书后，场景【华山后山】对话谢无悠",
	"Ｗ战斗中可以触发风/林/火/山四种强力特效",
	"Ｗ其疾如风：攻击时几率触发，我方全体集气位置+100，自身行动后集气恢复500",
	"Ｗ其徐如林：被攻击几率触发，集气速度提高2～3点，上限20点",
	"Ｗ侵略如火：攻击时几率触发，追加3000点气攻",
	"Ｗ不动如山：被攻击几率触发，受到伤害强制降低为30点，并免疫杀气",
	"Ｎ",
	"Ｌ六如苍龙决",
	"Ｄ获得方式：拿到十本天书后，场景【华山后山】挑战谢无悠胜利",
	"Ｗ在风林火山功的基础上，再增加两种特效",
	"Ｗ难知如阴：被攻击几率触发，中断对方的连击，并获得一次移动机会",
	"Ｗ动如雷震：攻击时几率触发，追加一次连击，单次攻击最多触发3次",
	"Ｎ",
	"Ｌ风天流绝技",
	"Ｄ获得方式：标主专属，觉醒之前随天书数量增加特技类型",
	}
	--主角专属介绍
	DSZSJS = {"Ｌ斗神幻化",
	"Ｄ特殊主角的守护英灵，继承被幻化NPC的全部特征",
	"Ｗ同时具有自己的专属天赋",
	"Ｎ",
	"Ｌ真武斗气",
	"Ｄ随天书数量获得的斗气强化",
	"Ｗ可以匹敌六如苍龙诀和太古斗气的强大力量",
	}	
	--物品特效说明
	WPTX = {}
	--玄铁剑
	WPTX[36] = {"使用玄铁剑法时，增加50%暴击率",
	"使用玄铁剑法时，增加60%暴击率",
	"使用玄铁剑法时，增加70%暴击率",
	"使用玄铁剑法时，增加80%暴击率",
	"使用玄铁剑法时，增加90%暴击率",
	"使用玄铁剑法时，必定暴击，并可发动“破尽天下”"
	}
	--倚天剑
	WPTX[37] = {"攻击时70%几率造成流血效果",
	"攻击时80%几率造成流血效果",
	"攻击时90%几率造成流血效果",
	"攻击时必定造成流血效果，并追加5点灼烧",
	"攻击时必定造成流血效果，并追加10点灼烧",
	"攻击时必定造成流血效果，并追加15点灼烧"
	}
	--流星剑
	WPTX[38] = {"攻击时50%几率追加10点冰封效果",
	"攻击时60%几率追加10点冰封效果",
	"攻击时70%几率追加10点冰封效果",
	"攻击时80%几率追加10点冰封效果",
	"攻击时90%几率追加10点冰封效果",
	"攻击时必定追加10点冰封效果"
	}
	--屠龙刀
	WPTX[43] = {"使用刀法攻击时，有几率触发两种特效",
	"使用刀法攻击时，有几率触发两种特效",
	"使用刀法攻击时，有几率触发两种特效",
	"使用刀法攻击时，有几率触发两种特效",
	"使用刀法攻击时，有几率触发两种特效",
	"使用刀法攻击时，有几率触发两种特效"
	}
	--血刀
	WPTX[44] = {"攻击时，恢复造成伤害5%的血量",
	"攻击时，恢复造成伤害6%的血量",
	"攻击时，恢复造成伤害7%的血量",
	"攻击时，恢复造成伤害8%的血量",
	"攻击时，恢复造成伤害9%的血量",
	"攻击时，恢复造成伤害10%的血量"
	}
	--软猬甲
	WPTX[58] = {"减伤20点，被拳指系武功攻击时，使攻击方流血10点",
	"减伤22点，被拳指系武功攻击时，使攻击方流血10点",
	"减伤24点，被拳指系武功攻击时，使攻击方流血10点",
	"减伤26点，被拳指系武功攻击时，使攻击方流血10点",
	"减伤28点，被拳指系武功攻击时，使攻击方流血10点",
	"减伤30点，被拳指系武功攻击时，使攻击方流血10点"
	}
	--乌蚕衣
	WPTX[59] = {"被攻击时，受到的内伤减少5点",
	"被攻击时，受到的内伤减少6点",
	"被攻击时，受到的内伤减少7点",
	"被攻击时，受到的内伤减少8点",
	"被攻击时，受到的内伤减少9点",
	"被攻击时，受到的内伤减少10点"
	}
	--金丝背心
	WPTX[60] = {"被攻击时，受到的封穴减少5点",
	"被攻击时，受到的封穴减少6点",
	"被攻击时，受到的封穴减少7点",
	"被攻击时，受到的封穴减少8点",
	"被攻击时，受到的封穴减少9点",
	"被攻击时，受到的封穴减少10点"
	}
	--鳄皮护甲
	WPTX[61] = {"每次行动结束后解毒25点",
	"每次行动结束后解毒35点",
	"每次行动结束后解毒45点",
	"每次行动结束后解毒55点",
	"每次行动结束后解毒65点",
	"每次行动结束后解毒75点"
	}
	--佛心甲
	WPTX[62] = {"被攻击时，受到的灼烧减少50%",
	"被攻击时，受到的灼烧减少60%",
	"被攻击时，受到的灼烧减少70%",
	"被攻击时，受到的灼烧减少80%",
	"被攻击时，受到的灼烧减少90%",
	"被攻击时，免疫灼烧状态"
	}
	--皮衣
	WPTX[63] = {"被攻击时，受到的冰封减少50%",
	"被攻击时，受到的冰封减少60%",
	"被攻击时，受到的冰封减少70%",
	"被攻击时，受到的冰封减少80%",
	"被攻击时，受到的冰封减少90%",
	"被攻击时，免疫冰封状态"
	}
	--白马
	WPTX[230] = {"集气速度增加2点",
	"集气速度增加2点",
	"集气速度增加3点",
	"集气速度增加3点",
	"集气速度增加4点",
	"集气速度增加4点"
	}
	--真武剑
	WPTX[236] = {"使用太极剑法时，必定连击",
	"使用太极剑法时，必定连击",
	"使用太极剑法时，必定连击",
	"使用太极剑法时，必定连击",
	"使用太极剑法时，必定连击",
	"使用太极剑法时，必定连击"
	}
	--鸳鸯刀
	WPTX[217] = {"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击，追加500气攻",
	"使用夫妻刀法时，必定连击，追加500气攻，伤害提高20%"
	}
	WPTX[218] = {"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击",
	"使用夫妻刀法时，必定连击，追加500气攻",
	"使用夫妻刀法时，必定连击，追加500气攻，伤害提高20%"
	}
	--毛驴
	WPTX[279] = {"集气速度增加10点",
	"集气速度增加10点",
	"集气速度增加10点",
	"集气速度增加10点",
	"集气速度增加10点",
	"集气速度增加10点"
	}
	--西毒蛇杖
	WPTX[244] = {"攻击时无视敌方毒抗强制上毒10点",
	"攻击时无视敌方毒抗强制上毒15点",
	"攻击时无视敌方毒抗强制上毒20点",
	"攻击时无视敌方毒抗强制上毒25点",
	"攻击时无视敌方毒抗强制上毒30点",
	"攻击时无视敌方毒抗强制上毒35点"
	}
	--瘦黄马
	WPTX[284] = {nil,
	nil,
	nil,
	nil,
	nil,
	"血量越低，集气速度越快"
	}
	
	--独孤九剑
	WPTX[114] = "在一定机缘下可领悟九剑真传"
	--六脉神剑
	WPTX[113] = "连击时，伤害、气攻不会减少"
	--夫妻刀法
	WPTX[140] = "连击时，伤害、气攻不会减少"
	--小无相功
	WPTX[75] = "主角修炼时，内力不会调和"
  
	--难度文字
	MODEXZ2 = {"入门", "少侠", "大侠","掌门","宗师","传说"}
	--标主选天赋文字
	TFXZSAY1 = " 天下风云出我辈 * 一入江湖岁月催 * 皇图霸业谈笑中 * 不胜人生一场醉 "
	--石破天太玄招式
	XKXSJ = {"赵客缦胡缨 吴钩霜雪明",  "银鞍照白马 飒沓如流星", "三杯吐然诺 五岳倒为轻","纵死侠骨香 不惭世上英","谁能书阁下 白首太玄经"}

	
	--特色指令
	GRTS = {}
	GRTSSAY = {}
	
	
	GRTS["0-1"] = "斗策"
	GRTSSAY["0-1"] = "效果：使用八部斗策*      给队友带来各种效果*消耗：体力10点"
	--段誉
	GRTS[53] = "凌波"
	GRTSSAY[53] = "效果：至该角色下次行动为止*      被攻击有50%几率闪避*消耗：体力10点"
	
	--虚竹
	GRTS[49] = "催符"
	GRTSSAY[49] = "效果：催动敌人身上的生死符*      使其封穴25时序*消耗：体力5点 内力500点"
	
	--人厨子
	GRTS[89] = "气补"
	GRTSSAY[89] = "效果：回复指定邻接队友体力50点**消耗：体力25点 内力300点"
	
	--张无忌
	GRTS[9] = "挪移"
	GRTSSAY[9] = "效果：将八格范围内的我方任一队友*      挪移到指定位置*消耗：体力10点 内力500点"
	
	--祖千秋
	GRTS[88] = "传功"
	GRTSSAY[88] = "效果：将五格范围内我方任一队友*      当前集气提升500点*消耗：体力10点 内力700点"
  
	--霍青桐
	GRTS[74] = "统率"
	GRTSSAY[74] = "效果：我方全体集气加200点**消耗：体力10点 内力150点"
	
	--王难姑
	GRTS[17] = "施毒"
	GRTSSAY[17] = "效果：周围五格范围内的敌人时序中毒*      持续50时序*消耗：体力15点 内力300点"
	
	--胡青牛
	GRTS[16] = "群疗"
	GRTSSAY[16] = "效果：周围五格范围内的队友时序回内伤*      并按比例回血，持续20时序*消耗：体力15点 内力300点"
	
	--萧中慧
	GRTS[77] = "慧心"
	GRTSSAY[77] = "效果：回复主角的状态，主角满怒气并满集气**消耗：使用后自己将奄奄一息"
	
	--慕容复
	GRTS[51] = "幻梦"
	GRTSSAY[51] = "效果：至该角色下次行动为止*      被攻击必定发动幻梦星辰反击*消耗：体力10点"
	
	--小昭
	GRTS[66] = "影步"
	GRTSSAY[66] = "效果：标记自身周围一点*      被攻击则移动至该处*消耗：体力20点 内力1000点"
	
	--钟灵
	GRTS[90] = "灵貂"
	GRTSSAY[90] = "效果：偷窃敌方携带的物品*      并对其强制上毒50点*消耗：体力5点"
	
	GRTS["90-1"] = "役灵"
	GRTSSAY["90-1"] = "效果：使用灵兽之魂*      给敌人造成各种效果*消耗：体力5-30点"	
	
	--郭襄
	GRTS[626] = "玲珑"
	GRTSSAY[626] = "效果：可自由切换第一格武功为*      弹指神通/玉萧剑法/落英神剑掌*      且不消耗回合"
	
	--胡斐
	GRTS[1] = "飞狐"
	GRTSSAY[1] = "效果：无视障碍物移动*      在战场上来去自如*消耗：体力10点"
	
	--鸠摩智
	GRTS[103] = "幻化"
	GRTSSAY[103] = "效果：使用小无相功模拟天下武学*      必须要拥有对应的秘籍*消耗：体力10点 内力500点"
	
	--黄蓉
	GRTS[56] = "遁甲"
	GRTSSAY[56] = "效果：使用奇门遁甲*      重新布置战场地形效果*消耗：体力10点 内力500点"
	
	--阿紫
	GRTS[47] = "禁药"
	GRTSSAY[47] = "效果：使用禁药刺激神经*      自身每时序损失1%最大血量*      此状态下自身血量越低，伤害/集气越高*      不消耗回合"
	
	CC.Kungfunum = 12;	--人物武功数量
	CC.Skillnum = 6


    CC.JL = {}
    CC.JL[1] ={name = '【医术】本草药师',js='使用医疗指令时增幅医疗效果，制药时节省一半药材，主运后药品可以给队友使用',tupe=1,zl='本草'}
    CC.JL[2] ={name = '【医术】针灸圣手',js='使用医疗指令时可祛除异常，主运后针类暗器可封穴',tupe=1,zl='针砭'}
    CC.JL[3] ={name = '【医术】内息气疗',js='使用医疗指令后可为被医治队友增加护盾，主运后医疗队友时可回复队友内力并推进集气',tupe=1,zl='气疗'}
    CC.JL[4] ={name = '【医术】岐黄之术',js='使用医疗指令后可让被医治队友进入【强疗】状态，主运后自身几率发动生命奔流',tupe=1,zl='岐黄'}
    CC.JL[5] ={name = '【医术】千金要诀',js='使用医疗指令后可对生命低于50%的队友额外治疗，主运后行动后自动给自己医疗',tupe=1,zl='千金'}
    CC.JL[6] ={name = '【毒术】七虫七花',js='使用施毒指令后可让敌人时序降低生命，主运后施毒可让敌人增加失智值',tupe=2,zl='花虫'}
    CC.JL[7] ={name = '【毒术】奇毒索命',js='使用施毒指令后可根据中毒值直接扣除敌人生命，主运后施毒则改为吸取敌人生命治疗自己或生命最少队友',tupe=2,zl='奇毒'}
    CC.JL[8] ={name = '【白打】神拳无敌',js='拳掌威力增加20%，拳掌攻击时增加15%的伤害，主运后增加20%的伤害',tupe=3,zl='神拳'}
    CC.JL[9] ={name = '【白打】刚拳不二',js='拳掌攻击时攻击力判定增加15%，主运后无视敌人10%的防御',tupe=3,zl='刚拳'}	
    CC.JL[10] ={name = '【白打】柔拳连绵',js='拳掌攻击连击几率提升15%，并且连击伤害无衰减，主运后连击几率变为三连',tupe=3,zl='柔拳'}
    CC.JL[11] ={name = '【白打】烈拳无双',js='拳掌攻击暴击率提升15%，主运后拳掌暴击伤害提升50%',tupe=3,zl='烈拳'}
    CC.JL[12] ={name = '【白打】钢铁之躯',js='防御力判定提升15%，并且被连击伤害大幅衰减，主运后被暴击降低伤害',tupe=3,zl='钢躯'}
    CC.JL[13] ={name = '【白打】以炁御体',js='气防提升25%，如果没被杀气则伤害降低25%，主运后内力值加成气防',tupe=3,zl='炁体'}
    CC.JL[14] ={name = '【生活】无酒不欢',js='闪避后恢复集气，暴击伤害上升，主运后战斗中可以饮酒获得buff',tupe=3,zl='酒仙'}
    CC.JL[15] ={name = '【生活】食戟之灵',js='杀死敌人可以获得食材，现有体力可以增幅连击伤害，主运后战斗中可以食用菜肴获得buff',tupe=3,zl='食神'}


--队友攻击加成
CC.AddAtk = {
{10, 15, 50}, 		--金花给范遥加攻
{11, 15, 50}, 		--金花给杨逍加攻
{12, 15, 50}, 		--金花给殷天正加攻
{13, 15, 50}, 		--金花给谢逊加攻
{14, 15, 50}, 		--金花给韦一笑加攻
{48, 47, 100}, 		--阿紫给游坦之加攻
{47, 50, 100}, 		--乔峰给阿紫加攻
{53, 76, 100}, 		--王语嫣给段誉加攻
{79, 36, 60}, 		--林平之给岳灵珊加攻
{74, 75, 50}, 		--陈家洛给霍青桐加攻
{59, 58, 100}, 		--杨过给小龙女加攻
{54, 91, 100}, 		--温青青给袁承志加攻
{629, 54, 100}, 	--袁承志给阿九加攻
{99, 70, 100}, 		--玄慈给叶二娘加攻
{119, 65, 50}, 		--一灯给渔加攻
{120, 65, 50}, 		--一灯给樵加攻
{121, 65, 50}, 		--一灯给耕加攻
{122, 65, 50}, 		--一灯给读加攻
{68, 129, 50}, 		--王重阳给全真七子加攻
{123, 129, 50}, 
{124, 129, 50}, 
{125, 129, 50}, 
{126, 129, 50}, 
{127, 129, 50}, 
{128, 129, 50},
{37, 589, 50},		--狄云、水笙在场，攻各加50
{589, 37, 50},
{88, 89, 50}		--人厨子给祖千秋加攻
}


--队友防御加成
CC.AddDef = {	
{76, 51, 100}, 		--慕容复给王语嫣加防
{55, 56, 50}, 		--黄蓉给郭靖加防
{56, 55, 100}, 		--郭靖给黄蓉加防
{35, 73, 100}, 		--任盈盈给令狐冲加防
{79, 36, 60}, 		--岳灵珊给林平之加防
{73, 35, 50}, 		--令狐冲给任盈盈加防
{74, 75, 50}, 		--陈家洛给霍青桐加防
{58, 59, 50}, 		--小龙女给杨过加防
{59, 58, 50}, 		--杨过给小龙女加防	
{66, 9, 50}, 		--张无忌给小昭加防
{91, 54, 100}, 		--袁承志给温青青加防
{119, 65, 50}, 		--一灯给渔加防
{120, 65, 50}, 		--一灯给樵加防
{121, 65, 50}, 		--一灯给耕加防
{122, 65, 50}, 		--一灯给读加防
{68, 129, 50}, 		--王重阳给全真七子加防
{123, 129, 50}, 
{124, 129, 50}, 
{125, 129, 50}, 
{126, 129, 50}, 
{127, 129, 50}, 
{128, 129, 50},
{37, 589, 50},		--狄云、水笙在场，防各加50
{589, 37, 50}
}

--队友速度加成
CC.AddSpd = {
{25, 35, 50}, 		--令狐冲给蓝凤凰加轻
{90, 53, 50}, 		--段誉给钟灵加轻
{55, 56, 100}, 		--黄蓉给郭靖加轻
{56, 55, 50}, 		--郭靖给黄蓉加轻
{35, 79, 100}, 		--小师妹给令狐加轻
{73, 35, 50}, 		--令狐给盈盈加轻
{74, 75, 50}, 		--陈家洛给霍青桐加轻
{58, 59, 100}, 		--小龙女给杨过加轻
{63, 58, 60}, 		--杨过给程英加轻
{83, 54, 50},		--袁承志给何铁手加轻
{54, 629, 100}, 	--阿九给袁承志加轻
{37, 589, 50},		--狄云、水笙在场，轻各加50
{589, 37, 50},
{89, 88, 50}		--祖千秋给人厨子加攻
}

CC.AddDoc = {
{2, 1, 120}, 		--胡斐给程灵素加医疗
{16, 17, 50}}		--王难姑给胡青牛加医疗

CC.AddPoi = {
{17, 16, 50}}		--胡青牛给王难姑加用毒

--组合名称
CC.COMBO = {
	{1, 2, "海棠烛泪"},
	{4, 72, "狼狈为奸"},
	--{37, 38, "赤诚仁心"},
	--{47, 48, "铁怪毒娇"},
	{51, 76, "姑苏表亲"},
	{53, 76, "仙洞眷侣"},
	--{90, 582, "灵婉双娇"},
	{55, 56, "铁血丹心"},
	--{87, 86, "鹿鼎双妹"},
	{35, 73, "剑胆琴心"},
	{36, 79, "苦命鸳鸯"},
	{75, 74, "巾帼红花"},
	{58, 59, "神雕侠侣"},
	{9, 66, "倚天奇情"},
	{16, 17, "蝶谷怪医"},
	{54, 91, "碧血情侠"},
	{54, 629, "情天长恨"},
	{88, 89, "酒食为天"},
	--{35, 58, "独孤传人"},
	--{83, 25, "五毒五仙"},
	--{35, 29, "酒肉冤家"},
	--{0, 92, "前尘如梦"},
	{37, 589, "雪山隐士"},
	--{38, 661, "金乌玉兔"},
	--{29, 591, "风流浪荡"},
	--{10, 11, "逍遥二仙"},
	--{162, 163, "不三不四"},
	--{60, 61, "雪山白驼"},
	--{620, 61, "雪山白驼"},
	--{51, 113, "燕国遗脉"},
	--{50, 112, "大辽战神"},
	--{3, 621, "刀剑双绝"},
	--{632, 633, "人淡如菊"},
	--{616, 635, "情义无解"},	
	--{77, 625, "女貌郎才"},		
	{643, 644, "玄冥二老"},	
	--{663, 664, "义重情深"},	
	--{9, 638, "情深不寿"},
	--{9, 639, "张郎画眉"},
	{592, 604, "剑试天宵"}
}

	CC.CoupleDisplay = 0;
	
	--显示组合动画开关
	if CONFIG.CoupleDisplay == 1 then
		CC.CoupleDisplay = 1;
	end

--护盾
CC.HD = {}
CC.HD[1] = {name = '坐忘无我',tt = 2032,tt1 = 2042,sm = '周身释放一个吸收（武功等级+基础内功）*0.8点伤害的真气防护罩，防护罩消失前，所受初始伤害降低伤害３０％'}
CC.HD[2] = {name = '菩提金身',tt = 2411,tt1 = 2422,sm = '受到的连击暴击伤害减少70%'}
CC.HD[3] =  {name = '先罡气',tt = 1305,tt1 = 1324,sm = '以护盾抵消伤害'}	

CC.DOUQI = {}
CC.DOUQI[1] = {name = '刚拳斗气',tt = 1715,tt1 = 1731,sm = '以护盾抵消伤害'}
CC.DOUQI[2] = {name = '天罡斗气',tt = 2411,tt1 = 2422,sm = '受到的连击暴击伤害减少70%'}
CC.DOUQI[3] =  {name = '先罡气',tt = 1305,tt1 = 1324,sm = '以护盾抵消伤害'}	
	--文字颜色定义
	CC.Color = {["R"]=C_RED, ["G"]=M_Green, ["B"]=M_Blue}
  
	--是否显示滚动提醒，1打开，0关闭
	CC.OpenTimmerRemind = 0;
  
	--windows版本默认是打开
	if CONFIG.Operation == 0 then
		CC.OpenTimmerRemind = 1;
	end
	
	require("MyOEvent");
end

