AUTO_DELETE = {1978,1730}
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
 -------------------------------------------------------------------------------------------------------
AUTO_DELETE = {1978,1730}
MIN_MONSTERS = 4 MAX_MONSTERS = 4 OPEN_BAGS = true
FORCE_MONSTERS = {104}
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
IDItem1 = 394
IDItem2 = 407
IDItem3 = 1690
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
function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 1, 3000)
    global:printSuccess("Voltando pro Zaap")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Ta usada ")
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


function move()
  selling()
  decoMaxCombat()
  return {
   { map = "4,-23", path = "left", fight = true },
   { map = "3,-23", path = "left", fight = true },
   { map = "2,-23", path = "left", fight = true },
   { map = "1,-23", path = "left", fight = true },
   { map = "0,-23", path = "left", fight = true },
   { map = "-1,-23", path = "top", fight = true },
   { map = "-1,-24", path = "top", fight = true },
   { map = "-1,-25", path = "top", fight = true },
   { map = "-1,-26", path = "right", fight = true },
   { map = "0,-26", path = "bottom", fight = true },
   { map = "0,-25", path = "bottom", fight = true },
   { map = "0,-24", path = "right", fight = true },
   { map = "1,-24", path = "top", fight = true },
   { map = "1,-25", path = "top", fight = true },
   { map = "1,-26", path = "right", fight = true },
   { map = "2,-26", path = "bottom", fight = true },
   { map = "2,-25", path = "bottom", fight = true },
   { map = "2,-24", path = "right", fight = true },
   { map = "3,-24", path = "top", fight = true },
   { map = "3,-25", path = "top", fight = true },
   { map = "3,-26", path = "top", fight = true },
   { map = "3,-27", path = "top", fight = true }, 
   { map = "3,-28", path = "top", fight = true },
   { map = "3,-29", path = "right", fight = true },
   { map = "4,-29", path = "bottom", fight = true },
   { map = "4,-28", path = "bottom", fight = true },
   { map = "4,-27", path = "bottom", fight = true },
   { map = "4,-26", path = "bottom", fight = true },
   { map = "4,-25", path = "bottom", fight = true },
   { map = "4,-24", path = "bottom", fight = true },
   { map = "4,-19", path = "top" },
   { map = "4,-20", path = "top" },
   { map = "4,-21", path = "top" },
   { map = "4,-22", path = "right" },
   { map = "5,-22", path = "top" },
   { map = "5,-23", path = "left" },
   { map = "4,-17", path = "top" },
   { map = "4,-18", path = "top" },
   { map = "4,-16", path = "top" },
   { map = "3,-12", custom = tpastrub },
   { map = "2,-12", custom = tpastrub },
   { map = "83887104", path = "396" },
   { map = "-12,-15", custom = tpreturn },
  }
end


function bank()
  return {
 { map = "4,-17", path = "bottom" },
 { map = "4,-18", path = "bottom" },
 { map = "4,-20", path = "right" },
 { map = "5,-20", path = "bottom" },
 { map = "5,-19", path = "bottom" },
 { map = "5,-18", path = "left" },
   { map = "4,-23", path = "right" },
   { map = "3,-23", path = "right" },
   { map = "2,-23", path = "right" },
   { map = "1,-23", path = "right" },
   { map = "0,-23", path = "right" },
   { map = "-1,-23", path = "right" },
   { map = "-1,-24", path = "right" },
   { map = "-1,-25", path = "right" },
   { map = "-1,-26", path = "right" },
   { map = "0,-26", path = "right" },
   { map = "0,-25", path = "right" },
   { map = "0,-24", path = "right" },
   { map = "1,-24", path = "right" },
   { map = "1,-25", path = "right" },
   { map = "1,-26", path = "right" },
   { map = "2,-26", path = "right" },
   { map = "2,-25", path = "right" },
   { map = "2,-24", path = "right" },
   { map = "3,-24", path = "right" },
   { map = "3,-25", path = "right" },
   { map = "3,-26", path = "top" },
   { map = "3,-27", path = "right" },
   { map = "4,-26", path = "right" },
   { map = "4,-27", path = "bottom" },
   { map = "4,-25", path = "right" },
   { map = "4,-24", path = "right" },
   { map = "5,-26", path = "bottom" },
   { map = "5,-25", path = "bottom" },
   { map = "5,-22", path = "bottom" },
   { map = "5,-23", path = "bottom" },
   { map = "5,-24", path = "bottom" },
   { map = "5,-21", path = "bottom" },
   { map = "5,-20", path = "bottom" },
   { map = "5,-19", path = "bottom" },
   { map = "5,-18", path = "bottom" },
   { map = "5,-17", path = "bottom" },
   { map = "5,-16", path = "left" },
   { map = "-12,-15", custom = tpreturn },

   -- actions banque interieur & exterieur
   { map = "83887104", npcBank = true, path = "396" },
   { map = "84674566", door = "303" },
  }
end

		function phenix()
	return {
		{ map= "2,-12", door = "272", custom = tpastrub },
	
	}
end

