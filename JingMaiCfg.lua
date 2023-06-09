-------------------------------------
--创建人：闲云野雀
--时间  ：2022.5.2
--文件名：JingMaiCfg.lua
--作用  ：经脉系统配置
-------------------------------------


-- 通用技能树描述配置
generalTreeDetailCfg = {
					-- 行
					--[[
					[1] = {
							-- 列（名称、条件描述、提升描述、条件和提升协议）
							{"拳倾天下","条件：花费100两。","拳掌提升10。","&银两&100&拳掌功夫&10&3"},
							{"霸王惊雷","条件：花费200两。","拳拳功夫20。","&银两&200&拳掌功夫&20&3"},
							{"排山倒海","条件：花费300两。","拳拳功夫30。","&银两&300&拳掌功夫&30&3"},
							{"翻江倒海","条件：花费400两。","拳拳功夫40。","&银两&400&拳掌功夫&40&3"},
							{"半拳倾城","条件：花费500两。","拳拳功夫50。","&银两&500&拳掌功夫&50&3"}
						  },
					[2] = {
							-- 列
							{"指倾天下","条件：花费100两。","指法技巧10。","&银两&100&指法技巧&10&3"},
							{"霸王一指","条件：花费200两。","指法技巧20。","&银两&200&指法技巧&20&3"},
							{"凤物九天","条件：花费300两。","指法技巧30。","&银两&300&指法技巧&30&3"},
							{"灵犀一指","条件：花费400两。","指法技巧40。","&银两&400&指法技巧&40&3"},
							{"千年杀",  "条件：花费500两。","指法技巧50。","&银两&500&指法技巧&50&3"}
						  },		
					[3] = {
							-- 列
							{"一剑天下","条件：花费100两。","御剑能力10。","&银两&100&御剑能力&10&3"},
							{"霸王之剑","条件：花费200两。","御剑能力20。","&银两&200&御剑能力&20&3"},
							{"天外飞仙","条件：花费300两。","御剑能力30。","&银两&300&御剑能力&30&3"},
							{"苍穹十三式","条件：花费400两。","御剑能力40。","&银两&400&御剑能力&40&3"},
							{"惊天一剑","条件：花费500两。","御剑能力50。","&银两&500&御剑能力&50&3"}
						  },	
					[4] = {
							-- 列
							{"无敌大刀","条件：花费100两。","耍刀技巧10。","&银两&100&耍刀技巧&10&3"},
							{"月牙天冲","条件：花费200两。","耍刀技巧20。","&银两&200&耍刀技巧&20&3"},
							{"一刀两断","条件：花费300两。","耍刀技巧30。","&银两&300&耍刀技巧&30&3"},
							{"秘剑燕返","条件：花费400两。","耍刀技巧40。","&银两&400&耍刀技巧&40&3"},
							{"修罗邪光","条件：花费500两。","耍刀技巧50。","&银两&500&耍刀技巧&50&3"}
						  },	
					--]]

				  }


--通用技能树布局配置
generalTreeLayoutCfg = { -- 二维数据（4行7列）(值为图片偏移量x,y,图片id(亮))（图片id（暗）加20就好了）
						   -- 行
						--[[
							[1] = {
									-- 列
									{247,260,70},{347,260,71},{448,260,72},{572,302,73},{785,260,74},
								  },
							[2] = {
									-- 列
									{159,351,75},{247,351,76},{347,351,77},{448,351,78},{705,351,79},
								  },
							[3] = {
									-- 列
									{247,449,80},{347,449,81},{545,449,82},{648,449,83},{785,449,84},
								  },
							[4] = {
									-- 列
									{247,543,85},{448,543,86},{545,543,87},{648,543,88},{785,543,89},
								  },	
						--]]
						}
						
						
-- 特殊角色独立技能树
specialTreeCfg = {
	-- [id] 
	[1] = {
			specialTreeDetailCfg = {
				[1] = {
						-- 列（名称、条件描述、提升描述、条件和提升协议）
						{"刀法潜修","条件：花费300两。","每次修炼耍刀技巧提升10。","&天赋1&2&JingMaiFunc_Person01_01"},
						{"剑法潜修","条件：花费300两。","每次修炼御剑能力提升10。","&天赋2&2&JingMaiFunc_Person01_02"},
						{"刀法进阶","条件：花费1000两。","每次修炼耍刀技巧提升20。","&天赋6&2&JingMaiFunc_Person01_06"},
						{"剑法进阶","条件：花费1000两。","每次修炼御剑能力提升20。","&天赋7&2&JingMaiFunc_Person01_07"},
						{"轻影飞狐","条件：花费2000两。","觉醒轻影飞狐","&天赋9&1&JingMaiFunc_Person01_09"}
					  },
				[2] = {
						-- 列
						{"指法潜修","条件：花费300两。","每次修炼指法技巧提升10。","&天赋3&2&JingMaiFunc_Person01_03"},
						{"兵器潜修","条件：花费300两。","每次修炼特殊兵器提升10。","&天赋4&2&JingMaiFunc_Person01_04"},
						{"拳法潜修","条件：花费300两。","每次修炼拳掌功夫提升10。","&天赋5&2&JingMaiFunc_Person01_05"},
						{"兵器进阶","条件：花费1000两。","每次修炼特殊兵器提升20。","&天赋8&2&JingMaiFunc_Person01_08"},
						{"辽东刀王","条件：花费2000两。","觉醒辽东刀王","&天赋10&1&JingMaiFunc_Person01_10"}
					  },		

			},
			
			specialTreeLayoutCfg = {
				[1] = {
						-- 列
						{247,260,70},{347,260,71},{448,260,72},{572,302,73},{785,260,74},
					  },
				[2] = {
						-- 列
						{159,351,75},{247,351,76},{347,351,77},{448,351,78},{705,351,79},
					  },

			},

		  },

}		
						
						
--[[
generalTreeNameCfg = { -- 二维数据（4行7列）(值为显示文字)
				   -- 行
					[1] = {
							-- 列
							"霸王惊雷","排山倒海","翻江倒海","沉元破月","泰山压顶",
						  },
					[2] = {
							-- 列
							"拳倾天下","君临天下","傲看苍生","济世为怀","恩泽苍生",
						  },
					[3] = {
							-- 列
							"名动山河","问鼎天下","纵横宇内","天机难寻","主宰人神",
						  },
					[4] = {
							-- 列
							"回魂七刺","邪元蛊毒","七雾麻香","三日断肠","锁筋蚀骨"
						  },						
				}
--]]