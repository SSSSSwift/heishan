
--����ȫ�ֱ���CC��������Ϸ��ʹ�õĳ���
function SetGlobalConst()

	--�޾Ʋ���������������SDL2���룬�������ÿ�ݼ�
	VK_ESCAPE=27
	VK_SPACE=32				--ע������Ŀո�ʵ���ϲ���Ҫ���壬��Ϊ�ײ���Զ��ѿո�ת���ɻس�
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
		
	-- ��Ϸ����ɫ����
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
	-- ��Ϸ����ɫ����
	C_WSTM = RGB(0, 0, 0)  --���������	
	C_CYGOLD = RGB(216, 214, 175)  --���������
	C_STARTMENU = RGB(132, 0, 4)
	C_RED = RGB(216, 20, 24) --��
	C_WHITE = RGB(236, 236, 236) --��
	C_ORANGE = RGB(252, 148, 16) --��ɫ
	C_GOLD = RGB(236, 200, 40) --��
	C_BLACK = RGB(0, 0, 0) --��ɫ
	M_Black = RGB(0, 0, 0) --��ɫ
	M_Sienna = RGB(160, 82, 45) --��ɫ
	M_DarkOliveGreen = RGB(85, 107, 47)--���� 
	M_DarkGreen = RGB(0, 100, 0) --����
	M_DarkSlateBlue = RGB(72, 61, 139) --���Ұ�����ɫ
	M_Navy = RGB(0, 0, 128) --������
	M_Indigo = RGB(75, 0, 130) --����ɫ
	M_DarkSlateGray = RGB(47, 79, 79) --����ɫ
	M_DarkRed = RGB(139, 0, 0) -- ���
	M_DarkOrange = RGB(255, 140, 0) --����ɫ
	M_Olive = RGB(128, 128, 0) --���ɫ
	M_Green = RGB(0, 128, 0) --��
	M_Teal = RGB(0, 128, 128) --ˮ��
	M_Blue = RGB(0, 0, 255) --��
	M_SlateGray = RGB(112, 128, 144) --��ʯ
	M_DimGray = RGB(105, 105, 105) --����
	M_Red = RGB(255, 0, 0) --��
	M_SandyBrown = RGB(244, 164, 96) --�ƺ�ɫ
	M_YellowGreen = RGB(154, 205, 50) --����
	M_SeaGreen = RGB(46, 139, 87) --����
	M_MediumTurquoise = RGB(72, 209, 204) --��ʯ��
	M_RoyalBlue = RGB(65, 105, 225) --����ɫ
	M_Purple = RGB(128, 0, 128) -- ��
	M_Gray = RGB(128, 128, 128) --��
	M_Magenta = RGB(255, 0, 255) --���
	M_Orange = RGB(255, 165, 0) --��ɫ
	M_Yellow = RGB(255, 255, 0) --��
	M_Lime = RGB(0, 255, 0)  --ʯ��
	M_Cyan = RGB(0, 255, 255) --��ɫ/����
	M_DeepSkyBlue = RGB(0, 191, 255) --������
	M_DarkOrchid = RGB(153, 50, 204) --�������� 
	M_Silver = RGB(192, 192, 192) --��ɫ
	M_Pink = RGB(255, 192, 203) -- ��
	M_Wheat = RGB(245, 222, 179) --С��ɫ
	M_Wheat2 = RGB(205, 182, 139) --С��ɫ
	M_LemonChiffon = RGB(255, 250, 205) --����ɫ
	M_PaleGreen = RGB(152, 251, 152) -- ����
	M_PaleTurquoise = RGB(175, 238, 238) -- ��ʯ��
	M_LightBlue = RGB(173, 216, 230)   --ǳ��
	M_Plum = RGB(221, 160, 221) --�Ϻ�����
	M_White = RGB(255, 255, 255) --��
	MilkWhite =RGB(255, 255, 204)  --�̰�
	LimeGreen = RGB(100,200, 90) -- �һ���
	Lime = RGB(0,255,0) --ʯ��
	LightGreen = RGB(144,238,144)  --ǳ��
	LightSkyBlue = RGB(135,206,250) --�����
	green1 = RGB(145, 235, 45)  --��ɫ1
	OliveDrab = RGB(107, 142, 35) --�̺�ɫ
	Snow3 = RGB(205, 201, 201) --ѩ��
	grey21 = RGB(54, 54, 54)  --��
	LightSlateBlue = RGB(132, 112, 255) -- ǳʯ��
	Violet = RGB(208, 152, 208) -- ������
	PinkRed = RGB(255, 102, 102) --�ۺ�
	LightPurple = RGB(165, 28, 218) --����
	Color_Hurt1 = RGB(255, 215, 0) --��
	TG_Red = RGB(216, 20, 24) --��ɫ
	TG_Red_Bright = RGB(248, 40, 44) --����
	Dark_Gold = RGB(216, 180, 20) -- �ڽ�
	S_Yellow = RGB(245, 215, 15) --���
	LightYellow = RGB(255, 242, 204)  --ǳ��
	LightYellow2 = RGB(255, 229, 153)  --ǳ��
	LightYellow3 = RGB(255, 217, 102)  --ǳ��2
	-- ��Ϸ״̬����
    GAME_START =0       --��ʼ����
    GAME_FIRSTMMAP = 1  --��һ����ʾ����ͼ
    GAME_MMAP =2;       --����ͼ
    GAME_FIRSTSMAP = 3  --��һ����ʾ����ͼ
    GAME_SMAP =4;       --������ͼ
    GAME_WMAP =5;       --ս����ͼ
	GAME_DEAD =6;       --��������
    GAME_END  =7;       --����
    GAME_NEWNAME = 8;		--��������Ϸ
	
	
	--��Ϸ����ȫ�ֱ���
	CC={};				--������Ϸ��ʹ�õĳ�������Щ�������޸���Ϸʱ�޸�֮

	--ʵ�ʵ���Ļ������߶�
	CC.ScreenW=lib.GetScreenW();		--��ʾ���ڿ���
    CC.ScreenH=lib.GetScreenH();

	CC.SrcCharSet=0;					--Դ������ַ��� 0 gb  1 big5������ת��R���� ���Դ�뱻ת��Ϊbig5����Ӧ��Ϊ1
	CC.OSCharSet=CONFIG.CharSet;		--OS �ַ�����-1 ϵͳ�жϣ�0 GB, 1 Big5
	CC.FontName=CONFIG.FontName;		--��ʾ����

	--�����¼�ļ�����S��D�����ǹ̶���С����˲��ٶ���idx�ˡ�
	CC.R_IDXFilename = {[0] = CONFIG.DataPath .. "ranger.idx"}
	CC.R_GRPFilename = {[0] = CONFIG.DataPath .. "ranger.grp"}
	CC.S_Filename = {[0] = CONFIG.DataPath .. "allsin.grp"}
	CC.D_Filename = {[0] = CONFIG.DataPath .. "alldef.grp"}
	
	CC.SavePath = CONFIG.DataPath .. "save/";
	CC.R_GRP = CC.SavePath.."r%d.grp"
	CC.S_GRP = CC.SavePath.."s%d.grp"
	CC.D_GRP = CC.SavePath.."d%d.grp"
	CC.SaveNum = 10;			--�浵����Ϊ10

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

	--������ͼ�ļ���������ֻ�����ļ�������չ������Ϊidx/grp
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
  
	CC.CircleNum = 1;		--��Ŀ��

	--�����¼�ļ�R���ṹ��  lua��֧�ֽṹ���޷�ֱ�ӴӶ������ļ��ж�ȡ�������Ҫ��Щ���壬��table�в�ͬ������������ṹ��
	CC.TeamNum=15;          --��������
	CC.MyThingNum=300      --������Ʒ����
	
	CC.ItemInfoPath = CONFIG.ScriptPath .. "ItemInfo/"
	
	--�汾��
	CC.Version="�汾 3.0"
   
	--��̬��ʾ��ʾ
	CC.Timer={
						stime=0,
						status=0,
						str='',
						len=0,
						fun=demostr,
					};
	--��̬��ʾ������
	CC.RUNSTR={
							'��ݼ� F1-���� F3-���� F4-������Ʒ H-�ؼ�',
							'������һЩ���ѣ�������������ս��������',
							'�������¼�����޽�ӹ�����и������벻���Ķ���',
							'������С��Ѷ��Ѻ�����������ߵ�30���ٳ�������',
							'С��ĳ��������¯�������������������������޵�ҩƷ'
						};
   

	CC.Base_S={};         --����������ݵĽṹ���Ա��Ժ��ȡ
	CC.Base_S["�˴�"]={0,0,2}   -- ��ʼλ��(��0��ʼ)����������(0�з��� 1�޷��ţ�2�ַ���)������
	CC.Base_S["����"]={2,0,2};
	CC.Base_S["��X"]={4,0,2};
	CC.Base_S["��Y"]={6,0,2};
	CC.Base_S["��X1"]={8,0,2};
	CC.Base_S["��Y1"]={10,0,2};
	CC.Base_S["�˷���"]={12,0,2};
	CC.Base_S["��X"]={14,0,2};
	CC.Base_S["��Y"]={16,0,2};
	CC.Base_S["��X1"]={18,0,2};
	CC.Base_S["��Y1"]={20,0,2};
	CC.Base_S["������"]={22,0,2};
	CC.Base_S["�Ѷ�"]={24,0,2};
	CC.Base_S["��׼"]={26,0,2};
	CC.Base_S["����"]={28,0,2};
	CC.Base_S["����"]={30,0,2};
	CC.Base_S["��������"]={32,0,2};
	CC.Base_S["����"]={34,0,2};
	CC.Base_S["����"]={36,0,2};
	for i=1,CC.TeamNum do
		CC.Base_S["����" .. i]={38+2*(i-1),0,2};
	end

	for i=1,CC.MyThingNum do
		CC.Base_S["��Ʒ" .. i]={68+4*(i-1),0,2};
		CC.Base_S["��Ʒ����" .. i]={68+4*(i-1)+2,0,2};
	end

    CC.PersonSize=298;   --ÿ����������ռ���ֽ�
    CC.Person_S={};      --�����������ݵĽṹ���Ա��Ժ��ȡ
    CC.Person_S["����"]={0,0,2}
    CC.Person_S["ͷ�����"]={2,0,2}
    CC.Person_S["��������"]={4,0,2}
    CC.Person_S["����"]={6,0,2}
    CC.Person_S["����"]={8,2,10}
    CC.Person_S["���"]={18,2,10}
    CC.Person_S["�Ա�"]={28,0,2}
    CC.Person_S["�ȼ�"]={30,0,2}
    CC.Person_S["����"]={32,1,2}
    CC.Person_S["����"]={34,0,2}
    CC.Person_S["�������ֵ"]={36,0,2}
    CC.Person_S["���˳̶�"]={38,0,2}
    CC.Person_S["�ж��̶�"]={40,0,2}
    CC.Person_S["����"]={42,0,2}
    CC.Person_S["��Ʒ��������"]={44,0,2}
    CC.Person_S["����"]={46,0,2}
    CC.Person_S["����"]={48,0,2}

	for i=1,5 do
		CC.Person_S["���ж���֡��" .. i]={50+2*(i-1),0,2};
        CC.Person_S["���ж����ӳ�" .. i]={60+2*(i-1),0,2};
        CC.Person_S["�书��Ч�ӳ�" .. i]={70+2*(i-1),0,2};
	end

    CC.Person_S["��������"]={80,0,2}
    CC.Person_S["����"]={82,0,2}
    CC.Person_S["�������ֵ"]={84,0,2}
    CC.Person_S["������"]={86,0,2}
    CC.Person_S["�Ṧ"]={88,0,2}
    CC.Person_S["������"]={90,0,2}
    CC.Person_S["ҽ������"]={92,0,2}
    CC.Person_S["�ö�����"]={94,0,2}
    CC.Person_S["�ⶾ����"]={96,0,2}
    CC.Person_S["��������"]={98,0,2}
    CC.Person_S["ȭ�ƹ���"]={100,0,2}
	CC.Person_S["ָ������"]={102,0,2}
    CC.Person_S["��������"]={104,0,2}
    CC.Person_S["ˣ������"]={106,0,2}
    CC.Person_S["�������"]={108,0,2}
    CC.Person_S["��������"]={110,0,2}
    CC.Person_S["��ѧ��ʶ"]={112,0,2}
    CC.Person_S["Ʒ��"]={114,0,2}
    CC.Person_S["��������"]={116,0,2}
    CC.Person_S["���һ���"]={118,0,2}
    CC.Person_S["����"]={120,0,2}
    CC.Person_S["����"]={122,0,2}
    CC.Person_S["������Ʒ"]={124,0,2}
    CC.Person_S["��������"]={126,0,2}

    for i=1,12 do
        CC.Person_S["�书" .. i]={128+2*(i-1),0,2};
        CC.Person_S["�书�ȼ�" .. i]={152+2*(i-1),0,2};
    end

    for i=1,4 do
        CC.Person_S["Я����Ʒ" .. i]={176+2*(i-1),0,2};
        CC.Person_S["Я����Ʒ����" .. i]={184+2*(i-1),0,2};
    end
	
	for i=1,4 do
		CC.Person_S["�츳�⹦"..i]={192+2*(i-1),0,2};
	end
	
	CC.Person_S["�츳�ڹ�"]={200,0,2}
	CC.Person_S["�츳�Ṧ"]={202,0,2}
	CC.Person_S["ʵս"]={204,0,2}
	CC.Person_S["��ս"]={206,0,2}
	CC.Person_S["��ս"]={208,0,2}
	CC.Person_S["�����ڹ�"]={210,0,2}
	CC.Person_S["�����Ṧ"]={212,0,2}
	CC.Person_S["�������"]={214,0,2}
	CC.Person_S["���˾���"]={216,0,2}
	CC.Person_S["����ֽ�"]={218,0,2}
	CC.Person_S["���2"]={220,2,10}
	CC.Person_S["����̶�"]={230,0,2}
	CC.Person_S["Ѫ������"]={232,0,2}
	CC.Person_S["�۽�����"]={234,0,2}
	CC.Person_S["���ճ̶�"]={236,0,2}
	CC.Person_S["��Ϊģʽ"]={238,0,2}
	CC.Person_S["����ʹ��"]={240,0,2}
	CC.Person_S["�Ƿ��ҩ"]={242,0,2}
	CC.Person_S["������ֵ"]={244,0,2}
	CC.Person_S["������ֵ"]={246,0,2}
	CC.Person_S["������ֵ"]={248,0,2}
	CC.Person_S["�����Զ�"]={250,0,2}
	CC.Person_S["��ɫָ��"]={252,0,2}
	CC.Person_S["�������"]={254,0,2}
	CC.Person_S["����"]={256,0,2}
	CC.Person_S["������"]={258,0,2}
	CC.Person_S["ǹ������"]={260,0,2}
	CC.Person_S["����1"]={262,0,2}
	CC.Person_S["����2"]={264,0,2}
	CC.Person_S["����3"]={266,0,2}
	CC.Person_S["����4"]={268,0,2}
	CC.Person_S["����5"]={270,0,2}
	CC.Person_S["����6"]={272,0,2}
	CC.Person_S["���˼���"]={274,0,2}
	CC.Person_S["��Ʒ"]={276,0,2}
	CC.Person_S["�츳1"]={278,0,2}
	CC.Person_S["�츳2"]={280,0,2}
	CC.Person_S["�츳3"]={282,0,2}
	CC.Person_S["�츳4"]={284,0,2}
	CC.Person_S["�츳5"]={286,0,2}
	CC.Person_S["�츳6"]={288,0,2}
	CC.Person_S["�츳7"]={290,0,2}
	CC.Person_S["�츳8"]={292,0,2}
	CC.Person_S["�츳9"]={294,0,2}
	CC.Person_S["�츳10"]={296,0,2}

	
    CC.ThingSize=200;   --ÿ����������ռ���ֽ�
    CC.Thing_S={};
    CC.Thing_S["����"]={0,0,2}
    CC.Thing_S["����"]={2,2,20}
    CC.Thing_S["����2"]={22,2,20}
    CC.Thing_S["��Ʒ˵��"]={42,2,30}
    CC.Thing_S["�����书"]={72,0,2}
    CC.Thing_S["�����������"]={74,0,2}
    CC.Thing_S["ʹ����"]={76,0,2}
    CC.Thing_S["װ������"]={78,0,2}
    CC.Thing_S["��ʾ��Ʒ˵��"]={80,0,2}
    CC.Thing_S["����"]={82,0,2}
    CC.Thing_S["δ֪5"]={84,0,2}
    CC.Thing_S["δ֪6"]={86,0,2}
    CC.Thing_S["��������"]={88,0,2}
    CC.Thing_S["������"]={90,0,2}
    CC.Thing_S["���������ֵ"]={92,0,2}
    CC.Thing_S["���ж��ⶾ"]={94,0,2}
    CC.Thing_S["������"]={96,0,2}
    CC.Thing_S["�ı���������"]={98,0,2}
    CC.Thing_S["������"]={100,0,2}

    CC.Thing_S["���������ֵ"]={102,0,2}
    CC.Thing_S["�ӹ�����"]={104,0,2}
    CC.Thing_S["���Ṧ"]={106,0,2}
    CC.Thing_S["�ӷ�����"]={108,0,2}
    CC.Thing_S["��ҽ������"]={110,0,2}
    CC.Thing_S["���ö�����"]={112,0,2}
    CC.Thing_S["�ӽⶾ����"]={114,0,2}
    CC.Thing_S["�ӿ�������"]={116,0,2}
    CC.Thing_S["��ȭ�ƹ���"]={118,0,2}
	CC.Thing_S["��ָ������"]={120,0,2}	
    CC.Thing_S["����������"]={122,0,2}
    CC.Thing_S["��ˣ������"]={124,0,2}
    CC.Thing_S["���������"]={126,0,2}
    CC.Thing_S["�Ӱ�������"]={128,0,2}
    CC.Thing_S["����ѧ��ʶ"]={130,0,2}
    CC.Thing_S["��Ʒ��"]={132,0,2}

    CC.Thing_S["�ӹ�������"]={134,0,2}
    CC.Thing_S["�ӹ�������"]={136,0,2}
    CC.Thing_S["����������"]={138,0,2}
    CC.Thing_S["����������"]={140,0,2}
    CC.Thing_S["������"]={142,0,2}
    CC.Thing_S["�蹥����"]={144,0,2}
    CC.Thing_S["���Ṧ"]={146,0,2}
    CC.Thing_S["���ö�����"]={148,0,2}
    CC.Thing_S["��ҽ������"]={150,0,2}
    CC.Thing_S["��ⶾ����"]={152,0,2}
    CC.Thing_S["��ȭ�ƹ���"]={154,0,2}	
	CC.Thing_S["��ָ������"]={156,0,2}	
    CC.Thing_S["����������"]={158,0,2}
    CC.Thing_S["��ˣ������"]={160,0,2}
    CC.Thing_S["���������"]={162,0,2}
    CC.Thing_S["�谵������"]={164,0,2}

    CC.Thing_S["������"]={166,0,2}
    CC.Thing_S["�辭��"]={168,0,2}
    CC.Thing_S["������Ʒ�辭��"]={170,0,2}
    CC.Thing_S["�����"]={172,0,2}

    for i=1,5 do
		CC.Thing_S["������Ʒ" .. i]={174+2*(i-1),0,2};
		CC.Thing_S["��Ҫ��Ʒ����" .. i]={184+2*(i-1),0,2};
	end
	 
	CC.Thing_S["�Ƿ���Ч"]={194,0,2}
	CC.Thing_S["װ������"]={196,0,2}
	CC.Thing_S["װ���ȼ�"]={198,0,2}

    CC.SceneSize=54;   --ÿ����������ռ���ֽ�
    CC.Scene_S={};
    CC.Scene_S["����"]={0,0,2}
    CC.Scene_S["����"]={2,2,10}
    CC.Scene_S["��������"]={12,0,2}
    CC.Scene_S["��������"]={14,0,2}
    CC.Scene_S["��ת����"]={16,0,2}
    CC.Scene_S["��������"]={18,0,2}
    CC.Scene_S["�⾰���X1"]={20,0,2}
    CC.Scene_S["�⾰���Y1"]={22,0,2}
    CC.Scene_S["�⾰���X2"]={24,0,2}
    CC.Scene_S["�⾰���Y2"]={26,0,2}
    CC.Scene_S["���X"]={28,0,2}
    CC.Scene_S["���Y"]={30,0,2}
    CC.Scene_S["����X1"]={32,0,2}
    CC.Scene_S["����X2"]={34,0,2}
    CC.Scene_S["����X3"]={36,0,2}
    CC.Scene_S["����Y1"]={38,0,2}
    CC.Scene_S["����Y2"]={40,0,2}
    CC.Scene_S["����Y3"]={42,0,2}
    CC.Scene_S["��ת��X1"]={44,0,2}
    CC.Scene_S["��ת��Y1"]={46,0,2}
    CC.Scene_S["��ת��X2"]={48,0,2}
    CC.Scene_S["��ת��Y2"]={50,0,2}
	CC.Scene_S["��������"]={52,0,2}

    CC.WugongSize=140;   --ÿ���书����ռ���ֽ�
    CC.Wugong_S={};
    CC.Wugong_S["����"]={0,0,2}
    CC.Wugong_S["����"]={2,2,10}
    CC.Wugong_S["δ֪1"]={12,0,2}
    CC.Wugong_S["δ֪2"]={14,0,2}
    CC.Wugong_S["δ֪3"]={16,0,2}
    CC.Wugong_S["���ϵ��"]={18,0,2}
    CC.Wugong_S["�ٻ�ϵ��"]={20,0,2}
    CC.Wugong_S["������Ч"]={22,0,2}
    CC.Wugong_S["�书����"]={24,0,2}
    CC.Wugong_S["�书����&��Ч"]={26,0,2}
    CC.Wugong_S["�˺�����"]={28,0,2}
    CC.Wugong_S["������Χ"]={30,0,2}
    CC.Wugong_S["������������"]={32,0,2}
    CC.Wugong_S["�����ж�����"]={34,0,2}

    for i=1,10 do
		CC.Wugong_S["������" .. i]={36+2*(i-1),0,2};
		CC.Wugong_S["�ƶ���Χ" .. i]={56+2*(i-1),0,2};
		CC.Wugong_S["ɱ�˷�Χ" .. i]={76+2*(i-1),0,2};
		CC.Wugong_S["������" .. i]={96+2*(i-1),0,2};
		CC.Wugong_S["ɱ����" .. i]={116+2*(i-1),0,2};
    end
	 
	CC.Wugong_S["����ϵ��"]={136,0,2}
	CC.Wugong_S["����ϵ��"]={138,0,2}

	CC.ShopSize=36;   --ÿ��С���̵�����ռ���ֽ�
	CC.Shop_S={};
	for i=1,6 do
		CC.Shop_S["��Ʒ" .. i]={0+2*(i-1),0,2};
		CC.Shop_S["��Ʒ����" .. i]={12+2*(i-1),0,2};
		CC.Shop_S["��Ʒ�۸�" .. i]={24+2*(i-1),0,2};
	end

	CC.ShopScene={};       --С���̵곡�����ݣ�sceneid ����id��d_shop С��λ��D*, d_leave С���뿪D*��һ���ڳ������ڣ�·������
	CC.ShopScene[0]={sceneid=1,d_shop=16,d_leave={17,18}, };
	CC.ShopScene[1]={sceneid=3,d_shop=14,d_leave={15,16}, };
	CC.ShopScene[2]={sceneid=40,d_shop=20,d_leave={21,22}, };
	CC.ShopScene[3]={sceneid=60,d_shop=16,d_leave={17,18}, };
	CC.ShopScene[4]={sceneid=61,d_shop=9,d_leave={10,11,12}, };


	--��������
	CC.MWidth=480;       --����ͼ��
	CC.MHeight=480;      --����ͼ��

	CC.SWidth=64;     --�ӳ�����ͼ��С
	CC.SHeight=64;

	CC.DNum=200;       --D*ÿ���������¼���

	CC.XScale=CONFIG.XScale;    --��ͼһ��Ŀ���
	CC.YScale=CONFIG.YScale;


	CC.Frame=CONFIG.FrameRate;     --ÿ֡������
	CC.BattleDelay=CONFIG.BattleDelay;     --ս��������ʾ���ӳ٣����룩

	CC.SceneMoveFrame=100;           --�����ƶ�֡�٣����ڳ����ƶ��¼�
	CC.PersonMoveFrame=100;          --�����ƶ��ٶȣ����������ƶ��¼�
	CC.AnimationFrame=150;           --������ʾ֡�٣�������ʾ�����¼�

	CC.WarAutoDelay=300;                   --�Զ�ս��ʱ��ʾͷ�����ʱ

	CC.DirectX={0,1,-1,0};  --��ͬ����x��y�ļӼ�ֵ��������·�ı�����ֵ
	CC.DirectY={-1,0,0,1};

	CC.MyStartPicM=2501;      --��������·��ʼ��ͼ
	CC.MyStartPicF=5001;      --Ů������·��ʼ��ͼ
	CC.BoatStartPic=3715;    --����ʼ��ͼ

	CC.Level=30;                  ---����ȼ���ÿ�ȼ�����
	CC.Exp={   50,    150,     300 ,500   , 750 ,
               1050,  1400,   1800 ,2250  , 2750 ,
               3850,  5050,   6350 ,7750  , 9250 ,
               10850, 12550, 14350 ,16750 , 18250 ,
               21400, 24700, 28150 ,31750 , 35500 ,
	           39400, 43450, 47650 ,52000 , 60000 , [0] = 0 };

    CC.MMapBoat={};    --����ͼ�����Խ������ͼ
	local tmpBoat={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x3f8,0x3fe},};
    for i,v in ipairs(tmpBoat) do      --����Щ���ݱ任�����飬������ֵ���ǿ��Խ���
        for j=v[1],v[2],2 do
            CC.MMapBoat[j]=1;
        end
    end
	--Alungky ������������ʱ����ʾΪ�˵�����
	local tmpForbid={{0x264,0x29E}}
    for i,v in ipairs(tmpForbid) do    
        for j=v[1],v[2],2 do
			CC.MMapBoat[j]=1;
        end
    end

    CC.SceneWater={};    --�����˲��ܽ������ͼ
    local tmpWater={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x332,0x338},
                     {0x346,0x346},{0x3a6,0x3a8},{0x3f8,0x3fe},{0x52c,0x544},};
    for i,v in ipairs(tmpWater) do      --����Щ���ݱ任�����飬���п�����ǿ��Խ������ͼ
        for j=v[1],v[2],2 do
            CC.SceneWater[j]=1;
        end
    end

    CC.WarWater={};    --ս����ͼ�˲��ܽ������ͼ
    local tmpWater={ {0x166,0x16a},{0x176,0x17c},{0x1ca,0x1d0},{0x1fa,0x262},{0x332,0x338},
                     {0x346,0x346},{0x3a6,0x3a8},{0x3f8,0x3fe},{0x52c,0x544},};
    for i,v in ipairs(tmpWater) do      --����Щ���ݱ任�����飬���п�����ǿ��Խ������ͼ
        for j=v[1],v[2],2 do
            CC.WarWater[j]=1;
        end
    end

--�书��ʽ
CC.KFMove={}
--��ң��3��
CC.KFMove[2]={
{'�����ſ�',600},
{'�����в�',600},
{'��������',600}
}
--�嶾����1��
CC.KFMove[3]={
{'�嶾����',700}
}
--ӥצ��6��
CC.KFMove[4]={
	{'��������',700},
	{'���ճ���',700},
	{'ˮ������',800},
	{'�����ױ',800},
	{'������̲',900},
	{'������',900}
}
--��������1��
CC.KFMove[5]={
{'��������',700}
}
--��Ůȭ��3��
CC.KFMove[6]={
{'�������',700},
{'�ļ��麺',700},
{'ľ���乭',700}
}
--����1��
CC.KFMove[7]={
{'���಻��',700}
}
--��ɽ������3��
CC.KFMove[8]={
{'�������',900},
{'������ѩ',900},
{'��������',900}
}
--����ѩɽ��1��
CC.KFMove[9]={
{'ѩɽ����',800}
}
--�ٻ���ȭ2��
CC.KFMove[10]={
{'�컨����',800},
{'�������',800}
}
--�����׹�צ1��
CC.KFMove[11]={
{'ڤ������',1100}
}
--��Ӣ����3��
CC.KFMove[12]={
{'��ӣ�ͷ�',900},
{'�꼱���',900},
{'���Ƿɻ�',900}
}
--����1��
CC.KFMove[13]={
{'����ǧ��',900}
}
--��ɽ��÷��2��
CC.KFMove[14]={
{'̤ѩ��÷',1200},
{'��ɽ����',1200}
}
--����ȭ3��
CC.KFMove[15]={
{'�������',1200},
{'�����п�',1200},
{'�տ���Ҳ',1200}
}
--̫��ȭ3��
CC.KFMove[16]={
{'�ϲ�Ұ������',1000},
{'�Ჽ��̽��',1000},
{'�׺�����',1000}
}
--һ��ָ3��
CC.KFMove[17]={
{'��ָ����',1200},
{'ָʸ����',1200},
{'��΢����',1200}
}
--��ָ��ͨ2��
CC.KFMove[18]={
{'��ָһ˲',1200},
{'̤���㻪',1200}
}
--����ָ1��
CC.KFMove[19]={
{'ħ������',1000}
}
--��צ��1��
CC.KFMove[20]={
{'��Ȼ����',1000}
}
--��ڤ����2��
CC.KFMove[21]={
{'��ڤ����',1100},
{'��������',1100}
}
--������3��
CC.KFMove[22]={
{'��������',1000},
{'���Ǳ���',1000},
{'�ػ�ȼ�',1000}
}
--����ȭ2��
CC.KFMove[23]={
{'���뾫ʧ',1000},
{'��������',1000}
}
--����ɽ����3��
CC.KFMove[24]={
{'ɫ������',1200},
{'��ɫ����',1200},
{'������',1200}
}
--��Ȼ������6��
CC.KFMove[25]={
{'�������',1300},
{'��������',1300},
{'�����ˮ',1300},
{'��ʬ����',1300},
{'������ʩ',1300},
{'������ɫ',1300}
}
--�ɷ罣��3��
CC.KFMove[27]={
{'ƽɳ����',300},
{'���ڤڤ',300},
{'��Ԩ����',300}
}
--������2��
CC.KFMove[28]={
{'���׳���',300},
{'�������',300}
}
--���ֽ���3��
CC.KFMove[29]={
{'���ӵ�к',400},
{'ѩ������',400},
{'ǧ�Ҿ���',400}
}
--��ɽ����3��
CC.KFMove[30]={
{'�����',500},
{'�������',500},
{'�峺÷��',500}
}
--̩ɽ����3��
CC.KFMove[31]={
{'����',500},
{'������',500},
{'�����䳤��',500}
}
--��ɽ����3��
CC.KFMove[32]={
{'Ȫ��ܽ��',600},
{'�����ϸ�',600},
{'��������',600}
}
--��ɽ����3��
CC.KFMove[33]={
{'���両��',600},
{'������',600},
{'��������',600}
}
--��ɽ����3��
CC.KFMove[34]={
{'����ӭ��',600},
{'������',600},
{'��������',600}
}
--ѩɽ����3��
CC.KFMove[35]={
{'ѩ���צ',600},
{'÷ѩ����',600},
{'ѩɽ����',600}
}
--���ƽ���3��
CC.KFMove[36]={
{'�ӻ�����',700},
{'���컨��',700},
{'���Χ��',700}
}
--���ǽ���2��
CC.KFMove[37]={
{'����ɽ�',800},
{'�ͱڶ���',800}
}
--��������5��
CC.KFMove[38]={
{'ɽ������',800},
{'��������',800},
{'��������',800},
{'���¥̨',800},
{'��������',800}
}
--ȫ�潣��5��
CC.KFMove[39]={
{'������',800},
{'������ɺ',800}, 
{'б��ϸ��',800}, 
{'�Ǻ���ת',800}, 
{'�һ���ˮ',800}
}
--���߽���5��
CC.KFMove[40]={
{'�����Ӱ',900},
{'��Ӱ����',900},
{'���߻���',900},
{'���ߵ���',900},
{'�������',900}
}
--���콣��3��
CC.KFMove[41]={
{'�������',1000},
{'��پ���',1000}, 
{'�����պ�',1000}
}
--��Ů����6��
CC.KFMove[42]={
{'����С��',800},
{'�˼�����',800},
{'�ٰ���ü',800},
{'�������',800},
{'���¿���',800},
{'�����ٳ�',800}
}
--��ת����2��
CC.KFMove[43]={
{'������ɢ',1200},
{'�ǹ�����',1200}
}
--��ҽ���6��
CC.KFMove[44]={
{'���������ر���',1000},
{'����ת��������',1000},
{'ӭ���ȷ�����ɽ',1000},
{'ϴ�����б���',1000},
{'�ϲ��Ʊ�ժ��',1000},
{'���ý��׺����',1000}
}
--��������4��
CC.KFMove[45]={
{'���',1500},
{'����',1500},
{'˳��',1500},
{'����',1500}
}
--̫������3��
CC.KFMove[46]={
{'����ָ·',1300},
{'������ˮ',1300},
{'��������',1300}
}
--���¾Ž�9��
CC.KFMove[47]={
{'�ܾ�ʽ',1600},
{'�ƽ�ʽ',1600},
{'��ǹʽ',1600},
{'�Ƶ�ʽ',1600},
{'�Ʊ�ʽ',1600},
{'����ʽ',1600},
{'����ʽ',1600},
{'�Ƽ�ʽ',1600},
{'����ʽ',1600}
}
--��а����6��
CC.KFMove[48]={
{'ɨ��Ⱥħ',800},
{'��������',800},
{'��ظ��Ŀ',800}, 
{'��������',800},
{'ֱ������',800}, 
{'ָ���а',800}
}
--��ʮ��·2��
CC.KFMove[50]={
{'��',500},
{'��',500}
}
--��ͷ����1��
CC.KFMove[52]={
{'������',600}
}
--��ɽ����2��
CC.KFMove[53]={
{'�����Ὥ',600},
{'�����볲',600}
}
--ԧ�쵶��2��
CC.KFMove[54]={
{'���ٻ���',1200},
{'��������',1200}
}
--��絶��2��
CC.KFMove[55]={
{'������',700},
{'��ɳ��ʯ',700}
}
--�������ŵ�2��
CC.KFMove[56]={
{'������ѥ',700},
{'�浶����ʽ',700}
}
--�ȱ�����2��
CC.KFMove[57]={
{'��������',600},
{'���سɷ�',600}
}
--���޵�1��
CC.KFMove[58]={
{'��������',600}
}
--�廢���ŵ�2��
CC.KFMove[59]={
{'�׻�����',600},
{'��������',600}
}
--�����ǵ���2��
CC.KFMove[60]={
{'�ؽ�����',700},
{'��ٲ���',700}
}
--���ڵ���2��
CC.KFMove[61]={
{'÷ѩ����',700},
{'��������',700}
}
--���޵���4��
CC.KFMove[62]={
{'Ůò�ɲ�������',1200},
{'�������Ϊ����',1200}, 
{'�����������̨',1200}, 
{'������ױ�ɽ���',1200}
}
--Ѫ����3��
CC.KFMove[63]={
{'Ż����Ѫ',800},
{'��ֽ����',800},
{'���Ǿ���',800}
}
--���鵶��2��
CC.KFMove[64]={
{'��֮����',900}
}
--ȼľ����2��
CC.KFMove[65]={
{'��ľȡ��',900},
{'��������',900}
}
--���浶��2��
CC.KFMove[66]={
{'�һ���ԭ',1200},
{'�ٻ�����',1200}
}
--���ҵ���2��
CC.KFMove[67]={
{'���ֲص�ʽ',1100},
{'�˷��ص�ʽ',1100}
}
--���ǹ��3��
CC.KFMove[68]={
{'����ǹ',500},
{'������ŭ',500},
{'���ͷ',500}
}
--��ƽǹ��2��
CC.KFMove[70]={
{'��������',600},
{'ǹƽ����',600}
}
--�Ὣ����2��
CC.KFMove[71]={
{'���������',700},
{'�ͽ������',700}
}
--������ʽ8��
CC.KFMove[72]={
{'����',800},
{'����',800},
{'���',800},
{'С��',800},
{'��Ԫ',800},
{'��',800},
{'��',800},
{'��',800}
}
--���߰˴�2��
CC.KFMove[74]={
{'����һ��',700},
{'�ɺ״���',700}
}
--�����2��
CC.KFMove[75]={
{'����',800},
{'�Ҽ�',800}
}
--����������2��
CC.KFMove[77]={
{"�ٵ��ǵ�",1000},
{"�ٽ��ǽ�",1000}
}
--��ɳ�����2��
CC.KFMove[78]={
{"ѪȾ��ɳ",800},
{"��ɳ����",800}
}
--��������2��
CC.KFMove[79]={
{"��������",1100},
{"��Ѩ����",1100}
}
--�򹷰���4��
CC.KFMove[80]={
{'����ͷ',1400},
{'���ع���',1400},
{'��ڶ���',1400},
{'����˫Ȯ',1400}
}
--�����ȷ�2��
CC.KFMove[81]={
{'��������',1400},
{'��������',1400}
}
--��շ�ħȦ4��
CC.KFMove[82]={
{'��԰����',1100},
{'�����޳�',1100},
{'���˫��',1100}, 
{'����һ��',1100}
}
--���ϴ�����3��
CC.KFMove[83]={
{'��սǧ��',1200},
{'��ɽ�',1200},
{'ǧ��ѹ��',1200}
}
--����������6��
CC.KFMove[84]={
{'��������',1000},
{'��������',1000},
{'��������',1000},
{'Ī�Ҳ���',1000},
{'���첻��',1000},
{'˭������',1000}
}
--��ħ�ȷ�2��
CC.KFMove[86]={
{'��ħ����',1100},
{'��������',1100}
}
--̫����5��
CC.KFMove[102]={
{'�Կ��Ϻ�ӧ �⹳˪ѩ��',1200},
{'�����հ��� ���������',1200},
{'������Ȼŵ ������Ϊ��',1200},
{'���������� ��������Ӣ',1200},
{'˭������� ����̫����',1200}
}	
--Ұ��ȭ3��
CC.KFMove[109]={
{'ʯͷ',1200},
{'����',1200},
{'��',1200}
}
--��ɽ����3��
CC.KFMove[110]={
{'������ɽ��',1200},
{'������ɽ��',1200},
{'������ɽ��',1200}
}
--���ϵ���3��
CC.KFMove[111]={
{'�й�',1200},
{'���',1200},
{'����',1200}
}
--��������2��
CC.KFMove[112]={
{'� ���',1200},
{'������',1200}
}
--���ǽ���4��
CC.KFMove[114]={
{'�������ǻƺ�¥',900},
{'�̻�����������',900},
{'�·�ԶӰ�̿վ�',900},
{'Ψ�����������',900}
}
--�����۶���1��
CC.KFMove[115]={
{'��絹��',700}
}
--���϶���1��
CC.KFMove[120]={
{'��������',1100}
}
--��Ѫ��צ2��
CC.KFMove[134]={
{'��۵糸',1000},
{'�����컪',1000}
}
--�������ָ2��
CC.KFMove[135]={
{'��ս���',700},
{'�������',700}
}
--�����ָ2��
CC.KFMove[136]={
{'�������',1300},
{'���ٳ�',1300}
}
--�κ�ָ6��
CC.KFMove[138]={
{'����ɽ���ڣ��Ǵ���ľ��',1500},
{'��ʱ�����ᣬ�ޱ�����',1500},
{'��������£����ܲκ���',1500},
{'��ͷɦ���̣�������ʤ��',1500},
{'ҹ�����Ƕ�������������',1500},
{'���������ͣ����Ǹ���־',1500}
}
--��Ů���Ľ�6��
CC.KFMove[139]={
{'����С��',1100},
{'�˼�����',1100},
{'�ٰ���ü',1100},
{'�������',1100},
{'���¿���',1100},
{'�����ٳ�',1100}
}
--��Ħ����1��
CC.KFMove[140]={
{'���޵�ɷ',1000}
}
--��ʤ����2��
CC.KFMove[141]={
{'ȴ�����',1000},
{'���º���',1000}
}
--��ʵ���1��
CC.KFMove[142]={
{'���̫Ԩ',1200}
}
--���鵶��2��
CC.KFMove[153]={
{'���·ֻ�',1200},
{'���ӹ�Ӱ',1200}
}
--ԽŮ����4��
CC.KFMove[156]={
{'���ճ���',1500},
{'��Գ����',1500},
{'��������',1500},
{'���ɽ�Ӱ',1500}
}
--��˶�1��
CC.KFMove[157]={
{'˲��һɱ',1000}
}
--���ִ�ת2��
CC.KFMove[158]={
{'�������',1300},
{'���豦��',1300}
}
--����ս�2��
CC.KFMove[159]={
{'ħ������',2000},
{'��Ħ����',2000}
}
--��Ů����1��
CC.KFMove[161]={
{'������',1200}
}
--���콣2��
CC.KFMove[162]={
{'һҶ����',1200},
{'�������',1200}
}
--�����޷�1��
CC.KFMove[164]={
{'��������',1200}
}
--��������10��
CC.KFMove[167]={
{'��������������',1200},
{'�Դ˿��Ժ���¥',1200},
{'�������½�����',1200},
{'�м�Сл���巢',1200},
{'�㻳����׳˼��',1200},
{'��������������',1200},
{'�鵶��ˮˮ����',1200},
{'�ٱ���������',1200},
{'��������������',1200},
{'����ɢ��Ū����',1200}
}
--��ң��2��
CC.KFMove[168]={
{'��������',1600},
{'�ٽ�����',1600}
}

--��Ħ����4��
CC.KFMove[173]={
{'����Сʱ',3000},
{'���Ĵ�ĥ',3000},
{'������ɫ',3000},
{'���е���',3000}
}

--���絶2��
CC.KFMove[174]={
{'��������',1200},
{'���к���',1200}
}



--�����Ա�б�: {��Աid����ӵ��ú���}      ----������µ������Ա���룬ֱ������������
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
{61, 10003},--ŷ��������¼� 
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
{589, 8005},--ˮ������¼�
{590, 8650},--����������¼�
{601, 4138},--ΤС������¼�
{161, 4183},--��Ī������¼�
{626, 4184},--��������¼�
{628, 4191},--�������¼�
{629, 4200},--��������¼�
{607, 4202},--���������¼�
{631, 4209} --����������¼�
}

    --���пɼ�����Ա�����Ҫ�����D*�¼����������Щ�˾��Ҳ����ˡ��õ�����ʱʹ��
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
			{601, 48}	--ΤС��
			};

    CC.BookNum=14;               --�������
    CC.BookStart=144;            --14������ʼ��Ʒid

    CC.MoneyID=174;              --��Ǯ��Ʒid
    CC.Shemale = {[78] = 1, [93] = 1}

	--��Ч֡��
	CC.Effect = {
	14, 	--��Ч1 Blue puff
	17, 	--��Ч2 Water drop
	9, 		--��Ч3 Thin yellow line with tiny pink circle at bottom
	13, 	--��Ч4 Tiny yellow splashing
	17, 	--��Ч5 Water drop with thunder like effect
	17, 	--��Ч6 Water drop with thunder like effect + yellow flames rising
	17, 	--��Ч7 Vertical red flame fading
	18, 	--��Ч8	Ice falling then breaking
	19, 	--��Ч9 Bright yellow explotion smoke
	19, 	--��Ч10 yellow flames rising
	15, 	--��Ч11 Small blood spilling
	13, 	--��Ч12 Small blood spilling (fewer frames)
	10, 	--��Ч13 Black half circle splashing
	10, 	--��Ч14 Red half circle splashing
	15, 	--��Ч15 Tiny tornado exploding
	21, 	--��Ч16 blood spilling with tiny yellow explotion
	16, 	--��Ч17
	9, 		--��Ч18
	11, 	--��Ч19
	8, 		--��Ч20
	9, 		--��Ч21 ̫��
	8, 		--��Ч22
	8, 		--��Ч23
	7, 		--��Ч24
	8, 		--��Ч25
	8, 		--��Ч26
	9, 		--��Ч27
	12, 	--��Ч28
	19, 	--��Ч29
	11, 	--��Ч30
	14, 	--��Ч31 Yellow puff
	12, 	--��Ч32
	17, 	--��Ч33
	8, 		--��Ч34
	11, 	--��Ч35
	10, 	--��Ч36
	13, 	--��Ч37
	10, 	--��Ч38 
	19, 	--��Ч39 Bright yellow mushroom cloud
	14, 	--��Ч40
	17, 	--��Ч41
	19, 	--��Ч42
	14, 	--��Ч43
	21, 	--��Ч44
	16, 	--��Ч45
	13, 	--��Ч46
	18, 	--��Ч47
	14, 	--��Ч48
	17, 	--��Ч49
	17, 	--��Ч50
	16, 	--��Ч51
	7, 		--��Ч52 Tiny mushroom cloud
	12, 	--��Ч53 Yellow dragon rising(badly drawn)
	40, 	--��Ч54 Beige ghost like smoke
	16, 	--��Ч55
	9, 		--��Ч56
	15, 	--��Ч57
	15, 	--��Ч58 Classic explotion flame
	31, 	--��Ч59
	38, 	--��Ч60 Swords falling
	24, 	--��Ч61
	26, 	--��Ч62 Swords falling(fewer and faded)
	24, 	--��Ч63 ��ڤ
	20, 	--��Ч64 ����
	12, 	--��Ч65
	17, 	--��Ч66
	14, 	--��Ч67
	14, 	--��Ч68
	10, 	--��Ч69
	10, 	--��Ч70
	18, 	--��Ч71 ����
	31, 	--��Ч72
	12, 	--��Ч73
	7, 		--��Ч74
	6, 		--��Ч75
	7, 		--��Ч76
	28, 	--��Ч77
	16, 	--��Ч78
	7, 		--��Ч79
	16, 	--��Ч80
	20, 	--��Ч81
	15, 	--��Ч82
	13, 	--��Ч83
	15, 	--��Ч84
	11, 	--��Ч85
	11, 	--��Ч86
	11, 	--��Ч87
	20, 	--��Ч88
	20, 	--��Ч89
	20, 	--��Ч90
	17, 	--��Ч91
	17, 	--��Ч92
	17, 	--��Ч93
	9, 		--��Ч94
	8, 		--��Ч95
	8, 		--��Ч96
	17, 	--��Ч97
	10, 	--��Ч98
	11, 	--��Ч99
	8, 		--��Ч100
	29, 	--��Ч101
	6, 		--��Ч102
	13, 	--��Ч103
	31, 	--��Ч104
	14, 	--��Ч105
	4, 		--��Ч106
	13, 	--��Ч107 two blades
	13, 	--��Ч108
	15,		--��Ч109
	24; 	--��Ч110 ��
	20; 	--��Ч111 ����
	12; 	--��Ч112 
	16; 	--��Ч113 blue serpent
	18; 	--��Ч114 yellow tornado
	17; 	--��Ч115 red lights flailing
	14; 	--��Ч116 ice breaking
	12; 	--��Ч117 dark serpent
	19; 	--��Ч118 Old school explotion
	16; 	--��Ч119 Yellow cross explotion
	12; 	--��Ч120 Red light rising
	14; 	--��Ч121 Light green explotion
	14; 	--��Ч122 Fire arrow
	6; 		--��Ч123 Devil face
	8; 		--��Ч124 Fire explosion
	24; 	--��Ч125 Light slashing
	19; 	--��Ч126 Yellow cosmic explosion
	16; 	--��Ч127 Small burning explotion
	14; 	--��Ч128 Heart shaped explotion
	20; 	--��Ч129 Violet halo
	18;		--��Ч130 ����
	16;		--��Ч131 lightning
	13;		--��Ч132 bright light swords surrounding
	25;		--��Ч133 Flame ring
	20;		--��Ч134 ���鸯ʬ��
	13;		--��Ч135 blizzard shield
	22;		--��Ч136 blue spiral
	35;		--��Ч137 Pink saber
	11;		--��Ч138 ����̫��
	17;		--��Ч139 ��������
	25;		--��Ч140 ��������
	23;		--��Ч141 ������
	16;		--��Ч142 ����̩ɽ
	11;		--��Ч143 thin orange flame
	13;		--��Ч144 thin blue flame
	7;		--��Ч145 �ڲ�
	14;		--��Ч146 �ƾ�
	27;		--��Ч147 yellow halo
	16;		--��Ч148 poison
	14;		--��Ч149 ���
	44;		--��Ч150 nuclear explosion
	12;		--��Ч151 ����
	16;		--��Ч152 ice entangle
	14;		--��Ч153 ������
	18;		--��Ч154 fire bird
	16;     --��Ч155 ����(155-174��ͼƫ��)
	9;     --��Ч156 ����
	20;     --��Ч157 flower Cross
	19;    --��Ч158 Demon face light
	14;    --��Ч159 Purple light
	12;    --��Ч160 Lotus tears
	17;    --��Ч161 ���⽣Ӱ
	12;    --��Ч162 Rising flame Dragon
	12;    --��Ч163 �ʵسɸ�
	21;    --��Ч164 ��
	12;    --��Ч165 ����
	12;    --��Ч166 ��ɫ�籩
	27;    --��Ч167 ����
	15;    --��Ч168 �ٻ�����
	15;    --��Ч169 ����
	11;    --��Ч170 ����
	19;    --��Ч171 ��ը
	10;    --��Ч172 Ѫɫ��
	24;    --��Ч173 ������
	40;    --��Ч174 �򽣾�
	26;    --��Ч175 �������
	12;    --��Ч176 �ͻ�
	17;    --��Ч177 ˫�� 
	21;    --��Ч178 ����
	19;    --��Ч179 ������ն��ƫ��180,50��
	20;    --��Ч180 ����(����Ч)
	15;    --��Ч181 �����ڷ�(����Ч)	
	17;    --��Ч182 ����������Ч��ƫ��237,168��
	17;    --��Ч183 �����񣨴���Ч��ƫ��237,168��
	14;    --��Ч184 ��ը���飨ƫ��180,50��
	[0] = 9	--��Ч0	Tiny heart(when heal)
	}
	
	--װ���������ļӳ�
    CC.ExtraOffense = {
			{52, 75, 100},		--�����+�����
			{45, 67, 100},		--���±���+����
			{202, 67, 100},		--��������+����
			{37, 41, 100},		--���콣+��
			{49, 80, 200},		--�򹷰�+�򹷰���
			{44, 63, 200},		--Ѫ��+Ѫ��
			{40, 40, 200},		--���߽�+����
			{36, 45, 100},		--������+����
			{276, 155, 3000},	--��ǹ+��ǹ
			{51, 78, 200},		--������+��ɳ����޷�
			{50, 86, 100},		--��ħ��+��ħ�ȷ�
			{241, 39, 100},		--���ӽ�+ȫ�潣��
			{242, 42, 100},		--��Ů��+��Ů����
			{244, 81, 200},		--��������+�����ȷ�
			{55, 110, 100},		--��ɽ��+��ɽ����
			{56, 111, 100},		--�����˵�+���ϵ���
			{57, 112, 100},		--����+��������
			{243, 77, 200},		--�𵶺ڽ�+����������
			{39, 44, 100},		--������+��ҽ���
			{236, 46, 100}		--���佣+̫������
			}

CC.JXFG = {}
CC.JXFG[1] = {'��Ӱ�ɺ�','�ɶ�����'}
CC.JXFG[2] = {'����ҩ��','��ľ��ʦ'}
CC.JXFG[3] = {'���׽��','����ħ��'}
CC.JXFG[4] = {'ǧ������','���жϻ�'}            

CC.JXFG[28] = {'������ҽ','����һָ'}
CC.JXFG[37] = {'��������','Ӱ��֮��'}
CC.JXFG[54] = {'����Ϸ��','��Ѫ��'}

CC.JXFG[72] = {'��Ѫ��','��������'}
CC.JXFG[78] = {'а��ħͫ','�������'}

CC.JXFG[90] = {'��������','������ʹ'}


CC.JXFG[517] = {'�����ؽ�','�����෵'}
CC.JXFG[589] = {'������Ů','��ѩ�޺�'}



    CC.NewPersonName=CONFIG.PlayName;                --����Ϸ������
	
    CC.NewGameSceneID = 70
	CC.NewGameSceneX = 16
	CC.NewGameSceneY = 31
	CC.NewGameEvent = 691
	CC.NewPersonPicM = 2515
	CC.NewPersonPicF = 5015

	CC.PersonAttribMax = {}
	CC.PersonAttribMax["����"] = 60000
	CC.PersonAttribMax["��Ʒ��������"] = 30000
	CC.PersonAttribMax["��������"] = 30000
	CC.PersonAttribMax["�������ֵ"] = 999
	CC.PersonAttribMax["���˳̶�"] = 100
	CC.PersonAttribMax["�ж��̶�"] = 100
	CC.PersonAttribMax["�������ֵ"] = 9999
	CC.PersonAttribMax["����"] = 100
	CC.PersonAttribMax["������"] = 520
	CC.PersonAttribMax["������"] = 520
	CC.PersonAttribMax["�Ṧ"] = 520
	CC.PersonAttribMax["ҽ������"] = 200
	CC.PersonAttribMax["�ö�����"] = 200
	CC.PersonAttribMax["�ⶾ����"] = 200
	CC.PersonAttribMax["��������"] = 200
	CC.PersonAttribMax["ȭ�ƹ���"] = 320
	CC.PersonAttribMax["ָ������"] = 320
	CC.PersonAttribMax["��������"] = 320
	CC.PersonAttribMax["ˣ������"] = 320
	CC.PersonAttribMax["�������"] = 320
	CC.PersonAttribMax["��������"] = 320
	CC.PersonAttribMax["��ѧ��ʶ"] = 200
	CC.PersonAttribMax["Ʒ��"] = 120
	CC.PersonAttribMax["����"] = 100
	CC.PersonAttribMax["��������"] = 340

    CC.WarDataSize=186;         --ս�����ݴ�С  war.sta���ݽṹ
    CC.WarData_S={};        --ս�����ݽṹ
    CC.WarData_S["����"]={0,0,2};
    CC.WarData_S["����"]={2,2,10};
    CC.WarData_S["��ͼ"]={12,0,2};
    CC.WarData_S["����"]={14,0,2};
    CC.WarData_S["����"]={16,0,2};
    for i=1,6 do
        CC.WarData_S["�ֶ�ѡ���ս��"  .. i]={18+(i-1)*2,0,2};
        CC.WarData_S["�Զ�ѡ���ս��"  .. i]={30+(i-1)*2,0,2};
        CC.WarData_S["�ҷ�X"  .. i]={42+(i-1)*2,0,2};
        CC.WarData_S["�ҷ�Y"  .. i]={54+(i-1)*2,0,2};
    end
    for i=1,20 do
        CC.WarData_S["����"  .. i]={66+(i-1)*2,0,2};
        CC.WarData_S["�з�X"  .. i]={106+(i-1)*2,0,2};
        CC.WarData_S["�з�Y"  .. i]={146+(i-1)*2,0,2};
    end

    CC.WarWidth=64;        --ս����ͼ��С
    CC.WarHeight=64;

	--��ʾ����ͼ�ͳ�����ͼ����
	--�����ʾ���꣬�������cpuռ�á������ٶ����Ļ����ܻῨ������ڵ���ʱ���á�
	CC.ShowXY=1      --0 ����ʾ 1 ��ʾ


	--����Ϊ������ʾ��ʽ�Ĳ���
	CC.MenuBorderPixel=5  -- �˵����ܱ߿�������������Ҳ���ڻ����ַ�����box������������

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

	--CC.StartMenuY= 160       --��ʼ�˵�Y����
	CC.StartMenuFontSize=CC.DefaultFont  --��ʼ�˵��ֺ�

	--CC.NewGameY= 160         --����Ϸ������ʾY����
	CC.NewGameFontSize =CC.DefaultFont   --����Ϸ����ѡ���ֺ�


	CC.MainMenuX=10;         --���˵���ʼ����
	CC.MainMenuY=10;

	CC.GameOverX=90;
	CC.GameOverY=65;

    CC.PersonStateRowPixel= 5;    --��ʾ����״̬�м������
    
    --��Ʒ��ʾ����
    CC.ThingFontSize = CC.Fontsmall;
		
	--CC.ThingPicWidth=math.modf(100*CONFIG.Zoom/100);    --��ƷͼƬ����
	CC.ThingPicWidth=100	--��ƷͼƬ�̶��ߴ�
	CC.ThingPicHeight=CC.ThingPicWidth;

	local n = math.modf(CC.ScreenW/CC.ThingPicWidth-2);			--һ����ʾ������Ʒ
	if n < 10 then	
		CC.MenuThingXnum = 9;				
	else
		CC.MenuThingXnum = 9
	end
		
	local m = math.modf(CC.ScreenH/CC.ThingPicHeight-2);		--��Ʒ��ʾ����
	if m < 5 then	
		CC.MenuThingYnum = 5;
	else
		CC.MenuThingYnum = 5;
	end

	CC.ThingGapOut=4;		--��Ʒͼ����ʾ��������
	CC.ThingGapIn=4;		--��Ʒͼ����ʾ�м���	

    CC.StartMenuY=CC.ScreenH-3*(CC.StartMenuFontSize+CC.RowPixel)-20;
	CC.NewGameY=CC.ScreenH-4*(CC.NewGameFontSize+CC.RowPixel)-10;

	--�Ӳ˵��Ŀ�ʼ����
	CC.MainSubMenuX=CC.MainMenuX+2*CC.MenuBorderPixel+2*CC.DefaultFont+5;       --���˵�Ϊ��������
	CC.MainSubMenuY=CC.MainMenuY;

	--�����Ӳ˵���ʼ����
	CC.MainSubMenuX2=CC.MainSubMenuX+2*CC.MenuBorderPixel+4*CC.DefaultFont+5;   --�Ӳ˵�Ϊ�ĸ��ַ�

	CC.SingleLineHeight=CC.DefaultFont+2*CC.MenuBorderPixel+5;  --����ĵ����ַ���

	CC.StartThingPic = 0
	
	CC.AutoMoveEvent = {[0]=0};		--������ʱ�Ƿ񴥷��¼��� ��һ��λ��0δ������ 1������ 2���������ܹ��ߵ���ǰ�� �ڶ��͵�����λ��ΪXY����
	CC.MMapAdress = {};				--���ͼ��ַ

	CC.DYRW = -1
    CC.DYRW2 = -1
	
	DSJH={5,64,140,455,57,27}
	
	LMSJ = {"���̽�", "������", "�г彣", "�س彣", "�ٳ彣", "����"}
	XL18 = {"�����л�", "��������","Ǳ������","������β","��������", "˫����ˮ"}
	XL18JY = {"����--�������轥�½", "����--��������Ծ��Ԩ", "����--Ǳ�������겻��", "����--�������𾪰���", "����--�����������", "����--˫����ͻ������", "����--��������˪����", "����--��ս����������"}
	TFSSJ = {"����������׺���", "����ָ��īɽ�ӡ�", "����һ�������ޡ�", "�����������ն��", "����ǧ����������", "��������Ծ���", "���������޵С�", "�������ž�����", "����������˥��"}
	ZJTF = {"������ȭ", "��Ϭһָ", "����һЦ", "������", "������˫", "�������", "�����޵�", "����ʥ��", "����Ħ��"}
	TFE = {"ȭ", "ָ", "��", "��", "��", "�", "��", "ҽ", "��"}
	--ʵս����
	WARSZJY = {3, 2, 5, 2, 40, 15, 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 2,
	10, 5, 4, 4, 5, 4, 2, 2, 20, 40, 2, 3, 3, 3, 3, 3, 3, 5, 3, 4, 4,
	8, 8, 4, 4, 4, 4, 2, 5, 3, 4, 3, 30, 4, 2, 3, 3, 4, 4, 15, 5, 5,
	15, 3, 15, 3, 15, 10, 2, 8, 3, 15, 7, 8, 3, 3, 3, 4, 2, 2, 2, 2,
	4, 2, 2, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 7, 7, 4, 4, 2,
	2, 12, 2, 2, 2, 3, 3, 3, 3, 3, 7, 7, 50, 3, 3, 5, 6, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 3, 20, 3, 3, 3, 3, 3, 3, 3, 2, 3, 2, 35, 2, 2, 2,
	2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
	3, 3, 3, 3, 3, 4, 3, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 3, 7, 7, 4, 3, 5, 5, 3}
	--�ƺ�
	RWWH = {}
	RWWH[1] = "ѩɽ�ɺ�"
	RWWH[2] = "��������"
	RWWH[3] = "�����"
	RWWH[4] = "�����ë"
	RWWH[5] = "̫����ʦ"
	RWWH[6] = "���ʦ̫"
	RWWH[7] = "��������"	--��̫��
	RWWH[8] = "�������"	--������
	RWWH[9] = "��������"
	RWWH[10] = "������ʹ"
	RWWH[11] = "������ʹ"
	RWWH[12] = "��üӥ��"
	RWWH[13] = "��ëʨ��"
	RWWH[14] = "��������"
	RWWH[15] = "��������"
	RWWH[16] = "����ҽ��"
	RWWH[17] = "���ȶ���"
	RWWH[18] = "��Ԫ������"
	RWWH[19] = "���ӽ�"
	RWWH[20] = "����ҹ��"
	RWWH[21] = "��ɽ����"
	RWWH[22] = "��ɽ����"
	RWWH[23] = "̩ɽ����"
	RWWH[24] = "�������"
	RWWH[25] = "�嶾����"
	RWWH[26] = "����ħ��"
	RWWH[27] = "��������"
	RWWH[28] = "ɱ����ҽ"
	RWWH[29] = "�������"
	RWWH[30] = "ɵС��"
	RWWH[31] = "÷ׯ����"
	RWWH[32] = "÷ׯ����"
	RWWH[33] = "÷ׯ����"
	RWWH[34] = "÷ׯ����"
	RWWH[35] = "�Ž�����"
	RWWH["35"] = "��ħ����"
	RWWH[36] = "��а����"
	RWWH[37] = "��������"
	RWWH[38] = "������"
	RWWH["38"] = "����̫��"
	RWWH["38-2"] = "����֮��"
	RWWH[39] = "���͵���"
	RWWH[40] = "���͵���"
	RWWH[41] = "����ʹ��"
	RWWH[42] = "����ʹ��"
	RWWH[43] = "ѩɽ����"
	RWWH[44] = "�����ɷ"
	RWWH[45] = "������"
	RWWH[46] = "�����Ϲ�"
	RWWH[47] = "����ɳ��"
	RWWH[48] = "�����ֿ�"
	RWWH[49] = "С����"
	RWWH["49"] = "��ң����"
	RWWH[50] = "��������"
	RWWH[51] = "����Ľ��"
	RWWH[52] = "��ƽ��ǹ"
	RWWH[53] = "�����洫"
	RWWH[54] = "��Ѫ����"
	RWWH[55] = "��֮����"
	RWWH[56] = "����ޥ��"
	RWWH[57] = "�һ�����"
	RWWH[58] = "����"
	RWWH[59] = "��������"
	RWWH[60] = "����"
	RWWH[62] = "Ԫ�ɵ�ʦ"
	RWWH[63] = "��������"
	RWWH[64] = "��ͯ���"
	RWWH[65] = "��ɮ"
	RWWH[66] = "��˹ʥŮ"
	RWWH[67] = "���ư���"
	RWWH[68] = "������"
	RWWH[69] = "��ؤ"
	RWWH[71] = "��������"
	RWWH[72] = "��������"
	RWWH[73] = "����ʥ��"
	RWWH[74] = "�������"
 	RWWH[75] = "��غ컨"
	RWWH[76] = "�ŋ�����"
	RWWH[77] = "�������"
	RWWH[78] = "��ʬħɷ"
	RWWH[79] = "�����齣"
	RWWH[80] = "�����й�"
	RWWH[81] = "ѩ��˫�"
	RWWH[82] = "�����ϳ�"
	RWWH[83] = "�嶾����"
	RWWH[84] = "��������"
	RWWH[85] = "��ı����"
	RWWH[86] = "������"
	RWWH[87] = "������˿"
	RWWH[88] = "����"
	RWWH[89] = "ʳ��"
	RWWH[90] = "ع�����"	
	RWWH[91] = "��������"
	RWWH[92] = "������Ӱ"
	RWWH[94] = "���嵶"
	RWWH[95] = "���ƽ�"
	RWWH[96] = "���½�"
	RWWH[97] = "Ѫ������"
	RWWH[98] = "�����ӯ"
	RWWH[101] = "������"
	RWWH[102] = "������ʦ"
	RWWH[103] = "��������"
	RWWH[104] = "��������"
	RWWH[106] = "���޵�"
	RWWH[112] = "����ħ��"
	RWWH[113] = "�κ�Ǳ��"
	RWWH[114] = "��Ħ����"
	RWWH[115] = "�ϱ�����"
	RWWH[116] = "�����޼�"
	RWWH[117] = "���ϳ���"
	RWWH[118] = "��ˮ�޳�"
	RWWH[129] = "����ͨ"
	RWWH[131] = "��������"
	RWWH[138] = "һָ����"	--�߶�����
	RWWH[140] = "����ͨ��"		--������
	RWWH[142] = "���콣"
	RWWH[153] = "����֮��"
	RWWH[154] = "ԧ�쵶"
	RWWH[157] = "����ʬ��"
	RWWH[158] = "��˹���"
	RWWH[159] = "�٤����"
	RWWH[161] = "��������"
	RWWH[164] = "Ħ���ʿ"
	RWWH[171] = "�䵱����"
	RWWH[185] = "����Գ"
	RWWH[553] = "����һ֮��"
	RWWH[589] = "�彣��Ů"		--ˮ��
	RWWH[590] = "��������"		--������
	RWWH[592] = "�����޽�"		--�������
	RWWH[594] = "�����Ὥ"		--�ݳ���
	RWWH[601] = "����ر�"		--ΤС��
	RWWH[603] = "������ʿ"		--����
	RWWH[604] = "ԽŮ����"		--����
	RWWH[605] = "��������"		--�ֳ�Ӣ
	RWWH[606] = "����ս��"		--������
	RWWH[607] = "������Ƽ"		--�����
	RWWH[616] = "�������"		--����ֹ
	RWWH[617] = "��������"		--��ǧ��
	RWWH[626] = "С��а"		--����
	RWWH[627] = "�ϵ�֮��"		--�ɸ�
	RWWH[628] = "����"			--���
	RWWH[629] = "��ƽ����"		--����
	RWWH[631] = "˭������"		--������
	RWWH[642] = "���Ĵ�ĥ"		--�Ĵ�ɽ

	--�츳
	RWTFLB = {}
	RWTFLB[1] = "��ϵһ��"
	RWTFLB[4] = "����ҽ��"
	RWTFLB[9] = "��תǬ��"
	RWTFLB[35] = "��������"
	RWTFLB[37] = "��������"
	RWTFLB[38] = "�������"	
	RWTFLB[48] = "������ס"
	RWTFLB[49] = "��Ե���"
	RWTFLB[50] = "��Ӣ��ŭ"
	RWTFLB[51] = "��ϲ���"
	RWTFLB[53] = "��������"
	RWTFLB[54] = "־������"
	RWTFLB[55] = "��������"
	RWTFLB[56] = "���Ŷݼ�"
	RWTFLB[58] = "�����½�"
	RWTFLB[59] = "һƬ����"
	RWTFLB[60] = "������ʩ"
	RWTFLB[63] = "����ڸ�"
	RWTFLB[64] = "��豹���"
	RWTFLB[73] = "���ӯӯ"
	RWTFLB[74] = "����֮��"
	RWTFLB[76] = "��������"
	RWTFLB[77] = "����赺�"
	RWTFLB[80] = "���;���"
	RWTFLB[83] = "��������"
	RWTFLB[92] = "ָ������"
	RWTFLB[97] = "�赶ɱ��"
	RWTFLB[102] = "˫������"
	RWTFLB[112] = "��������"
	RWTFLB[116] = "��ڤ��Ԩ"
	RWTFLB[117] = "ת˲����"
	RWTFLB[118] = "����ת��"
	RWTFLB[153] = "ǧ������"
	RWTFLB[553] = "�൨�һ�"
	RWTFLB[589] = "��ˮ����"	--ˮ��
	RWTFLB[592] = "�ϵ��Ȼ�"	--�������
	RWTFLB[601] = "������˫"	--ΤС��
	RWTFLB[605] = "���ž���"	--�ֳ�Ӣ
	RWTFLB[606] = "̤ɳ�޺�"	--������
	RWTFLB[631] = "����֥��"	--������
	RWTFLB[642] = "����Сʱ"	--�Ĵ�ɽ
--�������
CC.MP = {
	{"ؤ��", nil, 1, "���"},
	{"�䵱��", nil, 1, "����"},
	{"������", nil, 1, "����"},
	{"����", nil, 1, "����"},	
    {"����", nil, 1, "��Ӱ"}, --��Ծ�㣺��������
	{"��������", nil, 1, "����"},--��Ծ�㣺������������
	{"����ɽ", nil, 1, "�涾"}, --�������ǣ����Ű���ɽ
	{"�һ���", nil, 1, "����"}, --�������ǣ������һ���
}

CC.MPAttrib = { --1��2��3�ᣬ4ҽ5��6��7����8��9�ڣ�10 11 12 13,14��ϵ
	[0] = {0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0,0},
	{1.1, 1, 0.95, 0, 0, 0, 0, 1.1, 0.9, 0, 0, 0, 0,0}, --ؤ��
	{1.05, 1.05, 1.05, 0, 0, 0, 0, 1.1, 1, 0, 0, 0, 0,0}, --�䵱
	{1, 1.1, 0.9, 0, 0, 0, 0, 1, 1.05, 0, 0, 0, 0,0}, --����
	{1.2, 0.9, 1, 0, 0, 0, 0, 0.95, 1.15, 0, 0, 0, 0,0}, --Ѫ��
	{0.95, 1.2, 1, 50, 0, 0, 0, 1.1, 1.2, 0, 0, 0, 0,0}, --����
	{1.2, 0.9, 1.1, 0, 0, 0, 0, 1.05, 1.2, 0, 0, 0, 0,0}, --��������
	{1, 0.9, 1, 0, 100, 100, 0, 1.05, 1, 0, 0, 0, 0,0}, --����
	{0.9, 1, 1.3, 0, 0, 0, 0, 1, 1.1, 0, 0, 0, 0,0}, --�һ���, --�һ���
}

CC.MPAttrib_none = {0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0}

CC.MPINFO = {
	"���µ�һ�����ǽл��ӽ���ؤ���ǿ��������ŵ���š��մ���ѧ�򹷰���ǧ���򻯣�����ʮ���Ƹ�����˫�����е����书���Ӳ�һ���Լ縺�Ĳ���������Ѷ��䱲�ָߵͣ��������ŷ�Ϊ���º;������ɡ�",
	"һ���������������䵱ɽ�Ͽ������ɣ������Ծ��ƶ�������˸գ��Զ�ʤ�����������졢���������������������䵱��ѧ��չ�������������гɡ����ڷ��أ����������˴�ɣ��������˹�����Ϊ��������̫�������ɡ�",
	"�׻�˵�����书�����֣������ҵ�����˵��������Դ�Ħ��ʦ�Խ���������ɮƵ������ʮ�������������������ѧ�Ϲ��ؼ汸���н�������֮�����������������صľ������֣��������˹�����Ϊ����š���ĦԺ�ͽ��������ɡ�",
	"�������ڣ��ش��߽������θ���������̣���������Դ�ѷ����������������Զ��ӻ�������ĥ�£�ͬʱ����ԭ���ɵ�����������˹��������ɷ�Ϊ�˽����¡�ӡ�Ƚ̺�Ѫ���š�",
	"��������ħ��֮һ���ഫ�������򣬹�����Ϊ������̳�������ѹ������ڵ��ӽ�������������ǰ�ν���������ʧ�ٺ������ڲ���Ȩ�������Ҹ������˹���Ҳ���а������밢����������ϵ��",
	"������Ϊ������������ħ��Ϊ��������������ɡ����ж�������Ϊ����������Ϊ����������ħ��ѹ�ơ�����ɽ����Ŭ�����ϸ��ɣ�������ľ�£����и������˹���Ҳ�н��ں����ڵ�����",
	"���֮һ����ŷ���������������ɣ�λ������˫���򱱡������ó�ѱ�����ߣ�������Ϊ���书���ն��������ž�ѧ��������ʹ�������棬���е��������֮��ȴ�����ľ���",
	"������ҩʦ��������ҩʦ��ͨ���ĵ��������Ŷݼף����µ��ӽ����ʲ�������ϧ����ϡ�٣��Ե�����ͽ�ڷ�˫ɷ�뿪������Ѷ���δ����������ӡ�",	
	}

CC.MPINFO2 = {
	"������10�����Ṧ��5%���������޼�10�����������޼�10��",
	"���������Ṧ��5%���������޼�10��",
	"������10�����Ṧ��10�����������޼�5%",
	"������20����������10�����������޼�5�����������޼�15��",	
	"������5%��������20����ҽ��������50���������޼�10�����������޼�20��",
	"������20����������10�����Ṧ��10�����������޼�5�����������޼�20��",
	"������10�����ö��ⶾ������100,  �������޼�5%",
	"������10�����Ṧ��30�����������޼�10��",
}

CC.MPDJ = {
	{"�������", "�˴�����", "����", "����"},
	{"���ŵ���", "��ͨ����", "�߼�����", "�״�����", "����"},
	{"���ŵ���", "��ͨ����", "�߼�����", "����"},
	{"����", "ɮ��", "����"},
	{"��ͨ����", "���ĵ���", "���̷���", "����ʹ��", "����"},--����
	{"��ͨ����", "�״�����", "����", "����", "����"},--��������
	{"����", "����", "ׯ��"},
    {"��������", "���ҵ���", "����"},
}

CC.PSKILL = {
	{"����", "����", "�򹷹���"},
	{"Ǭ��", "����", "�޼�"},
	{"������", "������", "���ķ�ħ"},
	{"����", "����", "����"},	
	{"����", "����", "ͬ��"},--�������ǣ��ݶ�
    {"����", "��Ȼ", "����"},--�������ǣ��ݶ�
	{"����", "���", "����"},
	{"��Ӣ", "ͨ��", "ŭ��"},
}

CC.ASKILL = {
	{"����������", "������", "������"},
	{"����˸�", "�Ծ��ƶ�", "��Ԫ�޼�"},
	{"�㻯", "��ղ�����", "����ʨ�Ӻ�"},
	{"��ճ�", "����ת��"},	
	{"����ѳ��", "�����þ�", "������"},--�������ǣ��ݶ�
    {"�����ݺ�", "�������"},--�������ǣ��ݶ�
	{"����", "�Ϣ"},
	{"�Ż���¶", "�̺��þ�"},	
}

CC.SKILLNAME = {
	{"����", "����", "�򹷹���", "����������", "������", "������"},
	{"Ǭ��", "����", "�޼�", "����˸�", "�Ծ��ƶ�", "��Ԫ�޼�"},
	{"������", "������", "���ķ�ħ", "�㻯", "��ղ�����", "����ʨ�Ӻ�"},
	{"����", "����", "����", "��ճ�", "����ת��"},
    {"����", "����", "ͬ��", "����ѳ��", "�����þ�", "������"},
	{"����", "��Ȼ", "����", "�����ݺ�", "�������"},	
	{"����", "����", "����", "����", "�Ϣ"},
	{"��Ӣ", "ͨ��", "�ݼ�", "�Ż���¶", "�̺��þ�"},
}

CC.MPMENU = {"���ɽ���", "���ڼ���"}

CC.MPSUBMENU = {

}

CC.SKILLINFO = {
	{
	"Ч��������ʱ�߼��ʻ�ȡ��Ǯ*��������������",
	"Ч����װ������Ч��˫��*��������������",
	"Ч�������ϻ�ؤ�＼�ܵļ���*      �����໥�ֵ��˺�*��������������",
	"Ч������������Χһ���ڵ���ֹͣ����*      ��ʮʱ������ɱ��*���ģ�����15��",
	"Ч������������Χһ���ڼ�����������*���ģ�����30��",
	"Ч���������˴��ж��ڹ����ͷ����ӱ���*      ����ɱ�����������ļӱ�*�����������о�*���ģ�����15��",
	},
	{
	"Ч��������ʱ�˺�����10%��������*      ʱ�˺�����15%*��������������",
	"Ч����������ʱ�洢�˺�ֵ���´�*      ����ʱ׷���˺�����������*      �ɵȼ��й�*��������������",
	"Ч����������ʱ�����ɱ�����´ι�*      ��������ͬ��ɱ��ֵ*�������������ܣ����ɵȼ�2����",
	"Ч��������ŭ�����㣬Ŀ�����ŭ��*      ������һ��ʱ���ڼ����ټ���*���ģ�����25��",
	"Ч�������̽������״̬�޷��ж���*      ����ɱ����һ��ʱ�����ȫ*      ��������ʱ���������쳣״̬*      �����ڵ������ϣ�����״̬ȫ*      �壬����Ч��˫��*���ģ�����20������500��",
	"Ч���������ͼ����ٶ�����40%��*      ����4���غϣ��Ұ����޼�����500��*      ���ģ�����1000��",
	},		
	{
	"Ч����������ʱ���ʽ������״̬*��������������",
	"Ч��������״̬������ֵ����*��������������",
	"Ч����Ʒ��Խ�߹���Ч��Խ��*��������������",
	"Ч�����ͼ���ʹ����Ŀ������˳�ս*      ��������������Ʒ���й�*������Ʒ��50����*���ģ�����25��",
	"Ч����һ��ʱ���������������˺���*      ֹͣ����*��������������1000������*���ģ�����20������200��",
	"Ч����ȫ������������С����������*      �ۺ��ˣ�Ч������������������*����������3000������*���ģ�����30������������ֵ��һ��",
	},			
	{
	"Ч�����������������˺�*���������������˺�����*Ч����ȼ��������*��������������",
	"Ч���������ܵ����˺�*��������������*Ч����ȼ��������*��������������",
	"Ч���������سɹ�*��������ɱ����*Ч��������ֵ���书�����й�*�������������ܣ�ɮ�����Ϸ���Ч��",
	"Ч����ŭ����������*��������������Ϊ�������ֵ��һ������*���ģ�����15�㣬ÿʱ���5��Ѫ*��ע������״̬�л�Ѫ�书ʧЧ",
	"Ч�����������������������ֵ�İٷ�*      ��ֵ��������˽���Ѫ����һ��*      ս����һ��*���������������������ֵ��һ��*���ģ�����25��",
	},			
    {
	--"Ч�����ݶ�", �������ǣ�ȡ����������
	"Ч����������ʱ����ʹ���˼�������*��������պ�����*Ч����ȼ����������þ�������*��������������",
	"Ч��������Ч������ϵϵ�����Ӷ����*����Ч�������������仯���仯*�����������̵��ӿ����ʥ����*��������������",
	"Ч�������������˳���ָ�����������*�����˳��Ե�����ɲ���״̬*�������������ܣ��������Ϸ���Ч��",
	"Ч������ŭʱ��ȫ��������������*ʹ�ú���������һϢ *���ģ�����50��",
	"Ч�����궨һ������Ϊ���ͽ*��������ʱ���˺��ӳ�����������*ȫ�ֿɱ궨����*���ģ�����25������500��",
	"Ч�����ٻ��������ڶԵ��˽��й���*���ģ�����25������500��",
	},
    {
	"Ч����ʹ�ý����˺�����*������ָ�����*Ч����ȼ��������*��������������",
	"Ч����������ʱ�����˺�����*Ч����ȼ��������*��������������",
	"Ч��������ѧ��Ҳ��ʹ����������*����ͬʱ����*�������������ܣ����ĵ������Ϸ���Ч��",
	"Ч�������ι�����Ȼ�������������������ӶԷ�����*      *���ģ�����30������1000��",
	"Ч�������ι�����Ȼȫ������* ����������ез�����*���ģ�����25������1500��",
	},
	{
	"Ч��������ʱ�������Ӷ����϶�*��������������",
	"Ч�����������ɵȼ�ʱ������ŭ��*��������������",
	"Ч�����ܵ�����ʱ���ʲ�����Ѩ*��������������",
	"Ч����ʹ�ú󼺷�ȫ���ж����㣬*      �´ι������������˺�*���ģ�����30������300��",
	"Ч����һ��������Χ�ĸ����ŭ��ֵ����*      ���ж��̶�����*���ģ�����20��",
	},
	{
	"Ч���������һ�����Ч����ͬʱ����������ѧȫ*���Ӽ����ٶ�*Ч����ȼ������̺�����������*��������������",
	"Ч���������书Ч������*Ч����ȼ��������*���������츳����*��������������",
	"Ч�������ʷ��������Ŷݼס�*���ܵ��˹�����˲��*��������������ʧЧ*��������������",
	"Ч����ʹ�ú󼺷�ȫ����������*      �´α�������������˺�*���ģ�����30������300��",
	"Ч�����������ܵ������ι����п�*      ��ȫ����*���ģ�����20��",
	},	
}
	
	
	--�츳����
	TFJS = {}
 	ZL = {}
	FY = {}
	TSZL = {}
	BOSSZT = {}
	TFJS[1] = {"�̻�ϵһ��",
	"��ʹ�ú��ҵ�����50%���ʴ������⣬��ŭ�ش���",
	"��",
	"��ѩɽ�ɺ�",
	"�׼����ٶ�����8��",
	}
    FY[1] = 
	{"�Ǹ�Ե����",
	"�׵õ���ѩɽ�ɺ����������˷��ϴ�ڶ����书,��������������ϵϵ������100����������Ѽ�",
	}
	TSZL[1] = 
	{"����ɫָ��ɺ�",
	"��Ч���������ϰ����ƶ�����ս������ȥ����",	
	}
	BOSSZT[1]=
	{ 
	"�ھ��Ѽ���һ��",
	"��ʹ�ú��ҵ������ʷ�����߰���.һ��,�����������Ҹ����������͵��˷�������Ȼ��������,�������������µ��⣬��������",
	"��",
	}
	TFJS[2] = {"����������",
	"��ҽ����������400",
	"���ö���������500",
    "��",
	"�̶���ҩ��",
	"�׹���ʱ���������ĺ��ġ����з�ȫ���ж�20��",
	"�׹���ʱ��ʹɱ���з���Ҳ�����ж�����",
	"�����������������������ٶ���ʱ���ʻظ��������ж�",
	}
    FY[2] = 
	{"�Ǹ�Ե����",
	"�׻�û�����ʱ�ڶӣ�ϴ�ڶ����书���츳�ڹ��������ѣ������ڤ����ʱ�ڶӣ�ϴ��һ���书���츳�⹦",
	}
	BOSSZT[2] = {
	"����ľ���Ƕ���",
	"�׹����ж��������˺�������ж����˹������˺����٣����ظ�������Ч��������ж��̶��йأ�ʱ���Ѫ�ٶ�����Χ�ж��������������ж��̶ȶ�����",
	}
	TFJS[3] = {"�̽����",
	"�׹���ʱ�߼��ʸ�������",
	"���ж���ظ�����������",
	}
	BOSSZT[3] = {
	"�ڷ�������",
	"�׹���ʱ�м����öԷ�ͣ���ڹ��������ж����������һ���з������׷��һ�ι���������ԭ�й�����Χ������8�����ڵĵз�����������������⣬��������",
	}
	TFJS[4] = {"�̵���ҽ��",
	"��ҽ����������300",
	"���ö���������300",
	"��",
	"�������ë",
	"�׻��˵з���ɻ������",
	"�������ũ�Ĺ����и��Ӵ���",
	}
	BOSSZT[4] = {"��ǧ�𶾷�����Ҷ���",
	"�׹�������ǧ�𷽻ָ�ȫ������,������ʱ�Թ����߷������ԣ��������ж������������������������������漫��Ч�����ö����������˺�",
	}
	TFJS[72] = {"����������",
	"�����ӱ���ֵ����װ��[��������]",
	"��װ��[��������]������ʱ�ض�������ѪЧ��",
	}
	FY[72] = {
	"�Ǹ�Ե����",
	"�׷ɺ�а��ɱ���˷��ϴ��һ�������书",
	}
	BOSSZT[72] = {
	"�ڵ���ʮɱ",
	"���Դ���������50%,�����罣���������˺�,����ʱ����ʹ�ú����罣����������������",
	}
	TFJS[37] = {"�̳�������",
	"��ʹ�����ǽ���������",
	"���˺�С��200׷��һ������",
	"������Ѫ�����޳ͷ������ή����������",
	"��",
	"����������",
	"�����չ�����Ч��ǿ�����ظ�100%Ѫ�������������ж��������˹�",
	"�׿�ʹ�����չ����������չ��ȼ������������Ṧ+20",
	"��ʹ�����չ���������ʹ����ʽ����Ӱ��ȭ������850����",
	"��",
	"�Ǹ�Ե����",
	"�����Ǿ�ѩɽ���飬ϴ�ڶ��������书"
	}
	TFJS[589] = {"����ˮ����",
	"�����˶���ʱ�ָ���Ѫ��",
	"��",
	"���彣��Ů",
	"��ʹ�����ǽ���������"
	}
	TFJS[594] = {"�������Ὥ",
	"�ס�������ǽ.������������ս���п��Ը���һ��",
	"���Դ��������Ὥ�����������壬600�������ɵ��ӣ���������������ʵս��أ�",
	"�׻��������ʴ�������"
	}
	TFJS[52] = {"����ƽ��ǹ",
	"��ʹ����ƽǹ��ʱ������+1500",
    "��",
    "�̱�ʬ�ɲ�",
    "��ÿ����һ�����ˣ��ظ�350������ֵ",
	}
	TFJS[94] = {"�����嵶",
	"�� "
	}
	TFJS[95] = {"�����ƽ�",
	"�� "
	}
	TFJS[96] = {"�����½�",
	"�� "
	}
	TFJS[97] = {"�̽赶ɱ��",
	"�׽����˵ĵ�����Ѫ��״̬����Ϊ����",
	"��",
	"�̹���",
	"�׳�ʼ����λ��900�����ƶ�+3��",
	"��",
	"�̾��Ѽ���Ѫ�����",
	"�׾��Ѻ󼺷����ܻ�Ϊ�Լ��ֵ������˺�",
	"��",
	"��Ѫ������",
	"�׻��������ʴ�������"
	}
	TFJS[45] = {"��������",
	"��ҽ������500��",
	"��ս������Ѫ�����Լ�����ͬ��һ��"
	}
	TFJS[46] = {"�������Ϲ�",
	"�� "
	}
	TFJS[47] = {"������֮��",
	"������̹֮ͬʱ�ڳ�����̹֮�����ض�����",
	"������ɳ��",
	"��ÿ����һ���з������������������200��",
	"��",
	"����ɫָ���ҩ",
	"��ʹ�ý�ҩ�̼��񾭣�����ÿʱ����ʧ1%���Ѫ��",
	"�״�״̬������Ѫ��Խ�ͣ��˺�/����Խ�ߣ������Ļغ�",
	"�Ǹ�Ե����",
	"��¹��ɽ��ϴ��ڤ�������Ⲣ����",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������",
	"�ף�����������",
	}
	TFJS["47-1"] = {"������֮��",
	"������̹֮ͬʱ�ڳ�����̹֮�����ض�����",
	"������ɳ��",
	"��ÿ����һ���з������������������200��",
	"��",
	"����ɫָ���ҩ",
	"��ʹ�ý�ҩ�̼��񾭣�����ÿʱ����ʧ1%���Ѫ��",
	"�״�״̬������Ѫ��Խ�ͣ��˺�/����Խ�ߣ������Ļغ�",
	"�Ǹ�Ե����",
	"��¹��ɽ��ϴ��ڤ�������Ⲣ����",
	"��",
	"�ڽ�����",
	"������ս���ϵ��˲���״̬�������յ��˵Ĳ���״̬ת��Ϊ����",
	"�׹���ʱʹ�ñ˰����¶�ս��������ɸ��ֲ���Ч��",
	"�׻��˵з�ʱ��ʣ�µĵ���׷���ж���ɱ��",
	}
	TFJS[48] = {"��������ס",
	"����ʹ���ڹ��������ڹ�����������",
	"��",
	"�̱����ֿ�",
	"�����й�������240��",
	"��",
	"�Ǹ�Ե����",
	"��¹��ɽ���Ͼ��Ѿ�����һ����ѡ������ж�NPC��",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ڣ�δ������",
	"�ף�����������",
	}
	TFJS["48-1"] = {"��������ס",
	"����ʹ���ڹ��������ڹ�����������",
	"��",
	"�̱����ֿ�",
	"�����й�������240��",
	"��",
	"�Ǹ�Ե����",
	"��¹��ɽ���Ͼ��Ѿ�����һ����ѡ������ж�NPC��",
	"��",
	"�ڱ�������.Ħ������",
	"��ʹ�ñ������ƹ������Լ���ʹ���ез��������״̬",
	"�ڵ���������",
	"��ʹ�ñ������ƹ������ʴ������У����ݱ������ж����׷���˺�",
	}
	TFJS[49] = {"�̸�Ե���",
	"�׹���ʱ50%���ʴ���������ӻ������»غϼ���+200",
	"��",
	"����ң����",
	"���޹�ɽ������Դ���ڤ��������",
	"��ѧ��˻����Ϲ���ʹ����ɽ������/��ɽ��÷�ֹ����ɴ�������������",
	"��������׷��1700�������Ա����������еĵ��ˣ���ʹ�á��߷���ָ��",
	"�������ÿ��һ���书��������ɽ��÷������+50",
	"����ɽ��÷���������������ʱ�Ϊ50",
	"��",
	"����ɫָ��߷�",
	"�״߶��������ϵ���������ʹ�丽�ӷ�Ѩ25ʱ��",
	"�ף�����������",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������",
	"��",
	"�Ǹ�Ե����",
	"���޹�ɽ֧�߾��飬ϴ��һ�������书",
    "�����չ�֧�߾��飬���ѳ�Ϊ��ҹ�桿",
	"�����չ��ð˻�ʱ��������ϴΪ�˻����Ϲ�",
	"�����չ�����÷ʱ�������ϴΪ��ɽ��÷��"
	}
	TFJS["49-1"] = {"�̸�Ե���",
	"�׹���ʱ50%���ʴ���������ӻ������»غϼ���+200",
	"��",
	"����ң����",
	"���޹�ɽ������Դ���ڤ��������",
	"��ѧ��˻����Ϲ���ʹ����ɽ������/��ɽ��÷�ֹ����ɵ��ӡ���������",
	"��������׷��1700�������Ա����������еĵ��ˣ���ʹ�á��߷���ָ��",
	"�������ÿ��һ���书��������ɽ��÷������+50",
	"����ɽ��÷���������������ʱ�Ϊ50",
	"��",
	"����ɫָ��߷�",
	"�״߶��������ϵ���������ʹ�丽�ӷ�Ѩ25ʱ��",
	"�׾��Ѻ�����������Ϊ�����������������߶�����˱��Ⲣ�۳���������",
	"��",
	"�ھ�ѧ����ڤҹ��.�ֻ���",
	"��ʹ����ɽ������/��ɽ��÷�ֹ������ʴ������������������������Ӧ����",
	"�������������������������״̬�������˺�������",
	"��",
	"�Ǹ�Ե����",
	"���޹�ɽ֧�߾��飬ϴ��һ�������书",
    "�����չ�֧�߾��飬���ѳ�Ϊ��ҹ�桿",
	"�����չ��ð˻�ʱ��������ϴΪ�˻����Ϲ�",
	"�����չ�����÷ʱ�������ϴΪ��ɽ��÷��"
	}
	TFJS[50] = {"�̷�Ӣ��ŭ",
	"�׹���ʱ�ض���ɱ������к�����Ч",
	"�׷����ӳ�����30%����Ѫʱ�����ӳ�����50%��Ѫ������25%�����ӳ�����75%",
	"�׼����ٶ�+8",
	"������Ϊؤ��ʱΪ��������Ӫ������װ��������仯",
	"��",
	"�̿�������",
	"���Դ��������������������壬1000�������ɵ��ӣ���������������ʵս��أ�",
	"��ʹ�ý���ʮ���ƣ��ض�����������.���⡿",
	"��ʹ�ý���ʮ���ƣ����ʷ���������.�����ˡ�����ŭʱ�ض�����",
	"��ʹ�ý���ʮ���ƹ���������",
	"�׽���ʮ���ƺ��ڽ���50%�����츳�⹦Ч�����ӣ�����75%�������ģ�",
	"��",
	"�̵�������",
	"����ս��ʱ��������������ֵ�����������������뼯���ٶ�",
	"����ս��ʱ��������������ֵ���͵з����������뼯���ٶ�",	
	"��ŭ������������Ч������",	
	"��",
	"�ھ�ѧ������������",
	"�״��������˺��м���׷��һ�ν���ʮ��������",
	"��������������4ʱ���������С������һ.����������",	
	"�׸����������ֵ�˺����������ⷶΧ",	
	}
	TFJS[51] = {"����ϲ���",
	"�׶�ת����ʱ�����ӱ���ֵ����ض�������ϲ���",
	"�׶�ת��������ʱ�������",
	"�׶�ת���Ʒ�����������",
	"��",
	"�̹���Ľ��",
	"�׿�ʹ�ö�ת���ƽ��й���",
    "����ɫָ�����",
	"�����ý�ɫ�´��ж�Ϊֹ���������ض����������ǳ�����",
    "��",
	"�ھ�ѧ���޼䶷ת",
	"�׾��Ѻ�ת��������ʱ����ʹ������ս�����޼䶷ת��",
	"�װ������Ч��֮һ",
	"�ס�Ȥ���޼䡿����ʱ�������һ��ʱ������״̬�����������������״̬",
	"�ס��ܿ��޼䡿����ʱʹ��������һ��ʱ������������ᡢȼ�ա���Ѫ�������״̬",
	"�ס�ʱ�޼䡿�����������ж�",
	"�ס����޼䡿��������һ��ʱ���Ѫ�������ָ̻���������1%���������ֵ",
	"�ס������޼䡿���������һ��ʱ������״̬���ҵ���һ���̤",
	"�׶�ת����ʱ������һ������ֵ",
	"��",
	"�ھ�ѧ�������޲ҽ�",
	"������ֵ�ﵽ����Ժ��ö�ת��������������κ�ָ�ɼ��ʴ���",
	"�׸�������ֵ���������ȱʧ��������˺���ɱ��Ч��",		
	}
	TFJS[53] = {"����������",
	"����������9999",
	"��",
	"�������洫",
	"�������񽣳���ʽ����׷�Ӷ����ж�",
	"�������񽣺��ڽ���50%�����츳�⹦Ч�����ӣ�����75%�������ģ�",
	"��",
	"����ɫָ��貨",
	"�����ý�ɫ�´��ж�Ϊֹ����������50%��������",
	"��",
	"����������",
	"��ʹ�������񽣿��ڵ���������ֲ��������������������",
	"�ױ�����ʱҲ������˺������������ж�������������ָ�����",
	"�����ϴ��н����ĵ��˹����ͱ�����ʱ�����������ж���һ�뽣�������۳�����",
	"��",
	"�ھ�ѧ��������̩",
	"�������񽣹������ʴ����������ĵ�ǰһ���������յ�������",
	"�������������н���������һ�뽣����������",	
	"��ͬʱ���ݵ��˽���ֵ�����������˺�",	
	"�Ǹ�Ե����",
	"������ɽ�����飬ϴ��һ�������书",
	"�������¾��飬ϴ�������书"
	}
	TFJS[70] = {"����������",
	"�� "
	}
	TFJS[76] = {"����������",
	"��������������������ѧ�ؼ�",
	"�׳�ʼ�Դ�100���䳣",
	"��",
	"���ŋ�����",
	"����Ϊ����ʱ����ʼ��ϵ����ֵ������30��",
	"��",
	"�������",
	"���ڳ�ʱ���ҷ�ȫ�幥����Χ����һ��",
	"��",
	"����������",
	"�ס���Ҫ������ϵ����ֵ֮�ʹ��ڵ���500",
	"���ڳ�ʱ���з�ȫ�幥��ʱ�������ʽ",
	"��",
	"�Ǹ�Ե����",
	"�׻���貨΢�����츳�ṦϴΪ�貨΢��"
	}
	TFJS[90] = {"��ع�����",
	"��ʹ����������������͵�з�����Я���ĵ���",
	"��",
	"�Ǹ�Ե����",
	"���ҵ�����������һ���书ϴΪ������"
	}
	TFJS[98] = {"�̶����ӯ",
	"�ױ��������ӳ�������200%"
	}
	TFJS[99] = {"���޶���",
	"�ױ��������ӳ�������200%"
	}
	TFJS[100] = {"�����׼���",
	"�ױ��������ӳ�������200%"
	}
	TFJS[44] = {"�������ɷ",
	"�ױ��������ӳ�������200%"
	}
	TFJS[101] = {"�̴����ҳ�",
	"�� "
	}
	TFJS[102] = {"��˫������",
	"�����ջָ������ӱ���ʱ��ָ�2�����գ�",
	"���Դ����������������壬800�������ɵ��ӣ���������������ʵս��أ�",
	"�׹���ʱ����׷��800�������ɵ��ӣ���������������ʵս��أ�",
	"��",
	"��������ʦ",
	"��ʹ��һ��ָ�߼�������"
	}
	TFJS[103] = {"�̴�������",
	"�׻��浶������������.���浶����������100%",
	"���Դ����������������壨500���������ɵ���",
	"��",
	"��ָ��û�",
	"�׿ɻû������е��书�ؼ�",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������",
	}
	TFJS["103-1"] = {"�̴�������",
	"�׻��浶������������.���浶����������100%",
	"���Դ����������������壨500���������ɵ���",
	"��",
	"��ָ��û�",
	"�׿ɻû������е��书�ؼ�",
	"��",
	"����¥��",
	"�ױ�ŭ������ʹ�������л�����",
	"�״�������������.���浶���ɻָ������ͼ���",
	}
	TFJS[104] = {"����������",
	"�������������������κ�װ��"
	}
	TFJS[105] = {"����������",
	"�� "
	}
	TFJS[110] = {"�̾���ׯ��",
	"�� "
	}
	TFJS[111] = {"�̾���ׯ��",
	"�� "
	}
	TFJS[112] = {"����������",
	"��ʱ������1��ŭ��",
	"��",
	"������ħ��",
	"�ױ��������ر���"
	}
	TFJS[113] = {"�̲κ�Ǳ��",
	"�׶�ת����ʱ�����ӱ���ֵ����ض�������ϲ��̷�������",
	"���Դ����κ����������������壬600�������ɵ��ӣ���������������ʵս��أ�"
	}
	TFJS[114] = {"�̴�Ħ����",
	"����������9999����ʼ��ѧ��ʶ100",
	"�ױ�����100%��������ض��𡿣���ȫ����ɱ��",
	"�׹���ʱ�߼��ʴ�����Ѩ",
	"�׹���ʱ�书�Ӿ���Ч�������������������",
	"��",
	"�����������ջ���",
	"�׽����ܵ����˺�50%����ʼ����25%��ÿ20��ʵս����1%",
	}
	TFJS[115] = {"�̴ϱ�����",
	"��ӵ�������黭�����츳�⹦"
	}
	TFJS[116] = {"�̱�ڤ��Ԩ",
	"�ױ�����ʱ�ض�������ڤ��������",
	"�ڳ�������ר��",
	"����������������ڤ������ʱ��������������",
	"��",
	"�̷����޼�",
	"�׶������˺����20%���������˺�����20%",
	"��",
	"����ң����",
	"�������ÿ��һ���书��������ɽ��÷������+50"
	}
	TFJS[117] = {"��ת˲����",
	"��ÿ��80ʱ���Զ�����Ѫ���岢��������쳣״̬",
	"��",
	"�̲��ϳ���",
	"�ױ�����ʱ�ָ�80������",
	"�״����˻����Ϲ�����ʱ������������������������",
	"��",
	"����ң����",
	"�������ÿ��һ���书��������ɽ��÷������+50"
	}
	TFJS[118] = {"������ת������������ר����",
	"�ױ�����ʱ���ʴ��������߱��ι��������һ���ƶ�����",
	"���ƶ����������λ������һ������",
	"�׻�������Ϊ1�㣬���޷�����",
	"�׻�����ʧǰ�������ٴδ�������ת��",
	"��",
	"����ˮ�޳�",
	"�����������ٶȲ����쳣״̬Ӱ��",
	"��",
	"����ң����",
	"�������ÿ��һ���书��������ɽ��÷������+50"
	}
	TFJS[55] = {"�̴�������",
	"�����һ����������ʹ̶�Ϊ80%",
	"����Ϊ����ʱ�����10���������������",
	"��",
	"����֮����",
	"��ʹ�ý���ʮ���Ʒ�������ʱ���ڵڶ�������������غ󾢣����������˺���ɱ��",
	"�׺������������������ӣ����13�����󾢳���11��ʱ�����ӵз���������",
	"��ÿ��������8%�ĸ����ȼ��˺���150��������NPC�������޹̶�Ϊ10����",
	"��",
	"�ھ��ѳƺţ����Ӣ��",
	"�׹���ʱ��һ�����ʴ�������������",
	"���ж����԰�����ʽ�ų����Ի��е㷶Χ5���ڵ��˲�������",
	"�׸��ݵ����������ֵ��һ��۳�������һ����������������������",
	"��",
	"�ھ����ؼ��������",
	"�׾��Ѻ��ֶ�������������ʱ��һ�����ʷ��������",
	"�׿�ͨ��һ����Χ���ƶ��ܿ����˹���",
	"��֮���Խ����Ʒ�������",
	"��",
	"���ؼ��������귭����������ר����",
	"��ϰ�þ����󣬱��������ʴ�������϶Է�����������Ϊ(������*2)%",
	"��",
	"�Ǹ�Ե����",
	"������һ������׾��飬ϴ��һ�����������书",
	"����������һ����չ���ʱ��������ѡ����������"
	}
	TFJS[56] = {"�����Ŷݼ�",
	"��ս����ʼǰ�ɲ������󣬲�ͬ��ɫ�ĵ����в�ͬЧ��:",
	"�Һ�ɫ������ɵ��˺����20%",
	"����ɫ�����ܵ����˺�����20%",
	"����ɫ��������ʱ׷��2000������",
	"����ɫ����������ʱ��30%��������",
	"��",
	"������ޥ��",
	"�������书�ؼ�ʱ������ֵ�ɳ�����",
	"��",
	"�Ǹ�Ե����",
	"�������ϼ�����飬ϴ��һ�������书"
	}
	TFJS[57] = {"�̶�а",
	"�׹���ʱ�����̺�������,ɱȫ���������500",
	"�׹���ʱ�߼�����ɷ�Ѩ",
	"�׼����ٶ�+10",
	"���Դ��һ�����������ѧ����Ч����ʹ���һ�����ȫ��Ч��",
	"���Դ������Ű��塱���������壬500�������ɵ��ӣ���������������ʵս��أ�",
	"��",
	"�̾��Ѽ���������ͼ",
	"�ס����Ű��塱����ʱ�����ʽ����ɡ�������ͼ����������������˵����������������",
	"�ײ��������°���Ч���е�һ��",
	"�ҿ��š���һ��ʱ���ڽ�������״̬",
	"�����š����ܵ����˺�����20%",
	"�ľ��š�����������������ж�",
	"�����š��������߱������������롰ǧ����Ӣ��״̬",
	"�Ҷ��š���һ��ʱ���ڷ������������˺�",
	"�̾��š��������߱�������������״̬�ͼ����ͷ�",
	"�����š���������������״̬�������߽��붾��״̬",
	"�����š��������߱����������߶������������쳣״̬�������ָ�����",
	"��",
	"�̾��Ѽ����̺�ħ��",	
    "���ڱ�����ʱ�������Ű��塱���壬���ʴ������̺�ħ������ʹ������һ��ʱ�������",
	}
	TFJS[60] = {"�̵�����ʩ",
	"�׼���ʱ��С������Ծ������ֵ������ӣ�",
	"��ѧ�����˺󣬱������ض����롾��.���˾���-�߻���ħ��״̬",
	"���߻�״̬�ض�����������/����Ч�����10%������/����/���м��ʴ�����",
	"���߻�״̬�޷���Ϣ������������20�㣬��ֹͣ�߻�",
	"��",
	"�̰���ׯ��",
	"�����й���������",
	"�׹���ʱ���ӵз�����ǿ���϶�30��",
	"�׸�󡹦.������Ч����ǿ���ɸ�������ֵ�ĸߵ�׷���˺�",
	"�������ȷ����ڹ����������ʷ���������Ӱ�������������뼯�����Һ�ҡ��˫��Ч��",
	"��",
	"�ھ��ѳƺţ�����",
	"�׾��Ѻ󣬱�����ʱ���ݹ������ж�������ˣ��������߶���������ʱ���ж���Ѫ",
	"�����������ж�����50 ���򸽼���Ѫ�߶�����Ѫʱ�����ж�״���Ӵ���ѪЧ��",
	"�ױ�ɱ��ʱ���ݹ������ж���������ҷ���ɱ��ֵ",
    "�����������ж�����50 ���򸽼����߶���һ��ʱ������Ч����Ϊ0",
	"�׾��Ѻ󹥻������ݱ��������ж�����ظ�����������",
	"��",
	"�Ǹ�Ե����",
	"�������ϼ�������ϴ�ڶ����书���츳�ڹ�ϴΪ���˾���",
	"�׻�ɽ����֧�߾��飬ϴ�������书",
	"�����������������NPC����",
	}
	TFJS[61] = {"�̰�������",
	"�ױ�ŭʱ��ʹ��ѩɽ�����ƿɴ�������ȭ�����еĵ��˼������벨��״̬20ʱ��",
	"�ھ��ѳƺţ���Ы����",
	"�׾��Ѻ󣬹������ӵз�����ǿ���϶�10-30��",
	"������ȭ���ʽ�����ǱӰ���֣�������������״̬���������߼�������ʱ����",
    "��ͬʱ���ݵ����ж�������⸽���˺��ͱ���Ч��",
	"��",
	}
	TFJS[64] = {"�̷�豹���",
	"�����һ�����������100%",
	"��",
	"����ͯ���",
	"��ÿ�ж�һ�Σ�����Ч������10%",
	"��",
	"�ڿ���֮���",
	"�׹���ʱ����(25+ʵս/20)%����ʹ�з��޷������ڹ�����",
	"��",
	"�����Ҳ�������������ר����",
	"�׷������һ����󣬻�������ʲ���һ�ζ�������һ���",
	"��",
	"�ھ��Ѽ�:���޿���֮���",
	"�׾��Ѻ󣬼��ʹ���ʹ���������޷�������������Ч",
	"��",
	"����ͯ���Ѽ�:��������ȭ",
	"������ʱ��Ȼ�ɹ����ɶ�ε�����������",
	"����������ݲ����ӿ켯���ٶȺͻָ�����",
	"�������󹥻��ḽ��������������ص���������������ƽ����",
	"����ص�ȭ��ϵ���˺��������ᱻ�з�������϶��ܵ�ɱ���ͷ�",
	"��",
	}
	TFJS[65] = {"����ɮ",
	"��ʹ��һ��ָ�����з�׷�ӡ�����ҵ��״̬������50ʱ��",
	"�״��ڡ�����ҵ��״̬���˹���ʱ������ʧ50%����������������",
	"�׹���ʱ�߼�����ɷ�Ѩ",
	"��",
	"������һ��",
	"��ս�����״α����˿ɸ���һ��",
	"�׻ظ�70%����ֵ������״̬���������ж�",
	"�׸���󣬼����ٶ�+5",
	"��",
	"�Ǹ�Ե����",
	"�׵��Ĵδ�������һ���󣬾���",
	"��",
	"�ھ��Ѽ�������ָ",
	"��ָϵ��������ָ���ͽ�ϵϵ�����˺�",
	"��һ��ָ����ʱ���ʷ������߾�������",
	"�ױ���������ʱ,���ʻظ����������ˣ��Ҽ����˺�������",
	"��",
	"��ȼ�Ƹ���",
	"�׸������ȫ���ߵз��������˺�",
	"��ɱ��������ҵ��״̬�ĵ��ˣ����ȼ��������ɱ�˵з�ȫ��"
	}
	TFJS[68] = {"�̳�����",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[67] = {"�����ư���",
	"��ʹ���κ��书���������߱���"
	}
	TFJS[69] = {"��ؤ�����",
	"��ʹ�ý���ʮ���ƣ�50%���ʷ���������.���⡿",
	"��ʹ�ý���ʮ���ƹ���������",
	"���Դ���ؤ�����������������壬600�������ɵ��ӣ���������������ʵս��أ�",
	"��",
    "�ھ��ѳƺţ���ؤ",
	"��ʹ�ý���ʮ���ƻ��ߴ򹷰�ʱ���м����ڹ���������׷����һ���书�Ĺ���",
	"��׷�ӹ����У�����ʮ���ƽ����ɡ�̰�ǽ����ơ�����׷������",
	"��׷�ӹ����д򹷰��������ɡ����ƴ򹷰�����������ϵ�͹��������˺�������",
	"�ײ��Ҹ��ݵ�ǰ�������Ӵ�������",
	"��",
	"�Ǹ�Ե����",
	"�׻�ɽ����֧�߾��飬ϴ�������书���츳�ڹ�ϴΪ�����񹦣���������תΪ����"
	}
	TFJS[78] = {"����ʬħɷ",
	"�׻�ɽ����󣬾����׹�צ��������50%"
	}
	TFJS[119] = {"����",
	"�� "
	}
	TFJS[120] = {"����",
	"�� "
	}
	TFJS[121] = {"�̸�",
	"�� "
	}
	TFJS[122] = {"�̶�",
	"�� "
	}
	TFJS[123] = {"�̵�����",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[124] = {"�̳�����",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[125] = {"�̳�����",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[126] = {"��������",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[127] = {"�̹�����",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[128] = {"���徻ɢ��",
	"�׻�ɽ�����ȫ�潣����������"
	}
	TFJS[129] = {"������ͨ",
	"�׻�ɽ�����ȫ�潣����������",
	"��ʹ��ȫ�潣����60%���ʷ�������������׷��777����",
	"�׹���ʱ�߼�����ɷ�Ѩ",
	"��",
	"����ͨ������������",
	"��ս�����״α����˿ɸ���һ��",
	"�׻ظ�70%����ֵ������״̬���������ж�",
	"��",
	"����ͨ������������",
	"�׷����������ֺ��������뱱�����״̬",
	"�׻�����������ϰ�õ�һ��Ч��",
	"��֮��ÿ���������������һ�㣬���߲�",
	"�ײ�����������ά�����״̬������",
	"������ÿ�ж�һ�μ���һ�㣬���꼴��ȥ���״̬",
	"�������״̬�£�ȫ��ŭ������",
	"�ױض������ڹ�����������ֵ����",
	"��",
	"�Ǹ�Ե����",
	"�׵��Ĵδ����������ֺ���ɾ���",	
	"��",
	"�ھ��Ѽ������콣�",
	"�����⹥�����ܴ�����ѨЧ��",
	"�������������ʽ���Ϊ���������Ȼ��������������̫�º��׽����У�����ɱ��",
	"�׾��Ѻ󱻹�������ʱ,���ʴ������",
	"�׻ظ��������Һ��ԶԷ�������ɱ��",
	"��",
	"�ھ��Ѽ�����������",
	"�׾��Ѻ��ʸ����������������������",
	"�������������޸��������������",
	"��",
	"���ռ����Ѽ��������Ž�",
	"�׾��Ѻ󱱶�������ʹ�ò����𲽼�ǿ����������",
	"�����һ�㷢��������.�����Ž�����˫�����������ӶԷ�����",
	}
	TFJS[130] = {"�̷�������",
	"��"
	}
	TFJS[131] = {"����������",
	"�׻�ɽ�����ֽ��������������",
	"��ʹ�����ֿտչ������ɵ�ȡ�з�����Я������Ʒ"
	}
	TFJS[132] = {"��������",
	"�� "
	}
	TFJS[133] = {"����ɽ����",
	"�� "
	}
	TFJS[134] = {"��Ц����",
	"�� "
	}
	TFJS[135] = {"����������",
	"�� "
	}
	TFJS[136] = {"��ԽŮ��",
	"�� "
	}
	TFJS[590] = {"����������",
	"��ʹ�������书����ʱ����60%����׷�Ӵ�������"
	}
	TFJS[137] = {"��������",
	"�� "
	}
	TFJS[138] = {"��һָ����",
	"�� "
	}
	TFJS[86] = {"��������",
	"�׵з�ȫ�����Ч������10%"
	}
	TFJS[87] = {"��������˿",
	"�׵з�ȫ�幥��Ч������10%"
	}
	TFJS[139] = {"����ƽ����",
	"�� "
	}
	TFJS[150] = {"��һ����Ѫ",
	"�� "
	}
	TFJS[71] = {"����������",
	"��ʹ���κ��书���������߱���"
	}
	TFJS[19] = {"�̾��ӽ�",
	"��",
	"�Ǹ�Ե����",
	"��Ц�������ھ�ѡ����а���飬ϴ��һ�������书"
	}
	TFJS[20] = {"������ҹ��",
    "�׹���ʱ���ʷ���������ҹ�ꡱ�����ι����ض���ɶ�������",
    "��",
	}
	TFJS[21] = {"�̺�ɽ����",
	"�� "
	}
	TFJS[22] = {"����ɽ����",
	"�׹���ʱ�߼��ʸ�������",
	"���Դ����������������������壬500�������ɵ��ӣ���������������ʵս��أ�"
	}
	TFJS[23] = {"��̩ɽ����",
	"�׹���ʱ�߼��ʸ�������"
	}
	TFJS[24] = {"���������",
	"�� "
	}
	TFJS[25] = {"�̷�˴���",
	"�׹���Ч������10%",
	"��",
	"���嶾����",
	"���ö���������400"
	}
	TFJS[26] = {"������ħ��",
	"�����Ǵ�������Ч�����",
	"���Դ��������壨600�������ɵ��ӣ���������������ʵս�й�",
	"��ʹ���κ��书�߼��ʱ������߼�����ɷ�Ѩ ",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������",
	"�ף�����������",
	"�ף�����������",
	}
	TFJS["26-1"] = {"������ħ��",
	"�����Ǵ�������Ч�����",
	"���Դ��������壨600�������ɵ��ӣ���������������ʵս�й�",
	"��ʹ���κ��书�߼��ʱ������߼�����ɷ�Ѩ ",
	"��",
	"���ɻ�ħ��",
	"�ұ����ж����������һ���з��������ɵз�����",
	"�����������������������ֵ����δ��������ת��Ϊ����ֵ",
	"���������˵з�û��������������ȫ��з�����500������100",
	"�ڶ������������ĵ��ˣ���������100���۳�����200",
	}
	TFJS[27] = {"�̷�������",
	"�׹���������",
	"�׼����ٶ�����6��",
	"�ױ�������������ʱ�˺�����������",
	"��",
	"�̿�����Ѩ��",
	"�׹���ʱ����׷��1000�������ұض���ɷ�Ѩ",
	"��",
	"�̿����ط�������Ϊ��",
	"�ױ�ŭʱ������ֱ����ŭ���ǰ�޷���ɱ��"
	}
	TFJS[28] = {"��ɱ����ҽ",
	"��ÿ����һ�����˼����ٶ�+3�㡢ҽ������+50�����5����Ч��",
	"��ҽ����������500"
	}
	TFJS[29] = {"���������",
	"��ս�����ѷ���ԱԽ�ټ����ٶ�����Խ��",
	"�׼����ٶ�����ֵΪ��20-�ڳ�����������4",
	"��",
	"����Ů����",
	"��ս���϶Է�Ů�Խ�ɫԽ�༯���ٶ�Խ��",
	"�׼����ٶ�����ֵΪ���ڳ��Է�Ů��������4",
	"��",
	"�ھ��У����������",
	"�׾��Ѻ��ʹ���������������������ʹ�����¾���:",
	"���ף�ʹ�ú�30ʱ�����޷�������������",
	"�׷�����Է�ŭ����ת����������ʧ",
	"�����룺������ɶԷ���������������",
	"�����䣺����ʹ�Լ�һ��ʱ������������������ɱ��",
	}
	TFJS[31] = {"�̽�������",
	"�� "
	}
	TFJS[32] = {"�̽�������",
	"�� "
	}
	TFJS[33] = {"�̽�������",
	"�� "
	}
	TFJS[34] = {"�̽�������",
	"�� "
	}
	TFJS[35] = {"����������",
	"���ƶ�����+3",
	"��",
	"�̾Ž�����",
	"�ױ�������ָ��󣬽���ս����ʼ����ֵ1000",
	"��",
	"�̽�ħ���٣����½�ڣ�����",
	"�������ʴ������",
	"��ʹ�ö��¾Ž�����������",
	"�׹���ʱ�м��ʷ�������ħ���١�����������Ч������������ŭ�ش���",
	"��",
	"�Ǹ�Ե����",
	"��Ц��˼���¾��飬ϴ��һ���书���츳�⹦ϴΪ���¾Ž�",
	"��Ц��÷ׯ���ξ��飬ϴ�ڶ����书���츳�ڹ�ϴΪ���Ǵ�"
	}
	TFJS[36] = {"�̱�а����",
	"�׽���ս���󣬳�ʼ����ֵ700",
	"�׿�����Ŀ׷�Ӷ����ж�",
	"�׿�ʹ�ÿ����񹦹���",
	"��",
	"�Ǹ�Ե����",
	"��Ц�������ھ�ѡ����а���飬ϴ��һ�������书",
	"��Ц�������ھ�ѡ����а���飬�츳�ڹ�ϴΪ������"
	}
	TFJS[140] = {"�̽���ͨ��",
	"�׹����ͱ�����ʱ�������κ�ϵ��������������ϵ������ӳ�",
	"��",
	"������ʤ����",
	"�ױ�ŭʱ��ʹ�ö��¾Ž�������׷��2000����������10ʱ��ľ�ֹ״̬���ɵ���"
	}
	TFJS[73] = {"�����ӯӯ",
	"��ʹ�ó����٣����ʷ������������ٽ��������Եз�ȫ�����50��Ѫ���������˺�",
	"��",
	"������ʥ��",
	"���������ͬʱ�ڳ�ʱ��ʹ�ó����ٹ��������ʷ������������� Ц��������"
	}
	TFJS[79] = {"�̻����齣",
	"��ÿ����һ�Ž���������Ч������5%",
	"��ÿ����һ�Ž�������ʼ����+50",
	"��",
	"�Ǹ�Ե����",
	"��Ц�������ھ�ѡ����а���飬ϴ��һ�����������书",
	}
	TFJS[88] = {"�̾���",
	"�ױ�����ʱ��30%���ʷ���\"�������ٲ�\"����",
	"��",
	"����ɫָ�����",
	"�׽����Χ���ҷ���һ���ѵ�ǰ��������500��"
	}
	TFJS[106] = {"�̽��޵�",
	"�� "
	}
	TFJS[141] = {"�̽�����ͽ",
	"�� "
	}
	TFJS[142] = {"�̿��콣",
	"��ʹ�ý����������»غϼ���+100"
	}
	TFJS[143] = {"���ҹ�����",
	"�� "
	}
	TFJS[144] = {"���ҹ�����",
	"�� "
	}
	TFJS[145] = {"���ҹ�����",
	"�� "
	}
	TFJS[146] = {"���ҹ�����",
	"�� "
	}
	TFJS[147] = {"���ҹ�����",
	"�� "
	}
	TFJS[148] = {"���ҹ�����",
	"�� "
	}
	TFJS[149] = {"����������",
	"�ױ�����ʱ���ݹ�����ŭ��ֵ�ٷֱȼ���",
	"���׽����з���ʱ�ָ�������Ч��������ŭ��ֵ����",
	"��",
	"��ǧ��������",
	"��ȭ������ʱ����ʱ����һ�����������3��",
	"��ÿ�������˺��������ӱ�",
	"��",
	"�̷���ʨ�Ӻ�",
	"���ڹ�����ʱ����������ʨ�Ӻ𡿣����ȫ��",
	"���˺�100�㣬��������10��",
	"�׶Է�������ʱ���⸽���˺�������",
	}
	TFJS[400] = {"�������޺�",
	"�������޺�ȭ��������300",
	"�׿ɶ���ʹ�÷����޺�ȭ",
	"��",
	"��ǧ������",
	"�ױ�����ʱ���������������������˺�",
	"���츳�⹦��������������",
	}
	TFJS[74] = {"�̽���֮��",
	"���ҷ�ȫ�����Ч�����10%",
	"��",
	"�̴������",
	"��ʹ�����ֽ�������ɱ������7-8��",
	"��",
	"����ɫָ�ͳ��",
	"���ҷ�ȫ�弯����200��"
	}
	TFJS[75] = {"����غ컨",
	"�׶��ѣ�����ʱ����ֵ������",
	"�����ǣ���ʼ����ֵ������",
	"��",
	"�����ͨ",
	"��ÿ����һ��ȭ���������˺�����5%",
	"��ÿ����һ��ָ����������ʼ��������50��",
	"��ÿ����һ�������������������˺�����5%",
	"��ÿ����һ�����������������ٶ�����5%",
	"��ÿ����һ����ϵ������������ŭ�������ٶ����5%",
	"��",
	"������֮��",
	"�׹������Խ�ɫ�˺�����15%�������Խ�ɫ�����˺�����15%",
	"��",
	"�̾������ԣ��ٻ����",
	"�׹�����350�����������һ��������ֵ����1/2ʱ��35%���ʹ����ӱ�",
    "�׷�����350��������ͭ�����ۣ�30%����ս�������ܵ����˺�ֵ����1/3",
"���Ṧ350����������ң�β���25%���ʱܹ����˵Ĺ���",
"����������5000��������ж����Ԫ��25%�������ܹ���ʱ�۳�����ֵ��",
"�����˺����˺����Ϊ10��",
"��",
"��ȭϵ130����������ȭ��Ϯ��ȭϵ������ٻ���ȭ���ʴ������������Ӳ��ַ���",
"��ָϵ130��������羢�����ϵ������ٻ���ȭ���ʴ���, ʹ�������߱ط�Ѩ",
"��25ʱ��",
"�׽�ϵ130���������������ƣ���ϵ������ٻ���ȭ���ʴ������ж���ָ�250����",
"�׵�ϵ130���������������գ���ϵ������ٻ���ȭ���ʴ�������Ѫ����",
"����ϵ130���������ɨǧ������ϵ������ٻ���ȭ���ʴ����������������������˺�",
"�������ðٻ���ȭ����������Чʱ���ḽ�����������������֮һ",
"�ס����������������ж���������",
"�ס��ڴ�������ǿ��ɱ�����Ҹ�������",
"�ס����ľ����������쳣״̬֮һ������������ǧ����Ӣ�������������Ͷ�����ӡ��",
"�ס����վ��������������ָ��������Ҹ�����Ѫ",
"�ס���ɽ������������������˺�",
"��",
"����ϵ֮�ʹ���400�����������ǣ��κι���60%���ʴ���, ȫ�����",
"��ɱ����80���޷�����",
"��",
"�̾��Ѽ�������ȭ.�ٻ����ҡ�",
"�װٻ���ȭ�������ʴ������ɶ�����������",
"�ײ�������ϵϵ��Ҫ���Ȼ�����ٻ���ŵĹ���Ч��",
	}
	TFJS[80] = {"�����;���",
	"���ҷ�ȫ�幥��Ч�����10%",
	"��",
	"�̻����й�",
	"�׹���ʱ���������Ч���ӱ�",
	"��",
    "�ھ��Ѽ�������̫��",
	"�׹���ʱ���������Ч�����ɸ�������ϵ��ǿ��",
    "�״���̫������ʱ�������ˣ����������ֵ��ǿ��̫��ʱ����Ч��",
	"�ײ������ƽ�����������ݻ���ֵ�������գ������˺������ֵ",
	"�ײ���̫�����������Ἰ�ʴ���ȫ�����������ݻ���ֵ��Է����˸����������˺�",
	"��ͬʱȫ������Ҳ���ڻ���ֵ����50���Ȼ����",
    "��",
	"���츳�ڹ�",
	"�����������޼����������һ����к��츳�ڹ���Ϊ������",
	"��",
	"�Ǹ�Ե����",
	"���䵱ɽ͵̫������֧�ߣ�ϴ�ڶ��������书���츳�⹦����̫����",
	"��ͬʱ�����������",
	"���齣���������δ����������"
	}
	TFJS[151] = {"�̷�̩��",
    "�׼�����ɱ��0����ʱ�������Ѩ״̬�������ж���������50ʱ������״̬",
	"��",
    "�ھ��Ѽ���������",
    "�׹���ʱ���ƶ��������������ʺ���������",
	"������ʱ���⸽�����ɷ������˺�",
	"���ж������ƶ�����ָ�����������",
    "��",
	"�Ǹ�Ե����",
	"��������а��������֮ս��컨�Ἧ�����"
	}
	TFJS[152] = {"�̹�Ӱ���ٲ�",
	"�� ������ʱ���ݵ����Ṧ��ֵ���ʽ�������",
	"��",
	"�ھ��Ѽ���׷�������",
	"�׾��Ѻ��Ȼ��������������3~5��",
	"�׸������������˺�������������",
	"��",
	"�Ǹ�Ե����",
	"��������а��������֮ս��컨�Ἧ�����"
	}
	TFJS[153] = {"�̰���֮��",
	"�׳�ʼ����ֵ150��",
	"��ʹ�ð������2~4���˺����Ҿ��Ѻ����ͬ����ֵ�ظ�����",
	"�����߰�������",
	"��",
	"��̫������",
	"�ײ���ѧϰ̫��ȭ̫���������Դ�̫������",
	"����ս��ʱ����Ҳ�ɼ���ʹ��̫��",
	"��",
	"�ھ��Ѽ���ǧ������",
	"�׾��Ѻ󣬱�����ʱ����ʹ�������������",
	"���ֶ�����ʱ��ָ����������",
	"�Ǹ�Ե����",
	"��������а��������֮ս��컨�Ἧ�����"
	}
	TFJS[154] = {"��˫��Ů��",
	"��ʹ��ԧ�쵶������ʱ50%���ʴ������һ���",
	"�׹����ԧ�쵶����������300",
	"��ս�����ҷ����Խ�ɫԽ���乥��Ч��Խ��",
	"�ھ��Ѽ���ԧ��������",
	"�׾��Ѻ����һ�����ʹ��ԧ�쵶���������",
	"�����һ�����ĵ�һ�ι�������ˣ��ϵ���˺�",
	"�׶���������������Χ����",
	"��",
    "�Ǹ�Ե����",
	"��������а��������֮ս��컨�Ἧ�����"
	}
	TFJS[155] = {"�̺��޳�",
	"�� "
	}
	TFJS[156] = {"�̰��޳�",
	"�� "
	}
	TFJS[58] = {"�������½�",
	"������ֵ����50%ʱ����������������ֵ����25%ʱ������3��",
	"�׵�����ֵ50%ʱ������ֵÿ�ٽ���1%���»غϼ���λ��+10��",
	"��",
	"������",
	"���ؽ��洫����ʱ������������ֵ��������",
	"�׹���ʱ����������֮ŭХ�����з�ȫ�弯������100��",
	"��ս���У���С��Ů������ʱ������������ֲ�����������֮��ŭ��������Х��",
	"��",
	"����Ȼ����",
	"��Ѫ������70%�����˴���30ʱ��ʹ����Ȼ�������м��ʴ�������",
	"��Ѫ��Խ�ͣ�����Խ�ߣ�����Խ�ߣ���������ʱ��ŭ�ض�����",
	"�����ʴ��ڵ���50��������Ȼ����س�������",
	"�����ʵ���50��������Ȼ����ض�����",
	"��",
	"�Ǹ�Ե����",
	"����Ϊ��������ʱ���д���ר������",
	"�׶��½�ڣ����������ʱ��ϴ��һ���书",
	"�������������ս��ϴ�������书����ѡ��ϴ�츳�ڹ�",
	"�����ٻ��Ⱦ����ϴ�ڶ����书",
	"�����ţ�Ҵ�֧�ߣ���ѡ��ϴ�������书���츳�ڹ�",
	"�׻�ɽ����֧�߾��飬��ѡ��ϴ������书"
	}
	TFJS[59] = {"��һƬ����",
	"�����һ�����������70%",
	"��",
	"����������",
	"��ʹ����Ů���Ľ����߼�������"
	}
	TFJS[62] = {"��Ԫ�ɵ�ʦ",
	"���κι���׷��2000������",
	"��",
	"�Ǹ�Ե����",
	"�������������ս��ϴ�ڶ����书���츳�⹦ϴΪ���ִ�ת"
	}
	TFJS[63] = {"������ڸ�",
	"������ֵ����50%ʱ������Ч������20%",
	"��",
	"����������",
	"��ʹ�����｣����������ɱ������300��",
	"��ս��ʱ��ʹ�á����ָ��",
	"��",
	"�ھ��Ѽ����ٻ�¥��",
	"�׾��Ѻ�ʹ�����｣�����������õ����뾫�����״̬",
	"��һ��ʱ���ڵ��Ҹ�����ת���Լ����˺��Ӵ󣬶Եз���Ѫ",
	"���ж���һ������ʹ�ðٻ�������ʹ�������е�Ϣ�ָ�",
	"��",
	"�Ǹ�Ե����",
	"���������ţ�Ҵ���飬ϴ�ڶ��������书",
	"�ײ���ɰٻ�¥����",
	}
	TFJS[84] = {"����������",
	"���κι���׷��1000������",
	"�׹���ʱ���ʷ���\"���������ж�\"�����ӵз�����ǿ���϶�13-16��"
	}
	TFJS[89] = {"��ʳ��",
	"�׹�������������",
	"��",
	"����ɫָ�����",
	"�׻ظ�ָ���ڽӶ�������50��"
	}
	TFJS[157] = {"������ʬ��",
	"�׻�ɽ�������߰˴���������"
	}
	TFJS[158] = {"�̲�˹���",
	"����Ϊ��������ʱ���ֻ��һ������"
	}
	TFJS[159] = {"����������",
	"�ױض��������˺��������1.5�����츳�⹦�����׵Ķ���������Ч��"
	}
	TFJS[160] = {"�̹�ʦ��ͽ",
	"�� "
	}
	TFJS[161] = {"�̳�������",
	"��ʹ���嶾����ʱ����70%���ʱ�Ϊ�������ƣ�׷��70���˺�����ǿ���϶�20��",
	"�׾��Ѻ���ݵ����ж�������Ӷ౶�˺�",
	"��",
	"�Ǹ�Ե����",
	"�����а�߹�Ĺ�ܵ����飬ϴ�ڶ��������书���츳�ڹ�ϴΪ��Ů�ľ�������",
	"��",
	"�ھ��Ѽ�������������",
	"�ױ�Ȼ����",
	"��һ�����ʷ�����������",
	"��",
	"�ھ��Ѽ�����������",
	"�������ʹ�ñ�������ḽ�Ӷ����Ч��",
	}
	TFJS[455] = {"���٤���",
	"�׳���������������",
	"�ױ�����ʱ�˺�����Ϊ1",
	"��",
    "�̷��ǵ�",
	"���٤�������׺󸽼����칦��ͬЧ��",
	"�����ϴ����Ʊ���ʱ�Ἰ�ʴ����������ⷶΧ����",
	"��",
	"�Ǹ�Ե����",
	"��"
	}
	TFJS[38] = {"���������",
	"�׼������/����/���м���ʱ�ض����������ж�",
	"�׻�ɽ����󣬽��ڵ�����������50%",
	"�ס��޺���ħ����ЧЧ����ǿ10%�������˺���ɱ����",
	"����������9999",
	"��",
	"�̻���̫��",
	"�׿�ʹ��̫���񹦹��������м���׷��1200������",
	"��̫���������������Ṧ+50��������һ�ξ���",
	"��",
	"�Ǹ�Ե����",
	"������������ս�������飬ϴ�ڶ����书���츳�ڹ�ϴΪ̫����",
	"�ף�����������",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������",
	"�ף�����������",
	"�ף�����������",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������",
	}
	TFJS["38-1"] = {"���������",
	"�׼������/����/���м���ʱ�ض����������ж�",
	"�׻�ɽ����󣬽��ڵ�����������50%",
	"�ס��޺���ħ����ЧЧ����ǿ10%�������˺���ɱ����",
	"����������9999",
	"��",
	"�̻���̫��",
	"�׿�ʹ��̫���񹦹��������м���׷��1200������",
	"��̫���������������Ṧ+50��������һ�ξ���",
	"��",
	"�Ǹ�Ե����",
	"������������ս�������飬ϴ�ڶ����书���츳�ڹ�ϴΪ̫����",
	"�׳���ʯ�����ʯ�����ڶ�ʱ���ں�ľ�½⿪����֮��",
	}
	TFJS["38-2"] = {"���������",
	"�׼������/����/���м���ʱ�ض����������ж�",
	"�׻�ɽ����󣬽��ڵ�����������50%",
	"�ס��޺���ħ����ЧЧ����ǿ10%�������˺���ɱ����",
	"����������9999",
	"��",
	"�̻���̫��",
	"�׿�ʹ��̫���񹦹��������м���׷��1200������,��������Ч",
	"��̫���������������Ṧ+50",
	"��",
	"�Ǹ�Ե����",
	"������������ս�������飬ϴ�ڶ����书���츳�ڹ�ϴΪ̫����",
	"��̫��������������������һ�ξ���",
	"�׳���ʯ�����ʯ�����ڶ�ʱ���ں�ľ�½⿪����֮��",
	"��",
	"����������",
	"��ʹ��̫���񹦹��������ֵ�̫����ʽ������ʵ�ʵ���Ч",
	"��ʹ��̫���񹦼���ʹ����ʯ���쾪ȭ�����������������ַ���",
	"��ʹ��̫���񹦼���ʹ��������ָ������ɵз���Ŀ������Ч��",
	"�׻���ʱ���ᴥ��������ֹˮ��������ɱ������������״̬",
	"��������״̬�������⣬�ж�������������",
	"��",
	"�ں���֮��",
	"�ױ���������ʱ���Ȼ����",
	"�״��е�������ʱ��Ȼ����",
	}
	TFJS[39] = {"�����͵���",
	"�׹���Ч������20%",
	"��ʹ���κ��书�߼�����ɷ�Ѩ",
	"��",
	"�̲���֮��",
	"������֮�����ٷ���5������",
	"������֮������ɶԷ�30ʱ������",
	"��",
	"��̫������",
	"������̫�����˿ɷ�����̫��֮�ء�",
	"�״��������Իӽ�.�������𾪡�ʱ������ձ�������ŭ�����Ҹ�������",
	}
	TFJS[40] = {"�����͵���",
	"�׷���Ч������20%",
	"�ױ�������ɷ�Ѩ����",
	"��",
	"����ľ֮��",
	"������֮�����ٷ���5������",
	"�׷���ʱ�ɸ��ݲ����ظ�����",
	"��",
	"��̫������",
	"������̫�����˿ɷ�����̫��֮�᡿",
	"�׷�����̫��֮�᡿ʱ�ɸ��ݱ�ɱ������ظ�����,�����蹥������ɱ����ͬ�ļ����ͷ�",
	}
	TFJS[41] = {"������ʹ��",
	"�׹���ʱ�߼��ʸ�������"
	}
	TFJS[42] = {"�̷���ʹ��",
	"�׹���ʱ�߼��ʸ�������"
	}
	TFJS[43] = {"��ѩɽ������",
	"���Դ������ڼ��⹦�����������壬500����",
	"��",
	"�̾��ѣ����ڼ��⹦",
	"�����������������ڼ��⹦������",
	"�ױ�����������ʱ��������������״̬��ʱ���Ѫ����������״̬",
	"�׼�������ʱ���������ⷶΧ������������������������Ч�����ӱ���"
	}
	TFJS[162] = {"��һ�ղ�����",
	"�� "
	}
	TFJS[163] = {"��һ�ղ�����",
	"�� "
	}
	TFJS[164] = {"��Ħ���ʿ",
	"���Դ���Ħ���ʿ�����壨500�������ɵ��ӣ���������������ʵս�й�"
	}
	TFJS[85] = {"����ı����",
	"��ҽ����������400"
	}
	TFJS[5] = {"��̫����ʦ",
	"��̫��ȭ����ʱ�����ܽ�������Ч��",
	"�׹���ʱ���ʷ�������Ȼ���»غϼ���+500",
	"�׹���ʱ���ʴ�������Ϊ�棬׷��1000����",
	"�ױ��������ʷ����޸����Σ�����Ч������50%",
	"���ƶ���������Ϊ8��",
	"��",
	"��̫��Բת",
	"��̫��ȭ����������ӵ��̫������ʱ��̫��ȭ������Χ��������:",
	"������ֵ1��300��������Χ+1",
	"������ֵ300��600��������Χ+2",
	"������ֵ����600��������Χ��Ϊ���ƶ��湥���ұض�����",
	"��",
	"��̫������",
	"��̫�����巢�������������ʹ̶�Ϊ75%",
	"����ȸβ�͵����ŷ��������������ʹ̶�Ϊ75%",
	"����̫�����巢��ʱ�ط����޸����Σ����Ѻ��ʽ����������޼�������Ч���ٴ�����",
	"��̫��֮�μ�������1�㷢������"
    }
	TFJS[6] = {"�����ʦ̫",
	"��ʹ���κ��书���������ر���",
	"���ƶ�����+3",
	"��",
    "�̶�ü����",
	"���ټ�ʮ��ׯ����ʱ���ӡ����Ҿ�������Ч�����������������",
	"���ټ�ʮ��ׯ����ʱ���ӡ����Ҿ�������Ч����ת������Ϊ����ֵ",
	"�׶�ü��������ʱ���ݵ�����Ѫֵ�����˺�",
	}
	TFJS[7] = {"����������",
	"�� "
	}
	TFJS[8] = {"���������",
	"�� "
	}
	TFJS[9] = {"����תǬ��",
	"��Ǭ����Ų�Ʒ���Ч�� ǿ��������40%�˺��������˹���",
	"��Ǭ����Ų�ƿ�ͬʱ������������",
	"��",
	"���ؼ�����תǬ������������ר����",
	"��ѧ��Ǭ���󣬱�����ʱ���У�35+��������%�ļ��ʴ���������ѡ��",
	"��A.������Χ�ڶԵз��Ĺ���������Ų�ƣ�����300��������",
	"��B.��ESC��ȡ��Ų�ƣ����α������ض�����Ǭ������50%�˺��������˹���",
	"�ڴ�������תǬ�����󣬵з��������˺��������ߣ����Ҷ���������ɱ��Ч��",
	"�����Ǵ��ڱ���״̬ʱ������תǬ����������������10%",	
	"��",
	"�̾�������",
	"�׿�ʹ�þ����񹦹���",
	"��δ����Ǭ����Ų�Ʒ���ʱ�����ʷ��������񹦷��𷴵�20%�˺�",
	"��û�����ڹ����������壬����������Ǭ����������������",
	"��",
	"����ɫָ�Ų��",
	"�׽��˸�Χ�ڵ��ҷ���һ����Ų�Ƶ�ָ��λ��",
	"��",	
	"�Ǹ�Ե����",
	"�׹������ܵ��õ�Ǭ��ʱ��ϴ�������书",
	"���䵱ɽ�������ᣬϴ���ġ�����书"
	}
	TFJS[10] = {"�̹�����ʹ",
	"�װ���Ӽ��ˣ�����20% ",
	"��",
    "�̿�ͷ��",
	"�����������������ԣ�����ʱ��Ȼ�������������ղ��˺�������",
	"����������Խ�ͣ�����Ч��Խǿ",
	"��",
	"�̾��ѣ���ʹӡ��",
	"�׾��Ѻ��ܣ���������ʱ�����ʵ�����ʹӡ��",
	"�ױ�������ʹӡ�ǵ��˹�������ʱ���Է٣����Լ�����Χ3��ͬ������˺�",
	"�ױ�������ʹӡ�ǵ��˹�����������������ǿ������Ч��",
	}
	TFJS[11] = {"�̹�����ʹ",
	"�ױ����л��е��ˣ��˺�����1%������20%",
	"��",
    "���һ����ˣ�����",
	"�������һ�����������ֱ�Ӿ߱���ָ��Ч",
	"��",
	"�̾��ѣ���ʹӡ��",
	"�׾��Ѻ��ܣ�������ʱ�����ʵ�����ʹӡ��",
	"��ӵ����ʹӡ�Ǻ�������Ƿ�ӵ��Ǭ���������������������˺�",
	"��10����Ȼ�����������ӶԷ������쳣��Ч",
	"��",
	"�̾��Ѽ������쵯ʯ��",
	"�׹���ʱ���ʴ�������׷�ӷɻ�ʯ��������",
	"�����10�������˺��������������ͷ�ѨЧ��50ʱ��",
	"�׼��ʴ������ؿ�.���ơ�",
	"�ң���ָ����Ծ�ĵ�����Ҵ��������������",
	}
	TFJS[12] = {"�̰�üӥ��",
	"�׻�ɽ�����ӥצ�������ӱ�",
	"���Դ���ӥ�����������ṩ�������������"
	}
	TFJS[13] = {"�̽�ëʨ��",
	"��ʨ�Ӻ𷢶������ſ�Ϊ�з�����������������",
	"������ȭһ�����˷�������100%����һ�����˶������7������",
	"�׷���Ч������40%"
	}
	TFJS[14] = {"����������",
	"�׼����ٶ�����10��",
	"�׻�ɽ����󣬺������������ӱ�",
	"��",
	"����Ѫ����",
	"��ʹ���κ��书��������ѪЧ������ѪֵΪ�˺�ֵ��10%�����ι������ظ�100������ֵ��"
	}
	TFJS[15] = {"����������",
	"��"
	}
	TFJS[16] = {"�̵���ҽ��",
	"��ҽ������500��",
	"�׿��������ҩ",
	"��ȫ���Ѿ�ʹ��ҩƷЧ������30%",
	"��",	
	}
	TSZL[17] = 
	{"����ɫָ�Ⱥ��",
	"����Χ���Χ�ڵĶ���ʱ������˲���������Ѫ������20ʱ��",	
	}
	TFJS[17] = {"�̵��ȶ���",
	"���ö���������500",
	"�׾��Ѻ��ö���������750",
	"���츳���ۺ����Ϊ�����涾����",
	"�����˼��ܡ��߳��߻������¶����ӡ�����춾����ѡ��",
	"��",	
	}
	TSZL[17] = 
	{"����ɫָ�ʩ��",
	"����Χ���Χ�ڵĵ���ʱ���ж�������50ʱ��",	
	}
	TFJS[18] = {"�̻�Ԫ������",
	"���Դ���Ԫ���������������壬���600�������ɵ���,������ʵս�����������й�",
	"�׼����ٶ�+10��",
	"��ʹ���κ��书�߼�������",
	"��ʹ���κ��书�߼��ʷ�Ѩ"
	}
	TFJS[66] = {"�̲�˹ʥŮ",
	"�׵�ȫ���ƶ�������"
	}
	TFJS[81] = {"��ѩ��˫�",
	"��ս���Ͽɷ���ʳ��"
	}
	TFJS[82] = {"����Ϊ����",
	"��ս�����ҷ�Ů�Խ�ɫԽ���乥��Ч��Խ��",
	"��",
	"�������ϳ�",
	"�� "
	}
	TFJS[107] = {"�̻�ɽ����",
	"�� "
	}
	TFJS[108] = {"�̻�ɽ����",
	"�� "
	}
	TFJS[109] = {"�̻�ɽ����",
	"�� "
	}
	TFJS[165] = {"����������",
	"�� "
	}
	TFJS[166] = {"��̫������",
	"�� "
	}
	TFJS[167] = {"���������",
	"�� "
	}
	TFJS[169] = {"���Ĵ���ɮ",
	"�� "
	}
	TFJS[170] = {"���Ĵ���ɮ",
	"�� "
	}
	TFJS[168] = {"���������",
	"�� "
	}
	TFJS[171] = {"���䵱����",
	"��ʹ��̫��ȭ��̫�����������Զ��������״̬",
	"��",
	"���츳�ڹ�",
	"�����������޼����������һ����к��츳�ڹ���Ϊ������"
	}
	TFJS[172] = {"���䵱����",
	"�� ",
	"��",
	"���츳�ڹ�",
	"�����������޼����������һ����к��츳�ڹ���Ϊ������"
	}
	TFJS[173] = {"�̲�˹��ʹ",
	"�� "
	}
	TFJS[174] = {"�̲�˹��ʹ",
	"�� "
	}
    TFJS[175] = {"�̲�˹��ʹ",
	"�� "
	}
	TFJS[54] = {"��־������",
	"�׻�������������",
	"�ױ���Ч���������������������ҷ���Ч��",
	"��",
	"�̱�Ѫ����",
	"�ױ����ж����������һ���з�������ٴ��ж�",
	"��",
	"�̽��ߴ���",
	"��ʹ�ð�������׶�ض����3���˺�",
	"��",
	"�ڣ�δ������",
	"�ף�����������",
	"�ף�����������"
	}
	TFJS["54-1"] = {"��־������",
	"�׻�������������",
	"�ױ���Ч���������������������ҷ���Ч��",
	"��",
	"�̱�Ѫ����",
	"�ױ����ж����������һ���з�������ٴ��ж�",
	"��",
	"�̽��ߴ���",
	"��ʹ�ð�������׶�ض����3���˺�",
	"��",
	"�ڳ�ƽ�����ľ���",
	"�����аٱ�����/���˼������",
	"������ֵ����30%ʱ���ɴ������߰���"
	}
	TFJS[91] = {"����������",
	"��",
	"�Ǹ�Ե����",
	"�׽���ɽ���γ����߽���ϴ��һ���书"
	}
	TFJS[83] = {"����������",
	"��ʹ���嶾���ƹ��������2-5������",
	"���Դ���������硱���������壬500�������ɵ��ӣ���������������ʵս��أ�",
	"��",
	"���嶾����",
	"�ױ��������Ӷ���ʹ�������ж�45~50��",
	"���ö���������500",
	"��",
	"���ؼ�����ɳ��Ӱ",
	"�װ���������Χ������7��7����"
	}
	TFJS[176] = {"���嶾�̹�",
	"�� "
	}
	TFJS[182] = {"���嶡��",
	"�� "
	}
	TFJS[183] = {"��ûӰ��",
	"�� "
	}
	TFJS[184] = {"�̻�������",
	"��ʹ���κ��书�߼��ʱ��� "
	}
	TFJS[185] = {"������Գ",
	"��ʹ���κ��书�߼�����ɷ�Ѩ"
	}
	TFJS[186] = {"����ȭ�޵�",
	"�� "
	}
	TFJS[187] = {"�̰�������",
	"�� "
	}
	TFJS[188] = {"��ͭ��������",
	"�� "
	}
	TFJS[77] = {"���������",
	"�������书�ؼ�ʱ������ֵ�ɳ�����",
	"��",
	"��ԧ����Ů",
	"��ʹ�÷��޵���������",
	"�׿�װ��ר�������쵶",
	"��",
	"����ɫָ�����",
	"�׻ظ����ǵ�״̬��������ŭ����������",
	"��",
	"�Ǹ�Ե����",
	"�׺����ջ�����л�ʱ��������ѡ����������",
	"���齣˫�߾��飬ϴ��һ���书",
	"��ԧ�쵺������ͣ�ϴ�ڶ����书"
	}
	TFJS[592] = {"���ϵ��Ȼ�",
	"�׽���ս���ĳ�ʼ����λ��Ϊ1000",
	"��",
	"�������޽�",
	"�ױ�����ʱ�����ݵ�������ϵ����������ֵ���ַ����з�ȫ��"
	}
	TFJS[92] = {"��ָ������",
	"���ڶ�����ʱ��������ս����ʼǰ����",
	"��",
	"�̰�����Ӱ",
	"�����й���������",
	"��������ͬʱ�ڳ�ʱ�����Ǽ����ٶ�����2��",
	"��",
	"�ڵ�������",
	"���������������罣����������һ��ʱ�������󽵵���60��"
	}
	--ΤС��
	TFJS[601] = {"�̻�����˫",
	"��ս����ʼǰ50ʱ���ܵ����˺�������50��",
	"��",
	"�Ǹ�Ե����",
	"��¹�����������Ҿ��飬ϴ��һ�������书"
	}
	TFJS[604] = {"����Ԫ����",
	"��ʹ�ý�ϵ�书����ʱ���з�����ϵ����20%����",
	"��",
	"�������λ",
	"�����ӵз�������Ч����������Ŀ���Ṧ���츳�ȣ�",
	"��",
	"�����羪��",
	"�ױ�ŭʱ��ʹ��ԽŮ����������",
	"��",
	"��ԽŮ����",
	"���Դ���������Ϣ�����壬����������������ϵ����10������",
	"��ÿ���ж�ǰ������������ж�"
	}
	TFJS[605] = {"�̾��ž���",
	"���书�������10%������/����/���м������10%�����������10%",
	"��",
	"�̹�������",
	"�ױ�����ʱ�ط���\"���Ʊ���\"�����߹���10ʱ����ȴʱ��50ʱ��",
	"�׹���ʱ���ʷ���\"�����ѩ\"�����ι����ض���ɱ���"
	}
	--������
	TFJS[606] = {"��̤ɳ�޺�",
	"���ƶ�����+3������������ٴ��ƶ�",
	"��",
	"������ս��",
	"��ӵ��ר������ë¿",
	"����Ϣʱ�Դ����������Ч��"
	}
	--�����
	TFJS[607] = {"��������Ƽ",
	"���ҷ�ȫ�����������10%"
	}
	--����ֹ
	TFJS[616] = {"�̾������",
	"�ױ���ÿ����һ�����ѣ������ٶ�����2��",
	"��",
	"�̾��Ѽ�����������",
	"��ʹ������������ʱ���ʷ�����Χ���⹥��"
	}
	--��ǧ��
	TFJS[617] = {"����������",
	"����Ϊ��������ʱ���Ի������Ư����ͷ����ͼ"
	}
	--���
	TFJS[628] = {"�̵���˫��",
	"��ʹ����������ʱ���м��ʷ������һ���",
	"��",
	"�̴���չ��",
	"��ʹ����������ʱ��������Χ��Ϊ���ƶ�",
	"��",
	"����������",
	"���ƶ�����+3"
	}
	--����
	TFJS[629] = {"�̳�ƽ����",
	"��ÿ���ж�ǰ��60%����ʹ�з�ȫ�弯��λ�õ���100"
	}
	--������
	TFJS[631] = {"������֥��",
	"�������ÿ���⹦����1�㼯����ÿ���ڹ�����5%����",
	"��",
	"��˭������",
	"��װ�������콣��ʱ��ȫ����������+200",
	"��",
	"�Ǹ�Ե����",
	"������а�����־��飬ϴ�ڶ����书���츳�ڹ�ϴΪ������",
	"������а��ս����ʱ�����������һ�����"
	}
	TFJS["645-1"] = {
	"��̫������",
	"�װ��������᱾�����е��츳����",
	"��",
	"���洫��̫������",
	"�����������ڳ�ʱ��50%���ʵ��˹�����ȫ���������Լ�����",
	"�׶�������200��̫������ֵ��200���������ֵ��������̫��֮��",
	"�����Է����������򷴵�һ���˺��������쳣",
	"��",
	"�ڷ�����:��.Ʋ����",
	"�����������˹������Ȼ��������̫��ȭȫ������",
	"�׿���̫��֮��Ч������",
	"��",
	"�ڶ���:̫�����.����������",
	"��ŭ������ʱ����һ������֮һ������",
	"��̫��֮�δ���8������ֵ����100��̫������ֵ����600",
	"�׷������Χ�������ˣ�������̫��֮�Ρ�����ֵ��̫������ֵ",
	"�״�������˺���������ֵ�ϵ����˺�����",
	"��",
	"�ڶ���:�������.������½",
	"�׻ָ�����������",
	"�ױ�����ŭ���������ʷ���",
	"�������ж����Ҵ˴η��������Ļغ��м��ʻָ����м���",
	"���ٴη���������������5��̫��֮����500�����ֵ",
	"��",
	}	
	TFJS["645-2"] = {
	"����ͯ����",
	"�װ����ܲ�ͨ�������е��츳����",
	"��",
	"������ר��������ר����",
	"�׷������һ����󣬻�50%���ʲ���һ�ζ�������һ���",
	"��",
	"�ڶ���:����.����֮���",
	"�׾��Ѻ󣬼��ʹ���ʹ���������޷�������������Ч���޷�����",
	"��",
	"�ڶ���:��������ȭ",
	"������ʱ��Ȼ�ɹ����ɱ��ܲ�ͨ���������������",
	"����������ݲ����ӿ켯���ٶȺͻָ�����",
	"�������󹥻��ḽ��������������ص���������������ƽ����",
	"����ص�ȭ��ϵ���˺��������ᱻ�з�������϶��ܵ�ɱ���ͷ�",
	"��",
	"�ڶ���:���ħȭ",
	"��ȭ������ʱ���ʷ��������25%�˺�",
	"�����һ���ʱ�������ʸ���",
	"��",
	"��",
	"�ڶ���:�����ػ�",
	"�ױ�����ʱ���ʷ���������34%���˺��������ڼ����ͷ�",
	"�׳�ʼ���α�Ȼ����",
	"��",
	}
	TFJS["645-3"] = {
	"�̽��ڻ���",
	"�װ��������ﱾ�����е��츳����",
	"��",
	"�ھŽ��洫.��",
	"�׽�������ʱ��Ȼ����������Ч֮һ",
	"���浴��ʽ���ж������ظ�500",
	"�����뽣ʽ���˺����湥������ı�",
	"���浹��ʽ��ǿ��ɱ��300����ʹ�������߽��뼯������״̬",
	"�����ý�ʽ���˺����30%�ұ�Ȼ����",
	"�׼��ʷ�����ʽ���壬ͬʱ��������������Ч",
	"��",
	"�ھŽ��洫.��",
	"�ױ�����ʱ������Xʽ",
	"���汻���������������˺����Ҹ���Է������ͷ�",
	"�������Է���ͬһ��������ѧ�������������˺���ɱ��",
	"��",
	"�ھŽ��洫.����",
	"�׹���ʱ���湥���ͱ�����������չ��������������",
	"�״ﵽʮ��ʱ��������",
	"��ȫ�������һظ���������������������������ж�",
	"��",
	"�ڶ���:��罣��",
	"�׽�������ʱ����������Ч֮һ",
	"�׼�������ݣ���һ��ǿ���ؼ������������������̤״̬��ʱ���Ѫ",
	"���ҷ������������ɱ�������ݶԷ������������������ϵ��",
	"�׿۳���������������������Ч��",
	"�ױ������̽𣺱ر�����׷��һ������������Ϊ5�����ӽ�ϵ�˺�������������",
	"��쫷紵ĺѩ����Χ���������ӱ���Ч��",
	"�׸�������������������ϵ����ص��˺�",
	}
	--ȭ��
	TFJS[281] = {"�̸�����ȭ",
	"��ÿ����һ��ȭ���������˺�����5%�����˺�����5%������7����",
	"����ȭϵ�������书������������ְҵ����",
	"��ְҵ����һ�׺�ȭ���ɸ���ȭϵ������ȭ������ɱ���������",
	"��",
	"�Ľ�������",
	"��ʹ�ý���ʮ������40%���ʴ�������",
	"��ʹ�ý���ʮ������30%���ʴ��������ˣ���ŭ�ش���",
	"��",
	"����Ȼ����",
	"��Ѫ������70%�����˴���30ʱ��ʹ����Ȼ�������м��ʴ�������",
	"��Ѫ��Խ�ͣ�����Խ�ߣ�����Խ�ߣ���������ʱ��ŭ�ض�����",
	"�����ʴ��ڵ���50��������Ȼ����س�������",
	"�����ʵ���50��������Ȼ����ض�����",
	"��",
	"�ı�������",
	"�׶�����������������6��",
	"��ְҵ������׺�����ʱ������ʵ�˺��������������������ӣ�����Ϊ150",
	"��",
	"�ھ�����������׺�",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书��ȭ��ϵ��>=120��ʹ��ȭ���书�������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׹��������ˣ�����Ч������33.3%�������߷�Ѩ���ʣ�׷��1200����",
    "��ְҵ�������׺󣬱�Ȼ�������ף������ӵ��˲��ַ�����",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[282] = {"����Ϭһָ",
	"�׳�ʼ�Դ�15%������Ѩ����",
	"��ÿ����һ��ָ���书��������Ѩ�������5%������7����",
	"��ʹ�������񽣵��������ļ���",
	"����ָϵ�������书������������ְҵ����",
	"��ְҵ����һ�׺󣬽��������ߵ�����ȷ�Ѩ����������������ϴ��з�Ѩ����һ��ʱ���ڷ�Ѩ����",
	"����������������û�з�Ѩ����ǿ����һ��ʱ�����޷��������������⣩",
	"��",
	"�����ԣ����ָ",
	"���伲���ɴ������ָ�����е��˼���λ�ý���200",
	"��ְҵ������׺�����Ч����",
	"�׼��������˼���ȫ������200~400�����ҵ���һ���ֵ̤",
	"��",
	"�ھ�������īɽ��",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书��ָ��ϵ��>=120��ʹ��ָ���书�������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׹��������ˣ������ŭ�������ӻ��壬ͬʱ����з�һ��ŭ����׷��1100����",
	"��ְҵ�������׺󣬸���ɱ�����׷�ӷ�Ѩ�������Ѩ����50����׷�ӷ�Ѩ��ص���ʵ�˺�",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[283] = {"�̽���һЦ", 
	"��ÿ����һ�����������������ٶ�+2������7����",
	"�׿������Թ����������������䡢��а����",
	"�׿�ѧϰ���¾Ž�",
	"���Խ�ϵ�������书���򣨰������������У�����������ְҵ����",
	"��ְҵ����һ�׺󣬲�ͬ�������ԵĽ������Ӳ�ͬ��Ч��",
	"�ײ�ͬ�������ԵĽ������Ӳ�ͬ��Ч���������޷棬������������������",
	"��",
	"�����ԣ�Ѹ������",
	"���������ֲ��پ������ޣ������������������ٶ�Ч����ǿ",
	"��",
	"�ھ�����һ��������",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书������ϵ��>=120��ʹ�ý�ϵ�书�������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׹��������ˣ���������ս�������ез�Ŀ�꣬׷��1500����",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[284] = {"�̰�����", 
	"��ÿ����һ���������������˺���ɱ������5%������7����",
	"��ʹ�ú��ҵ�����40%���ʴ������⣬��ŭ�ش���",
	"��ʹ�û��浶���Ͳ��鵶��ʱ����Ч��������׷�Ӷ����ж�",
	"��",
	"�����ԣ���������",
	"����������Ȼ��������Ч��",
	"��",
	"�ھ������������ն",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书��ˣ��ϵ��>=120��ʹ�õ�ϵ�书�������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׹��������ˣ����Ӿ���������׷��1500�������ж�������ŭ���ָ�25�㣨�ɵ��ӣ�",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[285] = {"��������˫", 
	"�׳�ʼ�Դ�15%����",
	"��ÿ����һ�������书���������������5%������7����",
	"�״򹷰����������޹����Ĵ���������ߣ�׷�Ӷ����ж�",
	"��",
	"�����ԣ���վ�Ӱ",
	"�׾�Ӱ���ɼ��ʻָ���Ȼ���ܵĴ���",
	"����ղؿɶ���ָ�����",
	"��",
	"�ھ�����ǧ��������",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书������ϵ��>=120��ʹ�������书�������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׹��������ˣ��ض������Ѫ����Ѩ��׷��1000����",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[286] = {"�̾������", 
	"����������Ϊ���ͬʱӵ�������������������������Ե�����",
	"�׿�ʹ���ڹ��������ڹ�����������",
	"�׶�ת����ʱ�����ӱ���ֵ����ض�������ϲ���",
	"��",
	"���������",
	"��ʹ���ڹ�����ʱ50%���ʴ��������������������",
	"��",
	"�����ԣ������Ϣ",
	"�ײ�����ɽ������ָ�����������",
	"��",
	"���츳�ڹ�",
	"����Ϸ��ʼʱ����ѡ�����/����/�׽�֮һΪ�츳�ڹ�",
	"��ѧ���츳�ڹ��󣬽���ս�����Զ����У�������",
	"���츳�ڹ���Ӱ�������˹�������ͬʱ���������ڹ�",
	"���ֶ�ѡ���˹�ʱ���޷�ѡ�����/����/�׽�",
	"��",
	"�ھ�����������",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书��ʹ���ڹ��������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׹��������ˣ��˺����30%������ֵ�ж��ض����ƣ����Ӿ���������׷��1300����",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[287] = {"�������޵�", 
	"�׳�ʼ����ֵ100���޷���������͵Ǯ",
	"�׳�ʼ��ϵ����ֵ��Ϊ40��",
	"�׷���/������Ч�������ʴ������ߣ���ͬʱ��������Ч��",
	"��",
	"�����ԣ�������",
	"����֪����������������ж�",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[288] = {"�̻���ʥ��", 
	"�׳�ʼҽ��200���ⶾ200���ö�200��ҽ������400���ö�����400���ⶾ����400",
	"��ҽ�Ʒ�Χ������7��7����",
	"��ÿʱ������ָ������������������ж�������",
	"��",
	"�����ԣ���������",
	"���ٱ��巢����ָ�����",
	"��",
	"�ھ��������ž�����",
	"�׻�ɽ��ɽ���Ѻ�����",
	"����������9���书����������50�㣬�ж��������ʴ���",
	"������Խ�ߣ���������Խ��",
	"�׷���֮����������ٴ��ж����ᣬ������10������",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[289] = {"������Ħ��",
	"�׳�ʼ�ⶾ300���ö�300���ö�����500���ⶾ����500",
	"���϶���Χ������7��7���󣬿��Ը��Լ��϶�",
	"��ÿʱ��������������ж��̶�",
	"�������ж�Խ���������Խǿ",
	"��",
	"�����ԣ�ҹ�ɻ�",
	"�������������ж��˺���������������ǿ",
	"��",
	"����ڤ����",
	"��ʹ����ڤ������40%���ʴ������⣬��ŭ�ش���",
	"��",
	"�Ǹ�Ե����",
	"�׿��Ի�һ�����������붴ѧϰ\"���ٲ�\""
	}
	TFJS[447] = {"�̻ý�������󼤻",
	"�׹���ʱ����ʹ�ûý����������ܺ�Ǭ������",
	"��",
    "����������",
	"�ױ�����ʱ���ʷ����ղ��ƶ��������ط������˺�",
	"��",
	}
	TFJS[448] = {"�̰Ե�������󼤻",
	"�׹���ʱ����ʹ�þ���ն�����ӻ���",
	"��",
    "���۰�����",
	"�����޵���������Χ���ӣ��ҿ��ƶ�",
	"�׻�ɽ��������޵�����������",
	"��",
	}
	TFJS[449] = {"���޺۹���",
	"�׼����ٶȸ���˫���Ṧ����",
	"���ж�����ٴ��ƶ�",
	"��",
    "�����컨������Ǯ",
	"�׹���ʱ���ʶ����е��˿۳�����",
	"�װ����˺��̶�Ϊ3��",
	"��",
	}
	TFJS[450] = {"����֮ͯ�ӣ�����󼤻",
	"��ÿ�ж�һ�Σ�����Ч������5%",
	"��",
    "�̲�������",
	"�ǹ������ʽ����ղ�����",
	"���ں���30ʱ�����˺�����",
	"��",
	}
	TFJS[516] = {"�̶���һ��",
	"�׹���ʱ������ɱ����",
	"��",
	}
	TFJS[517] = {"���෵",
	"�ױ�����ʱʵ����������",
	"��",
	}
	TFJS[643] = {"����ڤ����",
	"��ʹ����ڤ���Ƽ���ʹ����ڤ����",
	"��",
    "�̺ױ�����",
	"��ʹ����ڤ�Ƽ���ʹ�������Ч����Ѩ�ҼӴ��˺�",
	"��",
   "���޾Ʋ���",
	"�׼�������",
	"��",
	}
	TFJS[644] = {"����ڤ����",
	"��ʹ����ڤ���Ƽ���ʹ����ڤ����",
	"��",
    "��¹���ɿ�",
	"��ʹ�÷�ħ�ȷ����ʴ�����ڤ��������Ч��",
	"��ʹ����ڤ���Ʊ���ʱ���Ӷ�������",
	"��",
   "����Ů����",
	"�׵з�Ů�Խ�ɫԽ�༯���ٶ�Խ��",
	"��",
	}
	--����ר������
	ZJZSJS = {"�̷��ֻ�ɽ��",
	"�Ļ�÷�ʽ���õ��߱�����󣬳�������ɽ��ɽ���Ի�л����",
	"��ս���п��Դ�����/��/��/ɽ����ǿ����Ч",
	"���伲��磺����ʱ���ʴ������ҷ�ȫ�弯��λ��+100�������ж������ָ�500",
	"���������֣����������ʴ����������ٶ����2��3�㣬����20��",
	"��������𣺹���ʱ���ʴ�����׷��3000������",
	"�ײ�����ɽ�����������ʴ������ܵ��˺�ǿ�ƽ���Ϊ30�㣬������ɱ��",
	"��",
	"�����������",
	"�Ļ�÷�ʽ���õ�ʮ������󣬳�������ɽ��ɽ����սл����ʤ��",
	"���ڷ��ֻ�ɽ���Ļ����ϣ�������������Ч",
	"����֪���������������ʴ������ж϶Է��������������һ���ƶ�����",
	"�׶������𣺹���ʱ���ʴ�����׷��һ�����������ι�����ഥ��3��",
	"��",
	"�̷���������",
	"�Ļ�÷�ʽ������ר��������֮ǰ���������������ؼ�����",
	}
	--����ר������
	DSZSJS = {"�̶���û�",
	"���������ǵ��ػ�Ӣ�飬�̳б��û�NPC��ȫ������",
	"��ͬʱ�����Լ���ר���츳",
	"��",
	"�����䶷��",
	"��������������õĶ���ǿ��",
	"�׿���ƥ�������������̫�Ŷ�����ǿ������",
	}	
	--��Ʒ��Ч˵��
	WPTX = {}
	--������
	WPTX[36] = {"ʹ����������ʱ������50%������",
	"ʹ����������ʱ������60%������",
	"ʹ����������ʱ������70%������",
	"ʹ����������ʱ������80%������",
	"ʹ����������ʱ������90%������",
	"ʹ����������ʱ���ض����������ɷ������ƾ����¡�"
	}
	--���콣
	WPTX[37] = {"����ʱ70%���������ѪЧ��",
	"����ʱ80%���������ѪЧ��",
	"����ʱ90%���������ѪЧ��",
	"����ʱ�ض������ѪЧ������׷��5������",
	"����ʱ�ض������ѪЧ������׷��10������",
	"����ʱ�ض������ѪЧ������׷��15������"
	}
	--���ǽ�
	WPTX[38] = {"����ʱ50%����׷��10�����Ч��",
	"����ʱ60%����׷��10�����Ч��",
	"����ʱ70%����׷��10�����Ч��",
	"����ʱ80%����׷��10�����Ч��",
	"����ʱ90%����׷��10�����Ч��",
	"����ʱ�ض�׷��10�����Ч��"
	}
	--������
	WPTX[43] = {"ʹ�õ�������ʱ���м��ʴ���������Ч",
	"ʹ�õ�������ʱ���м��ʴ���������Ч",
	"ʹ�õ�������ʱ���м��ʴ���������Ч",
	"ʹ�õ�������ʱ���м��ʴ���������Ч",
	"ʹ�õ�������ʱ���м��ʴ���������Ч",
	"ʹ�õ�������ʱ���м��ʴ���������Ч"
	}
	--Ѫ��
	WPTX[44] = {"����ʱ���ָ�����˺�5%��Ѫ��",
	"����ʱ���ָ�����˺�6%��Ѫ��",
	"����ʱ���ָ�����˺�7%��Ѫ��",
	"����ʱ���ָ�����˺�8%��Ѫ��",
	"����ʱ���ָ�����˺�9%��Ѫ��",
	"����ʱ���ָ�����˺�10%��Ѫ��"
	}
	--��⬼�
	WPTX[58] = {"����20�㣬��ȭָϵ�书����ʱ��ʹ��������Ѫ10��",
	"����22�㣬��ȭָϵ�书����ʱ��ʹ��������Ѫ10��",
	"����24�㣬��ȭָϵ�书����ʱ��ʹ��������Ѫ10��",
	"����26�㣬��ȭָϵ�书����ʱ��ʹ��������Ѫ10��",
	"����28�㣬��ȭָϵ�书����ʱ��ʹ��������Ѫ10��",
	"����30�㣬��ȭָϵ�书����ʱ��ʹ��������Ѫ10��"
	}
	--�ڲ���
	WPTX[59] = {"������ʱ���ܵ������˼���5��",
	"������ʱ���ܵ������˼���6��",
	"������ʱ���ܵ������˼���7��",
	"������ʱ���ܵ������˼���8��",
	"������ʱ���ܵ������˼���9��",
	"������ʱ���ܵ������˼���10��"
	}
	--��˿����
	WPTX[60] = {"������ʱ���ܵ��ķ�Ѩ����5��",
	"������ʱ���ܵ��ķ�Ѩ����6��",
	"������ʱ���ܵ��ķ�Ѩ����7��",
	"������ʱ���ܵ��ķ�Ѩ����8��",
	"������ʱ���ܵ��ķ�Ѩ����9��",
	"������ʱ���ܵ��ķ�Ѩ����10��"
	}
	--��Ƥ����
	WPTX[61] = {"ÿ���ж�������ⶾ25��",
	"ÿ���ж�������ⶾ35��",
	"ÿ���ж�������ⶾ45��",
	"ÿ���ж�������ⶾ55��",
	"ÿ���ж�������ⶾ65��",
	"ÿ���ж�������ⶾ75��"
	}
	--���ļ�
	WPTX[62] = {"������ʱ���ܵ������ռ���50%",
	"������ʱ���ܵ������ռ���60%",
	"������ʱ���ܵ������ռ���70%",
	"������ʱ���ܵ������ռ���80%",
	"������ʱ���ܵ������ռ���90%",
	"������ʱ����������״̬"
	}
	--Ƥ��
	WPTX[63] = {"������ʱ���ܵ��ı������50%",
	"������ʱ���ܵ��ı������60%",
	"������ʱ���ܵ��ı������70%",
	"������ʱ���ܵ��ı������80%",
	"������ʱ���ܵ��ı������90%",
	"������ʱ�����߱���״̬"
	}
	--����
	WPTX[230] = {"�����ٶ�����2��",
	"�����ٶ�����2��",
	"�����ٶ�����3��",
	"�����ٶ�����3��",
	"�����ٶ�����4��",
	"�����ٶ�����4��"
	}
	--���佣
	WPTX[236] = {"ʹ��̫������ʱ���ض�����",
	"ʹ��̫������ʱ���ض�����",
	"ʹ��̫������ʱ���ض�����",
	"ʹ��̫������ʱ���ض�����",
	"ʹ��̫������ʱ���ض�����",
	"ʹ��̫������ʱ���ض�����"
	}
	--ԧ�쵶
	WPTX[217] = {"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�������׷��500����",
	"ʹ�÷��޵���ʱ���ض�������׷��500�������˺����20%"
	}
	WPTX[218] = {"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�����",
	"ʹ�÷��޵���ʱ���ض�������׷��500����",
	"ʹ�÷��޵���ʱ���ض�������׷��500�������˺����20%"
	}
	--ë¿
	WPTX[279] = {"�����ٶ�����10��",
	"�����ٶ�����10��",
	"�����ٶ�����10��",
	"�����ٶ�����10��",
	"�����ٶ�����10��",
	"�����ٶ�����10��"
	}
	--��������
	WPTX[244] = {"����ʱ���ӵз�����ǿ���϶�10��",
	"����ʱ���ӵз�����ǿ���϶�15��",
	"����ʱ���ӵз�����ǿ���϶�20��",
	"����ʱ���ӵз�����ǿ���϶�25��",
	"����ʱ���ӵз�����ǿ���϶�30��",
	"����ʱ���ӵз�����ǿ���϶�35��"
	}
	--�ݻ���
	WPTX[284] = {nil,
	nil,
	nil,
	nil,
	nil,
	"Ѫ��Խ�ͣ������ٶ�Խ��"
	}
	
	--���¾Ž�
	WPTX[114] = "��һ����Ե�¿�����Ž��洫"
	--������
	WPTX[113] = "����ʱ���˺��������������"
	--���޵���
	WPTX[140] = "����ʱ���˺��������������"
	--С���๦
	WPTX[75] = "��������ʱ�������������"
  
	--�Ѷ�����
	MODEXZ2 = {"����", "����", "����","����","��ʦ","��˵"}
	--����ѡ�츳����
	TFXZSAY1 = " ���·��Ƴ��ұ� * һ�뽭�����´� * ��ͼ��ҵ̸Ц�� * ��ʤ����һ���� "
	--ʯ����̫����ʽ
	XKXSJ = {"�Կ��Ϻ�ӧ �⹳˪ѩ��",  "�����հ��� ���������", "������Ȼŵ ������Ϊ��","���������� ��������Ӣ","˭������� ����̫����"}

	
	--��ɫָ��
	GRTS = {}
	GRTSSAY = {}
	
	
	GRTS["0-1"] = "����"
	GRTSSAY["0-1"] = "Ч����ʹ�ð˲�����*      �����Ѵ�������Ч��*���ģ�����10��"
	--����
	GRTS[53] = "�貨"
	GRTSSAY[53] = "Ч�������ý�ɫ�´��ж�Ϊֹ*      ��������50%��������*���ģ�����10��"
	
	--����
	GRTS[49] = "�߷�"
	GRTSSAY[49] = "Ч�����߶��������ϵ�������*      ʹ���Ѩ25ʱ��*���ģ�����5�� ����500��"
	
	--�˳���
	GRTS[89] = "����"
	GRTSSAY[89] = "Ч�����ظ�ָ���ڽӶ�������50��**���ģ�����25�� ����300��"
	
	--���޼�
	GRTS[9] = "Ų��"
	GRTSSAY[9] = "Ч�������˸�Χ�ڵ��ҷ���һ����*      Ų�Ƶ�ָ��λ��*���ģ�����10�� ����500��"
	
	--��ǧ��
	GRTS[88] = "����"
	GRTSSAY[88] = "Ч���������Χ���ҷ���һ����*      ��ǰ��������500��*���ģ�����10�� ����700��"
  
	--����ͩ
	GRTS[74] = "ͳ��"
	GRTSSAY[74] = "Ч�����ҷ�ȫ�弯����200��**���ģ�����10�� ����150��"
	
	--���ѹ�
	GRTS[17] = "ʩ��"
	GRTSSAY[17] = "Ч������Χ���Χ�ڵĵ���ʱ���ж�*      ����50ʱ��*���ģ�����15�� ����300��"
	
	--����ţ
	GRTS[16] = "Ⱥ��"
	GRTSSAY[16] = "Ч������Χ���Χ�ڵĶ���ʱ�������*      ����������Ѫ������20ʱ��*���ģ�����15�� ����300��"
	
	--���л�
	GRTS[77] = "����"
	GRTSSAY[77] = "Ч�����ظ����ǵ�״̬��������ŭ����������**���ģ�ʹ�ú��Լ�������һϢ"
	
	--Ľ�ݸ�
	GRTS[51] = "����"
	GRTSSAY[51] = "Ч�������ý�ɫ�´��ж�Ϊֹ*      �������ض����������ǳ�����*���ģ�����10��"
	
	--С��
	GRTS[66] = "Ӱ��"
	GRTSSAY[66] = "Ч�������������Χһ��*      ���������ƶ����ô�*���ģ�����20�� ����1000��"
	
	--����
	GRTS[90] = "����"
	GRTSSAY[90] = "Ч����͵�Եз�Я������Ʒ*      ������ǿ���϶�50��*���ģ�����5��"
	
	GRTS["90-1"] = "����"
	GRTSSAY["90-1"] = "Ч����ʹ������֮��*      ��������ɸ���Ч��*���ģ�����5-30��"	
	
	--����
	GRTS[626] = "����"
	GRTSSAY[626] = "Ч�����������л���һ���书Ϊ*      ��ָ��ͨ/��������/��Ӣ����*      �Ҳ����Ļغ�"
	
	--���
	GRTS[1] = "�ɺ�"
	GRTSSAY[1] = "Ч���������ϰ����ƶ�*      ��ս������ȥ����*���ģ�����10��"
	
	--�Ħ��
	GRTS[103] = "�û�"
	GRTSSAY[103] = "Ч����ʹ��С���๦ģ��������ѧ*      ����Ҫӵ�ж�Ӧ���ؼ�*���ģ�����10�� ����500��"
	
	--����
	GRTS[56] = "�ݼ�"
	GRTSSAY[56] = "Ч����ʹ�����Ŷݼ�*      ���²���ս������Ч��*���ģ�����10�� ����500��"
	
	--����
	GRTS[47] = "��ҩ"
	GRTSSAY[47] = "Ч����ʹ�ý�ҩ�̼���*      ����ÿʱ����ʧ1%���Ѫ��*      ��״̬������Ѫ��Խ�ͣ��˺�/����Խ��*      �����Ļغ�"
	
	CC.Kungfunum = 12;	--�����书����
	CC.Skillnum = 6


    CC.JL = {}
    CC.JL[1] ={name = '��ҽ��������ҩʦ',js='ʹ��ҽ��ָ��ʱ����ҽ��Ч������ҩʱ��ʡһ��ҩ�ģ����˺�ҩƷ���Ը�����ʹ��',tupe=1,zl='����'}
    CC.JL[2] ={name = '��ҽ�������ʥ��',js='ʹ��ҽ��ָ��ʱ������쳣�����˺����వ���ɷ�Ѩ',tupe=1,zl='����'}
    CC.JL[3] ={name = '��ҽ������Ϣ����',js='ʹ��ҽ��ָ����Ϊ��ҽ�ζ������ӻ��ܣ����˺�ҽ�ƶ���ʱ�ɻظ������������ƽ�����',tupe=1,zl='����'}
    CC.JL[4] ={name = '��ҽ����᪻�֮��',js='ʹ��ҽ��ָ�����ñ�ҽ�ζ��ѽ��롾ǿ�ơ�״̬�����˺��������ʷ�����������',tupe=1,zl='᪻�'}
    CC.JL[5] ={name = '��ҽ����ǧ��Ҫ��',js='ʹ��ҽ��ָ���ɶ���������50%�Ķ��Ѷ������ƣ����˺��ж����Զ����Լ�ҽ��',tupe=1,zl='ǧ��'}
    CC.JL[6] ={name = '���������߳��߻�',js='ʹ��ʩ��ָ�����õ���ʱ�򽵵����������˺�ʩ�����õ�������ʧ��ֵ',tupe=2,zl='����'}
    CC.JL[7] ={name = '���������涾����',js='ʹ��ʩ��ָ���ɸ����ж�ֱֵ�ӿ۳��������������˺�ʩ�����Ϊ��ȡ�������������Լ����������ٶ���',tupe=2,zl='�涾'}
    CC.JL[8] ={name = '���״���ȭ�޵�',js='ȭ����������20%��ȭ�ƹ���ʱ����15%���˺������˺�����20%���˺�',tupe=3,zl='��ȭ'}
    CC.JL[9] ={name = '���״򡿸�ȭ����',js='ȭ�ƹ���ʱ�������ж�����15%�����˺����ӵ���10%�ķ���',tupe=3,zl='��ȭ'}	
    CC.JL[10] ={name = '���״���ȭ����',js='ȭ�ƹ���������������15%�����������˺���˥�������˺��������ʱ�Ϊ����',tupe=3,zl='��ȭ'}
    CC.JL[11] ={name = '���״���ȭ��˫',js='ȭ�ƹ�������������15%�����˺�ȭ�Ʊ����˺�����50%',tupe=3,zl='��ȭ'}
    CC.JL[12] ={name = '���״򡿸���֮��',js='�������ж�����15%�����ұ������˺����˥�������˺󱻱��������˺�',tupe=3,zl='����'}
    CC.JL[13] ={name = '���״��Ԟ�����',js='��������25%�����û��ɱ�����˺�����25%�����˺�����ֵ�ӳ�����',tupe=3,zl='����'}
    CC.JL[14] ={name = '������޾Ʋ���',js='���ܺ�ָ������������˺����������˺�ս���п������ƻ��buff',tupe=3,zl='����'}
    CC.JL[15] ={name = '�����ʳ�֮��',js='ɱ�����˿��Ի��ʳ�ģ����������������������˺������˺�ս���п���ʳ�ò��Ȼ��buff',tupe=3,zl='ʳ��'}


--���ѹ����ӳ�
CC.AddAtk = {
{10, 15, 50}, 		--�𻨸���ң�ӹ�
{11, 15, 50}, 		--�𻨸����мӹ�
{12, 15, 50}, 		--�𻨸��������ӹ�
{13, 15, 50}, 		--�𻨸�лѷ�ӹ�
{14, 15, 50}, 		--�𻨸�ΤһЦ�ӹ�
{48, 47, 100}, 		--���ϸ���̹֮�ӹ�
{47, 50, 100}, 		--�Ƿ�����ϼӹ�
{53, 76, 100}, 		--�����̸������ӹ�
{79, 36, 60}, 		--��ƽ֮������ɺ�ӹ�
{74, 75, 50}, 		--�¼��������ͩ�ӹ�
{59, 58, 100}, 		--�����С��Ů�ӹ�
{54, 91, 100}, 		--�������Ԭ��־�ӹ�
{629, 54, 100}, 	--Ԭ��־�����żӹ�
{99, 70, 100}, 		--���ȸ�Ҷ����ӹ�
{119, 65, 50}, 		--һ�Ƹ���ӹ�
{120, 65, 50}, 		--һ�Ƹ��Լӹ�
{121, 65, 50}, 		--һ�Ƹ����ӹ�
{122, 65, 50}, 		--һ�Ƹ����ӹ�
{68, 129, 50}, 		--��������ȫ�����Ӽӹ�
{123, 129, 50}, 
{124, 129, 50}, 
{125, 129, 50}, 
{126, 129, 50}, 
{127, 129, 50}, 
{128, 129, 50},
{37, 589, 50},		--���ơ�ˮ���ڳ���������50
{589, 37, 50},
{88, 89, 50}		--�˳��Ӹ���ǧ��ӹ�
}


--���ѷ����ӳ�
CC.AddDef = {	
{76, 51, 100}, 		--Ľ�ݸ��������̼ӷ�
{55, 56, 50}, 		--���ظ������ӷ�
{56, 55, 100}, 		--���������ؼӷ�
{35, 73, 100}, 		--��ӯӯ�������ӷ�
{79, 36, 60}, 		--����ɺ����ƽ֮�ӷ�
{73, 35, 50}, 		--��������ӯӯ�ӷ�
{74, 75, 50}, 		--�¼��������ͩ�ӷ�
{58, 59, 50}, 		--С��Ů������ӷ�
{59, 58, 50}, 		--�����С��Ů�ӷ�	
{66, 9, 50}, 		--���޼ɸ�С�Ѽӷ�
{91, 54, 100}, 		--Ԭ��־��������ӷ�
{119, 65, 50}, 		--һ�Ƹ���ӷ�
{120, 65, 50}, 		--һ�Ƹ��Լӷ�
{121, 65, 50}, 		--һ�Ƹ����ӷ�
{122, 65, 50}, 		--һ�Ƹ����ӷ�
{68, 129, 50}, 		--��������ȫ�����Ӽӷ�
{123, 129, 50}, 
{124, 129, 50}, 
{125, 129, 50}, 
{126, 129, 50}, 
{127, 129, 50}, 
{128, 129, 50},
{37, 589, 50},		--���ơ�ˮ���ڳ���������50
{589, 37, 50}
}

--�����ٶȼӳ�
CC.AddSpd = {
{25, 35, 50}, 		--����������˼���
{90, 53, 50}, 		--�������������
{55, 56, 100}, 		--���ظ���������
{56, 55, 50}, 		--���������ؼ���
{35, 79, 100}, 		--Сʦ�ø��������
{73, 35, 50}, 		--�����ӯӯ����
{74, 75, 50}, 		--�¼��������ͩ����
{58, 59, 100}, 		--С��Ů���������
{63, 58, 60}, 		--�������Ӣ����
{83, 54, 50},		--Ԭ��־�������ּ���
{54, 629, 100}, 	--���Ÿ�Ԭ��־����
{37, 589, 50},		--���ơ�ˮ���ڳ��������50
{589, 37, 50},
{89, 88, 50}		--��ǧ����˳��Ӽӹ�
}

CC.AddDoc = {
{2, 1, 120}, 		--��쳸������ؼ�ҽ��
{16, 17, 50}}		--���ѹø�����ţ��ҽ��

CC.AddPoi = {
{17, 16, 50}}		--����ţ�����ѹü��ö�

--�������
CC.COMBO = {
	{1, 2, "��������"},
	{4, 72, "�Ǳ�Ϊ��"},
	--{37, 38, "�������"},
	--{47, 48, "���ֶ���"},
	{51, 76, "���ձ���"},
	{53, 76, "�ɶ�����"},
	--{90, 582, "����˫��"},
	{55, 56, "��Ѫ����"},
	--{87, 86, "¹��˫��"},
	{35, 73, "��������"},
	{36, 79, "����ԧ��"},
	{75, 74, "�����컨"},
	{58, 59, "�������"},
	{9, 66, "��������"},
	{16, 17, "���ȹ�ҽ"},
	{54, 91, "��Ѫ����"},
	{54, 629, "���쳤��"},
	{88, 89, "��ʳΪ��"},
	--{35, 58, "���´���"},
	--{83, 25, "�嶾����"},
	--{35, 29, "����ԩ��"},
	--{0, 92, "ǰ������"},
	{37, 589, "ѩɽ��ʿ"},
	--{38, 661, "��������"},
	--{29, 591, "�����˵�"},
	--{10, 11, "��ң����"},
	--{162, 163, "��������"},
	--{60, 61, "ѩɽ����"},
	--{620, 61, "ѩɽ����"},
	--{51, 113, "�������"},
	--{50, 112, "����ս��"},
	--{3, 621, "����˫��"},
	--{632, 633, "�˵����"},
	--{616, 635, "�����޽�"},	
	--{77, 625, "Ůò�ɲ�"},		
	{643, 644, "��ڤ����"},	
	--{663, 664, "��������"},	
	--{9, 638, "�����"},
	--{9, 639, "���ɻ�ü"},
	{592, 604, "��������"}
}

	CC.CoupleDisplay = 0;
	
	--��ʾ��϶�������
	if CONFIG.CoupleDisplay == 1 then
		CC.CoupleDisplay = 1;
	end

--����
CC.HD = {}
CC.HD[1] = {name = '��������',tt = 2032,tt1 = 2042,sm = '�����ͷ�һ�����գ��书�ȼ�+�����ڹ���*0.8���˺������������֣���������ʧǰ�����ܳ�ʼ�˺������˺�������'}
CC.HD[2] = {name = '�������',tt = 2411,tt1 = 2422,sm = '�ܵ������������˺�����70%'}
CC.HD[3] =  {name = '�����',tt = 1305,tt1 = 1324,sm = '�Ի��ܵ����˺�'}	

CC.DOUQI = {}
CC.DOUQI[1] = {name = '��ȭ����',tt = 1715,tt1 = 1731,sm = '�Ի��ܵ����˺�'}
CC.DOUQI[2] = {name = '�����',tt = 2411,tt1 = 2422,sm = '�ܵ������������˺�����70%'}
CC.DOUQI[3] =  {name = '�����',tt = 1305,tt1 = 1324,sm = '�Ի��ܵ����˺�'}	
	--������ɫ����
	CC.Color = {["R"]=C_RED, ["G"]=M_Green, ["B"]=M_Blue}
  
	--�Ƿ���ʾ�������ѣ�1�򿪣�0�ر�
	CC.OpenTimmerRemind = 0;
  
	--windows�汾Ĭ���Ǵ�
	if CONFIG.Operation == 0 then
		CC.OpenTimmerRemind = 1;
	end
	
	require("MyOEvent");
end
