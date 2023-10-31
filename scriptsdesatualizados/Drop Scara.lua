MIN_MONSTERS = 4
MAX_MONSTERS = 4
OPEN_BAGS = true 

function move()
  return {

        { map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	{ map = "-32,-56", path = "zaap(88212481)" },

   { map = "-1,24", path = "right" },
   { map = "0,23", path = "right", fight = true },
   { map = "0,24", path = "top", fight = true },
   { map = "1,23", path = "top", fight = true },
   { map = "1,22", path = "right", fight = true },
   { map = "2,22", path = "right", fight = true },
   { map = "3,22", path = "bottom", fight = true },
   { map = "3,23", path = "left", fight = true },
   { map = "2,23", path = "bottom", fight = true },
   { map = "2,24", path = "right", fight = true },
   { map = "3,24", path = "bottom", fight = true },
   { map = "3,25", path = "left", fight = true },
   { map = "2,25", path = "left", fight = true },
   { map = "1,25", path = "bottom", fight = true },
   { map = "1,26", path = "right", fight = true },
   { map = "2,26", path = "right", fight = true },
   { map = "3,26", path = "right", fight = true },
   { map = "4,26", path = "bottom", fight = true },
   { map = "4,27", path = "left", fight = true },
   { map = "2,27", path = "left", fight = true },
   { map = "3,27", path = "left", fight = true },
   { map = "2,28", path = "right", fight = true },
   { map = "1,27", path = "bottom", fight = true },
   { map = "1,28", path = "right", fight = true },
   { map = "3,28", path = "right", fight = true },
   { map = "4,28", path = "right", fight = true },
   { map = "5,28", path = "bottom", fight = true },
   { map = "4,29", path = "left", fight = true },
   { map = "2,29", path = "left", fight = true },
   { map = "5,29", path = "bottom", fight = true },
   { map = "5,30", path = "left", fight = true },
   { map = "4,30", path = "top", fight = true },
   { map = "3,29", path = "bottom", fight = true },
   { map = "3,30", path = "left", fight = true },
   { map = "2,30", path = "top", fight = true },
   { map = "1,29", path = "left", fight = true },
   { map = "0,29", path = "top", fight = true },
   { map = "0,28", path = "top", fight = true },
   { map = "0,27", path = "top", fight = true },
   { map = "0,26", path = "top", fight = true },
   { map = "0,25", path = "top", fight = true },

    { map = "147254", path = "top" }, -- Mapa exterior do banco
    { map = "2885641", path = "424" }, -- Mapa interior do banco
  }
end

function bank()
  return {
   { map = "0,23", path = "bottom" },
   { map = "0,24", path = "left" },
   { map = "1,23", path = "left" },
   { map = "1,22", path = "bottom" },
   { map = "2,22", path = "bottom" },
   { map = "3,22", path = "bottom" },
   { map = "3,23", path = "left" },
   { map = "2,23", path = "left" },
   { map = "2,24", path = "top" },
   { map = "3,24", path = "left" },
   { map = "3,25", path = "left" },
   { map = "2,25", path = "left" },
   { map = "1,25", path = "left" },
   { map = "1,26", path = "left" },
   { map = "2,26", path = "left" },
   { map = "3,26", path = "left" },
   { map = "4,26", path = "left" },
   { map = "4,27", path = "left" },
   { map = "2,27", path = "left" },
   { map = "3,27", path = "left" },
   { map = "2,28", path = "left" },
   { map = "1,27", path = "left" },
   { map = "3,28", path = "left" },
   { map = "4,28", path = "left" },
   { map = "5,28", path = "left" },
   { map = "4,29", path = "left" },
   { map = "2,29", path = "left" },
   { map = "5,29", path = "left" },
   { map = "5,30", path = "top" },
   { map = "4,30", path = "top" },
   { map = "3,29", path = "left" },
   { map = "3,30", path = "top" },
   { map = "2,30", path = "top" },
   { map = "1,29", path = "left" },
   { map = "0,29", path = "top" },
   { map = "0,28", path = "top" },
   { map = "0,27", path = "top" },
   { map = "0,26", path = "top" },
   { map = "0,25", path = "top" },
   { map = "-1,24", path = "zaap(147768)" },
	
	{ map = "-32,-56", path = "right" },
        { map = "-31,-56", path = "bottom" },
	{ map = "-31,-55", path = "bottom" },

		--Retornar ao banco
        { map = "147254", door = "383" }, -- Mapa exterior do banco
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco
  }
end