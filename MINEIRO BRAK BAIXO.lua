
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
-------------------------------------------------------------------------------------------------------------------------
AUTO_DELETE = {10792, 446, 10793, 10795, 10796,10801,10797, 10784, 10798, 10799, 10794, 10785, 10800, 881, 385, 1736, 884, 883, 395, 885, 304, 14672, 2419, 2422, 384, 882, 2419, 887, 2425, 2419, 14687, 2419, 2425}
OPEN_BAGS = true
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true

IDItem1 = 312 -- Fer
IDItem2 = 441 -- Cuivre
IDItem3 = 442 -- Bronze
IDItem4 = 443 -- Kobalte
IDItem5 = 444 -- Etain
IDItem6 = 350 -- Argent
IDItem8 = 313 -- Or
IDItem9 = 445 -- Manganeso
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
    { map = "-26,35", path = "bottom" },
}
    end
 
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
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem1).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
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
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem2).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
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
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem3).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem3) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	global:leaveDialog()
  global:delay(1000)
	Refill = true
    end
	
	    if inventory:itemCount(IDItem4) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem4, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem4) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem4, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem4).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem4) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	global:leaveDialog()
  global:delay(1000)
	Refill = true
    end
	
	    if inventory:itemCount(IDItem5) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem5, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem5) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem5, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem5).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem5) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	global:leaveDialog()
  global:delay(1000)
	Refill = true
    end
	
	    if inventory:itemCount(IDItem6) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem6, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem6) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem6, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem6).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem6) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	global:leaveDialog()
  global:delay(1000)
	Refill = true
    end
	
	
	    if inventory:itemCount(IDItem8) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem8, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem8) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem8, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem8).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem8) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	global:leaveDialog()
  global:delay(1000)
	Refill = true
    end
	
	if inventory:itemCount(IDItem9) > 100  and character:kamas() > 300 then
    npc:npcSale()

	  Priceitem = sale:getPriceItem(IDItem9, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem9) > 100) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem9, 100, Priceitem -1)
        	  end
       		  global:leaveDialog()
             global:delay(1000)
       		  global:printSuccess("[Venda]["..inventory:itemNameId(IDItem9).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem8) > 100  and character:kamas() <= 300 then
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
	{ map = "-32,-56", path = "zaap(144419)" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
   { map = "-26,35", path = "bottom" },
   { map = "-26,36", path = "bottom" },
   { map = "-26,37", path = "bottom" },
   { map = "-26,38", path = "left" },
   { map = "-27,38", path = "bottom" },
   { map = "-27,39", path = "right" },
   { map = "-26,45", path = "right" },
   { map = "-26,39", path = "bottom" },
   { map = "-26,40", path = "bottom" },
   { map = "-26,41", path = "bottom" },
   { map = "-26,42", path = "bottom" },
   { map = "-26,44", path = "bottom" },
   { map = "-26,43", path = "bottom" },
   { map = "143917", door = "125" },
   { map = "30408704" , gather = true, custom = loop1 },
   { map = "30410240", path = "461", gather = true },
   { map = "30411776", path = "99", gather = true },   
   { map = "138271", custom = tpastrub },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
   { map = "147254", path = "top" }, -- Mapa exterior do banco
   { map = "2885641", path = "424" }, -- Mapa interior do banco
  }
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function phenix()
	return 
{
   { map = "-13,34", path = "top" },
   { map = "-13,33", path = "top" },
   { map = "-13,32", path = "left" },
   { map = "-14,32", path = "top" },
   { map = "138271", door = "243" },
  }
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function bank()
  return {
   { map = "30408704", custom = tpastrub },
   { map = "30410240", custom = tpastrub },
   { map = "30411776", custom = tpastrub },
   { map = "-26,35", path = "zaap(147768)" },
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
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------

   function loop1()
   
   if map:onCell(505) then
	global:delay(1000)
	map:moveToCell(99)
  

   elseif map:onCell(114) then
	global:delay(1000)
	map:moveToCell(433)
	
	elseif map:onCell(418) then
	global:delay(1000)
	map:moveToCell(99)

  else
  global:delay(1000)
  map:moveToCell(99)
  end

end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
