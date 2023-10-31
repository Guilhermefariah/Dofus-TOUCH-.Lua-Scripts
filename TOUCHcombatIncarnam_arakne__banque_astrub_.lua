MIN_MONSTERS = 4   -- 4 monstres minimum
MAX_MONSTERS = 4   -- 4 monstres maximum
AUTO_DELETE = {2478, 6912, 6914, 6913, 691}   -- Suppression des item arakne et aventurier droppé

function customNpcToAstrub()
    npc:npc(888, 3)
    global:delay(654)
    npc:reply(-1)
    global:delay(435)
    npc:reply(-1)
    global:delay(435)
    npc:reply(-1)
end

function incarnam()
    map:door(347)
end

function move()
	return {
		{ map = "84674566", path = "left", fight = false }, -- sortie banque astrub 

		{ map = "84674054", door = "359" },

		{ map = "81267712", path = "bottom", fight = false },

		{ map = "81268739", path = "right", fight = false },

		{ map = "81269763", path = "right", fight = false },

		{ map = "81270787", path = "bottom", fight = false },

		{ map = "80216068", path = "bottom", fight = false },

		{ map = "80216069", path = "right", fight = false },

		{ map = "80216581", path = "right", fight = false },

		{ map = "80217093", path = "right", fight = false },

		{ map = "80217605", path = "bottom", fight = false },

		{ map = "80217606", path = "bottom", fight = false },

		{ map = "80217607", path = "right", fight = false },

		{ map = "80218119", path = "right", fight = false },

		{ map = "80218631", path = "top", fight = true },

		{ map = "80218630", path = "right", fight = false },

		{ map = "80219141", path = "bottom|right|top", fight = true },
 
		{ map = "80219142", path = "right|top", fight = true },
 
		{ map = "80219654", path = "top", fight = false },
 
		{ map = "80219653", path = "left|top", fight = true },
 
		{ map = "80219140", path = "right|bottom", fight = true },
 
		{ map = "80219652", path = "left|bottom", fight = true },
 
	
	}

end

function bank()
    return {
       	{ map = "153092354", door = "409" },
	    { map = "152045573", path = "right" },
	    { map = "-2,-3", path = "right" },
	    { map = "-1,-3", path = "right" },
	    { map = "0,-3", path = "right" },
                 { map= "4,7", path= "top"},
     	         { map= "5,7", path= "left"},
		 { map= "6,7", path= "left"},
		 { map= "4,6", path= "right"},
		 { map= "5,6", path= "top"},
		 { map= "6,6", path= "top"},
		 { map= "5,5", path= "top"},
		 { map= "6,5", path= "top"},
		 { map= "5,4", path= "top"},
		 { map= "6,4", path= "top"},
		 { map= "7,4", path= "top"},
		 { map= "5,3", path= "right"},
		 { map= "6,3", path= "right"},
		 { map= "7,3", path= "right"},
		 { map= "8,3", path= "right"},
		 { map= "9,3", custom = customNpcToAstrub },
	    { map = "1,-3", path = "right" },
	    { map = "2,-3", path = "right" },
	    { map = "3,-3", path = "right" },
	    { map = "4,-3", custom = customNpcToAstrub },
	    { map = "-1,-14", path = "top" }, 
	    { map = "-1,-15", path = "top" },
	    { map = "-1,-16", path = "top" },
	    { map = "-1,-17", path = "top" },
	    { map = "-1,-18", path = "top" },
	    { map = "-1,-19", path = "right" },
	    { map = "0,-19", path = "right" }, 
	    { map = "1,-19", path = "right" },
	    { map = "2,-19", path = "right" },
	    { map = "3,-19", path = "right" }, 
	    { map = "2,-20", path = "right" }, 
	    { map = "2,-20", path = "bottom" }, 
	    { map = "1,-21", path = "bottom" }, 
	    { map = "67371008", path = "465|451" }, 
	    { map = "84673536", path = "bottom" }, 
	    { map = "2,-21", path = "bottom" },
	    { map = "3,-22", path = "bottom" }, 
	    { map = "3,-21", path = "bottom" },
	    { map = "3,-20", path = "bottom" },
	    { map = "3,-16", path = "right" },
	    { map = "5,-21", path = "bottom" }, 
	    { map = "5,-20", path = "bottom" },
	    { map = "5,-19", path = "left" },
	    { map = "6,-20", path = "left" }, 
	    { map = "7,-21", path = "left" }, 
	    { map = "6,-21", path = "left" },
	    { map = "6,-16", path = "left" }, 
	    { map = "5,-16", path = "left" },
	    { map = "7,-17", path = "bottom" }, 
	    { map = "7,-16", path = "left" },
	    { map = "7,-15", path = "top" }, 
		{ map = "6,-20", path = "bottom"},
  		{ map = "6,-19", path = "bottom"},
		{ map = "6,-18", path = "bottom"},
		{ map = "6,-17", path = "bottom"},
		{ map = "6,-16", path = "left"},
		{ map = "5,-19", path = "bottom"},
		{ map = "5,-18", path = "bottom"},
		{ map = "5,-17", path = "left"},
		{ map = "5,-16", path = "top"},
		{ map = "3,-16", path = "right"},
		{ map = "-1,-17", path = "bottom"},
		{ map = "-1,-16", path = "right"},
		{ map = "0,-16", path = "right"},
		{ map = "1,-16", path = "right"},
		{ map = "2,-16", path = "right"},
		{ map = "2,-20", path = "right"},
		{ map = "3,-20", path = "right"},
		{ map = "3,-19", path = "bottom"},
		{ map = "3,-18", path = "bottom"},
		{ map = "3,-17", path = "left"},
		{ map = "4,-22", path = "bottom"},
		{ map = "4,-21", path = "bottom"},
		{ map = "4,-20", path = "bottom"},
		{ map = "4,-19", path = "bottom"},
		{ map = "4,-18", path = "bottom"},
		{ map = "4,-17", path = "bottom"},
		{ map = "5,-22", path = "bottom"},
		{ map = "5,-21", path = "bottom"},
		{ map = "5,-20", path = "bottom"},
		{ map = "6,-21", path = "bottom"},
		{ map = "7,-21", path = "bottom"},
		{ map = "7,-20", path = "bottom"},
		{ map = "7,-19", path = "bottom"},
		{ map = "7,-18", path = "bottom"},
		{ map = "7,-17", path = "bottom"},
		{ map = "7,-16", path = "right"},
		{ map = "7,-15", path = "top"},
		{ map = "6,-15", path = "top"},
		{ map = "5,-15", path = "top"},
		{ map = "4,-15", path = "top"},
		{ map = "3,-22", path = "bottom"},
		{ map = "3,-21", path = "bottom"},
		{ map = "2,-22", path = "bottom"},
		{ map = "2,-21", path = "bottom"},
		{ map = "0,-22", path = "left"},
		{ map = "1,-22", path = "left"},
		{ map = "-1,-21,", path = "left"},
		{ map = "0,-21", path = "left"},
		{ map = "1,-21", path = "left"},
		{ map = "-1,-20", path = "right"},
		{ map = "0,-20", path = "right"},
		{ map = "1,-20", path = "right"},
		{ map = "-1,-19", path = "right"},
		{ map = "0,-19", path = "right"},
		{ map = "1,-19", path = "right"},
		{ map = "-1,-18", path = "right"},
		{ map = "0,-18", path = "right"},
		{ map = "1,-18", path = "right"},
		{ map = "2,-18", path = "right"},
		{ map = "0,-17", path = "bottom"},
		{ map = "1,-17", path = "bottom"},
		{ map = "2,-17", path = "bottom"},
		{ map = "-1,-14", path = "top"},
		{ map = "-1,-15", path = "top"},
		{ map = "0,-14", path = "top"},
		{ map = "0,-15", path = "top"},
		{ map = "1,-14", path = "top"},
		{ map = "1,-15", path = "top"},
		{ map = "2,-14", path = "top"},
		{ map = "2,-15", path = "top"},
		{ map = "3,-14", path = "top"},
		{ map = "3,-15", path = "right"},
		{ map = "84674566", door = "303" },         
        { map = "83887104", npcBank = true, path = "396" },
		}     
end