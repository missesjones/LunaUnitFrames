
function LunaUF:LoadDefaults()

	self.defaults = {
		profile = {
			locked = true,
			tooltipCombat = false,
			hidden = {cast = true, buffs = false, party = true, raid = true, player = true, pet = true, target = true},
			statusbar = "Minimalist",
			range = { dist = 40, alpha = 0.4},
		},
	}

	self.defaults.profile.colors = {
		-- Class
		HUNTER = {r = 0.67, g = 0.83, b = 0.45},
		WARLOCK = {r = 0.58, g = 0.51, b = 0.79},
		PRIEST = {r = 1.0, g = 1.0, b = 1.0},
		PALADIN = {r = 0.96, g = 0.55, b = 0.73},
		MAGE = {r = 0.41, g = 0.8, b = 0.94},
		ROGUE = {r = 1.0, g = 0.96, b = 0.41},
		DRUID = {r = 1.0, g = 0.49, b = 0.04},
		SHAMAN = {r = 0.14, g = 0.35, b = 1.0},
		WARRIOR = {r = 0.78, g = 0.61, b = 0.43},
		PET = {r = 0.20, g = 0.90, b = 0.20},
		--Power
		MANA = {r = 0.30, g = 0.50, b = 0.85},
		RAGE = {r = 0.90, g = 0.20, b = 0.30},
		FOCUS = {r = 1.0, g = 0.50, b = 0.25},
		ENERGY = {r = 1.0, g = 0.85, b = 0.10},
		COMBOPOINTS = {r = 1.0, g = 0.80, b = 0.0},
		--Reaction
		tapped = {r = 0.5, g = 0.5, b = 0.5},
		red = {r = 0.90, g = 0.0, b = 0.0},
		green = {r = 0.20, g = 0.90, b = 0.20},
		static = {r = 0.70, g = 0.20, b = 0.90},
		yellow = {r = 0.93, g = 0.93, b = 0.0},
		incheal = {r = 0, g = 0.35, b = 0.23},
		enemyUnattack = {r = 0.60, g = 0.20, b = 0.20},
		hostile = {r = 0.90, g = 0.0, b = 0.0},
		aggro = {r = 0.90, g = 0.0, b = 0.0},
		friendly = {r = 0.20, g = 0.90, b = 0.20},
		neutral = {r = 0.93, g = 0.93, b = 0.0},
		offline = {r = 0.50, g = 0.50, b = 0.50},
		--Cast
		channel = {r = 0.25, g = 0.25, b = 1.0},
		cast = {r = 1.0, g = 0.70, b = 0.30},
		--XP
		normal = {r = 0.58, g = 0.0, b = 0.55},
		rested = {r = 0.0, g = 0.39, b = 0.88},
		-- Aura
		removable = {r = 1, g = 1, b = 1},
	}
	self.defaults.profile.units = {
		player = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			reckStacks = { enabled = true, growth = "RIGHT", order = 70, height = 0.40, background = true, backgroundAlpha = 0.2 },
			portrait = {enabled = true, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			castBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 0.60, order = 40, icon = "HIDE", autoHide = true, order = 60},
			xpBar = { enabled = true, height = 0.4, order = 80, background = false, backgroundAlpha = 0.2, Alpha = 1 },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			auras = {
				buffs = false,
				debuffs = false,
				weaponbuffs = false,
				buffsize = 18,
				debuffsize = 18,
				enlargedbuffsize = 6,
				enlargeddebuffsize = 6,
				buffpos = "BOTTOM",
				debuffpos = "BOTTOM",
				bordercolor = true,
				padding = 2,
				emphasizeBuffs = true,
				emphasizeDebuffs = true,
				timer = "all",
			},
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "[name]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "[level]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[pp]",
						size = 100,
					},
				},
				["castBar"] = {
					size = 10,
					["left"] = {
						tagline = "[castname]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[casttime]",
						size = 100,
					},
				},
			},
			incHeal = { enabled = true, cap = 1.3, alpha = 0.8 },
			scale = 1,
			width = 240,
			height = 40,
			x = 10,
			y = -15,
			anchorTo = "UIParent",
		},
		pet = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			portrait = {enabled = true, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			castBar = {background = true, backgroundAlpha = 0.2, height = 0.60, order = 40, icon = "HIDE", autoHide = true, order = 60},
			xpBar = { enabled = true, height = 0.4, order = 80, background = true, backgroundAlpha = 0.2 },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			auras = {
				buffs = false,
				debuffs = false,
				buffsize = 18,
				debuffsize = 18,
				enlargedbuffsize = 6,
				enlargeddebuffsize = 6,
				buffpos = "BOTTOM",
				debuffpos = "BOTTOM",
				bordercolor = true,
				padding = 2,
				emphasizeBuffs = true,
				emphasizeDebuffs = true,
				timer = "all",
			},
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "[name]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "[level]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[pp]",
						size = 100,
					},
				},
			},
			incHeal = { enabled = false, cap = 1.3, alpha = 0.8 },
			scale = 1,
			width = 240,
			height = 30,
			x = 10,
			y = -55,
			anchorTo = "UIParent",
		},
		pettarget = {
			enabled = false,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = { enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			scale = 1,
			width = 100,
			height = 30,
			x = 170,
			y = -55,
			anchorTo = "UIParent",
		},
		target = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = { enabled = true, type = "3D", alignment = "RIGHT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			castBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 0.60, order = 40, icon = "HIDE", autoHide = true, order = 60, name = {enabled = true, size = 0, anchorTo = "$parent", rank = true, anchorPoint = "CLI", x = 1, y = 0}, time = {enabled = true, size = 0, anchorTo = "$parent", anchorPoint = "CRI", x = -1, y = 0}},
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			comboPoints = {enabled = true, order = 70, growth = "RIGHT", height = 0.40},
			range = { enabled = false },
			auras = {
				buffs = true,
				debuffs = true,
				buffsize = 18,
				debuffsize = 18,
				enlargedbuffsize = 6,
				enlargeddebuffsize = 6,
				buffpos = "BOTTOM",
				debuffpos = "BOTTOM",
				bordercolor = true,
				padding = 2,
				emphasizeBuffs = true,
				emphasizeDebuffs = true,
				timer = "all",
			},
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "[name]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "[level]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[pp]",
						size = 100,
					},
				},
				["castBar"] = {
					size = 10,
					["left"] = {
						tagline = "[castname]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[casttime]",
						size = 100,
					},
				},
			},
			incHeal = {enabled = true, cap = 1.3, alpha = 0.8},
			scale = 1,
			width = 240,
			height = 40,
			x = 250,
			y = -15,
			anchorTo = "UIParent",
		},
		targettarget = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = { enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "[name]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "[level]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[pp]",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 150,
			height = 40,
			x = 500,
			y = -15,
			anchorTo = "UIParent",
		},
		targettargettarget = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = { enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "[name]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "[level]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[pp]",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 150,
			height = 40,
			x = 660,
			y = -15,
			anchorTo = "UIParent",
		},
		party = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = { enabled = true, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			incHeal = {enabled = true, cap = 1.3, alpha = 0.8},
			range = { enabled = false },
			auras = {
				buffs = true,
				debuffs = true,
				buffsize = 18,
				debuffsize = 18,
				enlargedbuffsize = 6,
				enlargeddebuffsize = 6,
				buffpos = "BOTTOM",
				debuffpos = "BOTTOM",
				bordercolor = true,
				padding = 2,
				emphasizeBuffs = false,
				emphasizeDebuffs = false,
				timer = "all",
				sortMethod = "INDEX",
				sortOrder = "ASC",
			},
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "[name]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "[level]",
						size = 100,
					},
					["center"] = {
						tagline = "",
						size = 100,
					},
					["right"] = {
						tagline = "[pp]",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 240,
			height = 40,
			x = 10,
			y = -115,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			columnSpacing = 30,
			offset = 23,
			anchorTo = "UIParent",
		},
		partytarget = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = false, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "",
						size = 100,
					},
					["center"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
					["right"] = {
						tagline = "",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 100,
			height = 20,
			x = 240,
			y = 0,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			columnSpacing = 30,
			offset = 43,
			anchorTo = "LUFHeaderparty",
		},
		partypet = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = false, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "",
						size = 100,
					},
					["center"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
					["right"] = {
						tagline = "",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 100,
			height = 20,
			x = 240,
			y = -20,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			columnSpacing = 30,
			offset = 43,
			anchorTo = "LUFHeaderparty",
			sortMethod = "INDEX",
			sortOrder = "ASC",
		},
		raid = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			incHeal = {enabled = true, cap = 1, alpha = 0.8},
			range = { enabled = false },
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "",
						size = 100,
					},
					["center"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
					["right"] = {
						tagline = "",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "",
						size = 100,
					},
					["center"] = {
						tagline = "[pp]",
						size = 100,
					},
					["right"] = {
						tagline = "",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 60,
			height = 30,
			unitsPerColumn = 5,
			maxColumns = 1,
			columnSpacing = 5,
			groupsPerRow = 5,
			groupSpacing = 0,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			offset = 4,
			showParty = false,
			filters = {
				[1] = true,
				[2] = true,
				[3] = true,
				[4] = true,
				[5] = true,
				[6] = true,
				[7] = true,
				[8] = true,
			},
			positions = {
				[1] = {x = 10, y = -380, anchorTo = "UIParent",},
				[2] = {x = 64, y = 0, anchorTo = "LUFHeaderraid1"},
				[3] = {x = 64, y = 0, anchorTo = "LUFHeaderraid2"},
				[4] = {x = 64, y = 0, anchorTo = "LUFHeaderraid3"},
				[5] = {x = 64, y = 0, anchorTo = "LUFHeaderraid4"},
				[6] = {x = 64, y = 0, anchorTo = "LUFHeaderraid5"},
				[7] = {x = 64, y = 0, anchorTo = "LUFHeaderraid6"},
				[8] = {x = 64, y = 0, anchorTo = "LUFHeaderraid7"},
			},
		},
		raidpet = {
			enabled = false,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = true, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			tags = {
				["healthBar"] = {
					size = 10,
					["left"] = {
						tagline = "",
						size = 100,
					},
					["center"] = {
						tagline = "[smarthealth]",
						size = 100,
					},
					["right"] = {
						tagline = "",
						size = 100,
					},
				},
				["powerBar"] = {
					size = 10,
					["left"] = {
						tagline = "",
						size = 100,
					},
					["center"] = {
						tagline = "[pp]",
						size = 100,
					},
					["right"] = {
						tagline = "",
						size = 100,
					},
				},
			},
			scale = 1,
			width = 60,
			height = 30,
			x = 65,
			y = 0,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			columnSpacing = 5,
			offset = 0,
			anchorTo = "LUFHeaderraid8",
		},
		maintank = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = false, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			scale = 1,
			width = 100,
			height = 30,
			x = 500,
			y = -200,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			maxColumns = 1,
			columnSpacing = 4,
			offset = 4,
			anchorTo = "UIParent",
		},
		maintanktarget = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = false, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			scale = 1,
			width = 100,
			height = 30,
			x = 110,
			y = 0,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			maxColumns = 1,
			columnSpacing = 4,
			offset = 4,
			anchorTo = "LUFHeadermaintank"
		},
		mainassist = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = false, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			scale = 1,
			width = 100,
			height = 30,
			x = 750,
			y = -200,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			maxColumns = 1,
			columnSpacing = 4,
			offset = 4,
			anchorTo = "UIParent",
		},
		mainassisttarget = {
			enabled = true,
			healthBar = { enabled = true, background = true, backgroundAlpha = 0.2, colorType = "class", reactionType="npc", height = 1.20, order = 10},
			portrait = {enabled = false, type = "3D", alignment = "LEFT", width = 0.22, height = 0.50, order = 15, fullBefore = 0, fullAfter = 50},
			powerBar = { enabled = false, background = true, backgroundAlpha = 0.2, height = 1.0, order = 20, colorType = "type" },
			emptyBar = { enabled = false, height = 0.4, order = 50, reactionType="npc", class = true, alpha = 0.2},
			range = { enabled = false },
			scale = 1,
			width = 100,
			height = 30,
			x = 110,
			y = 0,
			attribPoint = "TOP",
			attribAnchorPoint = "LEFT",
			unitsPerColumn = 5,
			maxColumns = 1,
			columnSpacing = 4,
			offset = 4,
			anchorTo = "LUFHeadermainassist"
		},
	}
end