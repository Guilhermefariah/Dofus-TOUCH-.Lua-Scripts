--======Paramètres======--
OPEN_BAGS = true


--======================--

IDItem1 = 460
IDItem2 = 476
IDItem3 = 473
IDItem4 = 471

function popoBonta()
    npc:npcBuy()
    sale:buyItem(6965, 1, 900)
    global:printSuccess("[ACHAT] Potion Bonta x1 ["..sale:getPriceItem(548, 1).." Kamas]")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(6965)
    global:printSuccess("Teleporté à "..map:currentMap().."")
end

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
  end

function move()
  selling()
  return {
   { map = "-31,-54", path = "left" },
   { map = "-32,-55", path = "top" },
   { map = "-32,-54", path = "top" },


   { map = "4,-19", custom = PopoBonta },
   { map = "-33,-56", path = "zaapi(147768)" },
   { map = "-32,-56", path = "right", custom = selling },
   { map = "-31,-56", path = "right" },
   { map = "-30,-56", path = "top" },
   { map = "-30,-57", path = "top" },
   { map = "-30,-58", path = "top" },
   { map = "-30,-59", path = "right" },
   { map = "-29,-59", path = "right" },
   { map = "-28,-59", path = "right" },
   { map = "-27,-59", path = "bottom" },
   { map = "-27,-58", path = "bottom" },
   { map = "-27,-57", path = "right" },
   { map = "-26,-57", path = "bottom" },
   { map = "-26,-56", path = "right" },
   { map = "-25,-56", path = "right" },
   { map = "-24,-56", path = "right" },
   { map = "-21,-53", path = "left", gather = true },
   { map = "-23,-53", path = "top", gather = true },
   { map = "-20,-54", path = "bottom", gather = true },
   { map = "-20,-53", path = "left", gather = true },
   { map = "-22,-53", path = "left", gather = true },
   { map = "-23,-54", path = "top", gather = true },
   { map = "-23,-55", path = "top", gather = true },
   { map = "-23,-56", path = "top", gather = true },
   { map = "-23,-57", path = "top", gather = true },
   { map = "-23,-58", path = "top", gather = true },
   { map = "-23,-59", path = "right", gather = true },
   { map = "-22,-59", path = "bottom", gather = true },
   { map = "-22,-58", path = "bottom", gather = true },
   { map = "-22,-57", path = "bottom", gather = true },
   { map = "-22,-56", path = "bottom", gather = true },
   { map = "-22,-55", path = "bottom", gather = true },
   { map = "-22,-54", path = "right", gather = true },
   { map = "-21,-54", path = "top", gather = true },
   { map = "-21,-55", path = "top", gather = true },
   { map = "-21,-56", path = "top", gather = true },
   { map = "-21,-57", path = "top", gather = true },
   { map = "-21,-58", path = "top", gather = true },
   { map = "-21,-59", path = "right", gather = true },
   { map = "-20,-59", path = "bottom", gather = true },
   { map = "-20,-58", path = "bottom", gather = true },
   { map = "-20,-57", path = "bottom", gather = true },
   { map = "-20,-56", path = "bottom", gather = true },
   { map = "-20,-55", path = "bottom", gather = true },
   { map = "-23,-52", path = "top" },
   { map = "-22,-52", path = "top" },
   { map = "-21,-52", path = "top" },
   { map = "-20,-52", path = "top" },
   { map = "-19,-52", path = "top" },
   { map = "-19,-53", path = "left" },
   { map = "-19,-54", path = "left" },
   { map = "-19,-55", path = "left" },
   { map = "-19,-56", path = "left" },
   { map = "-19,-57", path = "left" },
   { map = "-19,-58", path = "left" },
   { map = "-19,-59", path = "left" },
   { map = "-20,-60", path = "bottom" },
   { map = "-21,-60", path = "bottom" },
   { map = "-22,-60", path = "bottom" },
   { map = "-23,-60", path = "bottom" },
   { map = "-18,-57", custom = popoBonta },

  
   		 --Retornar do banco
    { map = "147254", path = "top" }, 
    { map = "2885641", path = "424" }, 
  }
end


function phenix()
	return 
{

	{map = "129893889", door = "172", patch = "right"}, 

}
end


function bank()
  return {
  {map = "129893889", custom = PopoBonta },
  { map = "-20,-54", path = "left" },
   { map = "-20,-55", path = "left" },
   { map = "-20,-56", path = "left" },
   { map = "-20,-57", path = "left" },
   { map = "-20,-58", path = "left" },
   { map = "-20,-59", path = "left" },
   { map = "-21,-59", path = "left" },
   { map = "-22,-59", path = "left" },
   { map = "-21,-58", path = "left" },
   { map = "-21,-57", path = "left" },
   { map = "-21,-56", path = "left" },
   { map = "-21,-55", path = "left" },
   { map = "-21,-54", path = "left" },
   { map = "-20,-53", path = "left" },
   { map = "-21,-53", path = "left" },
   { map = "-22,-53", path = "left" },
   { map = "-23,-53", path = "left" },
   { map = "-22,-54", path = "left" },
   { map = "-22,-55", path = "left" },
   { map = "-22,-56", path = "left" },
   { map = "-22,-57", path = "left" },
   { map = "-22,-58", path = "left" },
   { map = "-23,-58", path = "left" },
   { map = "-23,-57", path = "left" },
   { map = "-23,-56", path = "left" },
   { map = "-23,-55", path = "left" },
   { map = "-23,-54", path = "left" },
   { map = "-24,-53", path = "top" },
   { map = "-24,-54", path = "top" },
   { map = "-24,-55", path = "top" },
   { map = "-23,-59", path = "bottom" },
   { map = "-24,-58", path = "bottom" },
   { map = "-24,-57", path = "bottom" },
   { map = "-24,-56", path = "left" },
   { map = "-25,-56", path = "left" },
   { map = "-26,-56", path = "bottom" },
   { map = "-26,-55", path = "bottom" },
   { map = "-26,-54", path = "left" },
   { map = "-27,-54", path = "left" },
   { map = "-28,-54", path = "left" },
   { map = "-30,-54", path = "left" },
   { map = "-29,-54", path = "left" },

   -- actions banque interieur & exterieur
 		--Retornar ao banco
        { map = "147254", door = "383" }, -- Mapa exterior do banco
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco
  }
end
