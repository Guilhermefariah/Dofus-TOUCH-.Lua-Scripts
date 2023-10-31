IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
 -------------------------------------------------------------------------------------------------------
MIN_MONSTERS = 4
MAX_MONSTERS = 4
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function decoMaxCombat()
    if global:maxFightsPerDay() == true then
        global:disconnect()
    end
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function alone()
	tpreturn()
	return {
   { map = "4,-19", path = "top" },
	}
    end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tpreturn()
    npc:npcBuy()
    sale:buyItem(548, 1, 3000)
    global:printSuccess("Poção de lembrança")
    global:leaveDialog()
    global:delay(600)
    inventory:useItem(548)
    global:printSuccess("Utilizada")
end

function move()
  decoMaxCombat()
  return {
   { map = "2,-20", path = "right" },
   { map = "3,-20", path = "right" },
   { map = "4,-19", path = "top" },
   { map = "4,-20", path = "top", fight = true },
   { map = "4,-21", path = "right", fight = true },
   { map = "5,-21", path = "bottom", fight = true },
   { map = "5,-20", path = "bottom", fight = true },
   { map = "5,-19", path = "bottom", fight = true },
   { map = "5,-18", path = "bottom", fight = true },
   { map = "5,-17", path = "bottom", fight = true },
   { map = "5,-16", path = "bottom", fight = true },
   { map = "5,-15", path = "right", fight = true },
   { map = "6,-15", path = "right", fight = true },
   { map = "7,-15", path = "top", fight = true },
   { map = "7,-16", path = "left", fight = true },
   { map = "7,-18", path = "left", fight = true },
   { map = "6,-16", path = "top", fight = true },
   { map = "7,-17", path = "top", fight = true },
   { map = "6,-18", path = "top", fight = true },
   { map = "6,-17", path = "right", fight = true },
   { map = "6,-19", path = "top", fight = true },
   { map = "6,-20", path = "top", fight = true },
   { map = "6,-21", path = "left", fight = true },
   { map = "84674566", path = "right", fight = true },    
 
   { map = "83887104", path = "396" },
  }
end


function bank()
  return {
   { map = "4,-19", path = "bottom" },
   { map = "4,-20", path = "bottom" },
   { map = "4,-21", path = "bottom" },
   { map = "5,-21", path = "left" },
   { map = "5,-20", path = "left" },
   { map = "5,-19", path = "left" },
   { map = "5,-18", path = "left" },
   { map = "5,-17", path = "left" },
   { map = "5,-16", path = "left" },
   { map = "5,-15", path = "left" },
   { map = "6,-15", path = "left" },
   { map = "7,-15", path = "left" },
   { map = "7,-16", path = "left" },
   { map = "7,-18", path = "left" },
   { map = "6,-16", path = "left" },
   { map = "7,-17", path = "left" },
   { map = "6,-18", path = "left" },
   { map = "6,-17", path = "left" },
   { map = "6,-19", path = "left" },
   { map = "6,-20", path = "left" },
   { map = "6,-21", path = "left" },
   { map = "4,-15", path = "top" },
   { map = "4,-18", path = "bottom" },
   { map = "4,-17", path = "bottom" },


   -- actions banque interieur & exterieur
   { map = "83887104", npcBank = true, path = "396" },
   { map = "84674566", door = "303" },
  }
end


