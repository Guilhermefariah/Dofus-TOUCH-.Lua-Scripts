﻿
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
 -------------------------------------------------------------------------------------------------------------------------
MIN_MONSTERS = 4 MAX_MONSTERS = 4
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
IDItem1 = 1458
IDItem2 = 1456
IDItem3 = 398
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
    { map = "-23,-19", path = "left|top" },
}
    end

 
function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 1, 3000)
    global:printSuccess("Pot Lembrança s2")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilisée")
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

 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function move()
  decoMaxCombat()
  return {
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
         { map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	{ map = "-32,-56", path = "zaap(120587009)" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
   { map = "-23,-19", path = "left|top" },
   { map = "-24,-19", path = "top", fight = true },
   { map = "-24,-20", path = "left|right", fight = true },
   { map = "-25,-20", path = "top", fight = true },
   { map = "-25,-21", path = "right", fight = true },
   { map = "-24,-21", path = "bottom", fight = true },
   { map = "-23,-20", path = "top", fight = true },
   { map = "-23,-21", path = "left", fight = true },
   { map = "88086283", custom = tpastrub },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
    { map = "147254", path = "top" }, -- Mapa exterior do banco
    { map = "2885641", path = "424" }, -- Mapa interior do banco
  }
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function phenix()
	return 
{
   { map = "9,16", path = "right" },
   { map = "10,16", path = "right" },
   { map = "11,16", path = "right" },
   { map = "12,16", path = "right" },
   { map = "13,16", path = "top" },
   { map = "13,15", path = "top" },
   { map = "13,14", path = "top" },
   { map = "13,13", path = "top" },
   { map = "13,12", path = "left" },
   { map = "88086283", door = "184" },
  }
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function bank()
  return {
   { map = "-24,-19", path = "right" },
   { map = "-24,-20", path = "bottom" },
   { map = "-25,-20", path = "right" },  
   { map = "-25,-21", path = "bottom" },
   { map = "-24,-21", path = "bottom" },
   { map = "-23,-20", path = "bottom" },
   { map = "-23,-21", path = "bottom" },   
   { map = "-23,-19", path = "zaap(147768)" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
	{ map = "-32,-56", path = "right" },
        { map = "-31,-56", path = "bottom" },
	{ map = "-31,-55", path = "bottom" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Retornar ao banco
        { map = "147254", door = "383" }, -- Mapa exterior do banco
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco
  }
end
