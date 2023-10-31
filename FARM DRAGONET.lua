
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
-------------------------------------------------------------------------------------------------------------------------
MIN_MONSTERS = 3 MAX_MONSTERS = 4
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
    { map = "-1,24", path = "left" },
    { map = "-2,24", path = "left"},
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


function selling()

    if inventory:itemCount(IDItem1) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem1, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem1) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem1, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Vente]["..inventory:itemNameId(IDItem1).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem1) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	global:leaveDialog()
  global:delay(1000)
	Refill = true
    end

    if inventory:itemCount(IDItem2) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem2, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem2) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem2, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Vente]["..inventory:itemNameId(IDItem2).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem2) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
   global:delay(1000)
	Refill = true
    end

    if inventory:itemCount(IDItem3) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem3, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem3) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem3, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Vente]["..inventory:itemNameId(IDItem3).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem3) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
   global:delay(1000)
	Refill = true
    end
  end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function move()
  selling()
  decoMaxCombat()
  return {
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
        { map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	{ map = "-32,-56", path = "zaap(88212481)" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
   { map = "-1,24", path = "left" },
   { map = "-2,24", path = "bottom", fight = true },
   { map = "-2,25", path = "bottom", fight = true },
   { map = "-2,26", path = "bottom", fight = true },
   { map = "-2,27", path = "bottom", fight = true },
   { map = "-2,28", path = "right", fight = true },
   { map = "-1,28", path = "bottom", fight = true },
   { map = "-1,29", path = "bottom", fight = true },
   { map = "-1,30", path = "left", fight = true },
   { map = "-2,30", path = "top", fight = true },
   { map = "-2,29", path = "left", fight = true },
   { map = "-3,29", path = "top", fight = true },
   { map = "-3,28", path = "left", fight = true },
   { map = "-4,28", path = "left", fight = true },
   { map = "-5,28", path = "bottom", fight = true },
   { map = "-5,29", path = "bottom", fight = true },
   { map = "-5,30", path = "right", fight = true },
   { map = "-4,30", path = "right", fight = true },
   { map = "-3,30", path = "bottom", fight = true },
   { map = "-3,31", path = "left", fight = true },
   { map = "-4,31", path = "left", fight = true },
   { map = "-5,31", path = "left", fight = true },
   { map = "-6,31", path = "left", fight = true },
   { map = "-7,31", path = "top", fight = true },
   { map = "-7,30", path = "right", fight = true },
   { map = "-6,30", path = "top", fight = true },
   { map = "-6,29", path = "left", fight = true },
   { map = "-7,29", path = "top", fight = true },
   { map = "-7,28", path = "right", fight = true },
   { map = "-6,28", path = "top", fight = true },
   { map = "-6,27", path = "right", fight = true },
   { map = "-5,27", path = "top", fight = true },
   { map = "-5,26", path = "right", fight = true },
   { map = "-4,26", path = "bottom", fight = true },
   { map = "-4,27", path = "right", fight = true },
   { map = "-3,27", path = "top", fight = true },
   { map = "-3,26", path = "top", fight = true },
   { map = "-3,25", path = "right", fight = true },
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
   { map = "-2,24", path = "right" },
   { map = "-2,25", path = "top" },
   { map = "-2,26", path = "top" },
   { map = "-2,27", path = "top" },
   { map = "-2,28", path = "top" },
   { map = "-1,28", path = "left" },
   { map = "-1,29", path = "top" },
   { map = "-1,30", path = "top" },
   { map = "-2,30", path = "right" },
   { map = "-2,29", path = "bottom" },
   { map = "-3,29", path = "right" },
   { map = "-3,28", path = "bottom" },
   { map = "-4,28", path = "right" },
   { map = "-5,28", path = "right" },
   { map = "-5,29", path = "top" },
   { map = "-5,30", path = "top" },
   { map = "-4,30", path = "left" },
   { map = "-3,30", path = "left" },
   { map = "-3,31", path = "top" },
   { map = "-4,31", path = "right" },
   { map = "-5,31", path = "right" },
   { map = "-6,31", path = "right" },
   { map = "-7,31", path = "right" },
   { map = "-7,30", path = "right" },
   { map = "-7,28", path = "right" },
   { map = "-6,27", path = "right" },
   { map = "-5,26", path = "right" },
   { map = "-4,27", path = "right" },
   { map = "-3,25", path = "right" },
   { map = "-6,30", path = "top" },
   { map = "-6,28", path = "top" },
   { map = "-7,29", path = "top" },
   { map = "-5,27", path = "top" },
   { map = "-3,26", path = "top" },
   { map = "-3,27", path = "top" },
   { map = "-4,26", path = "bottom" },
   { map = "-6,29", path = "left" },
   { map = "-1,24", path = "zaap(147768)" },
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

