-- D�part Zaap d'Astrub, pr�voir assez de kamas pour la vente  --
-- Le bot va vendre automatiquement les 5 Id Item ci dessous, et actualisera le prix des ressources en ventes --
-- Retour en banque off, le bot supprimera le reste des ressources sans valeur --
-- Ph�nix activ� --
-- Gros gain d'xp et de kamas --


AUTO_DELETE = {1985,463,544}
MIN_MONSTERS = 4
MAX_MONSTERS = 4
FORCE_MONSTERS = {253}
IDItem1 = 1611 -- Bourgeon d'abraknyde Sombre --
IDItem2 = 1610 -- Ecorce d'abraknyde sombre --
IDItem3 = 1612 -- Racine d'abraknyde sombre --
IDItem4 = 1660 -- Ambre d'abraknyde Sombre --
IDItem5 = 1682 -- Ecorce de Liroye Merline --

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
       		  global:printSuccess("[Vente]["..inventory:itemNameId(IDItem4).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]") 
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
       		  global:printSuccess("[Vente]["..inventory:itemNameId(IDItem5).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
		 end
    end

    if inventory:itemCount(IDItem5) > 100  and character:kamas() <= 300 then
	global:printSuccess("Je retourne chercher des kamas hop hop hop ...")
	 global:leaveDialog()
   global:delay(1000)
	Refill = true
    end

end



function move()
selling()
	return {
		-- D�part zaap astrub --
		{map = "4,-19", path = "left"},
		{map = "3,-19", path = "left"},
		{map = "2,-19", path = "left"},
		{map = "1,-19", path = "left"},
		{map = "0,-19", path = "top"},
		{map = "0,-20", path = "left"},
		{map = "-1,-20", path = "left"},
		{map = "-2,-20", path = "left"},
		{map = "-3,-20", path = "left"},
		{map = "-4,-20", path = "left"},
		{map = "-5,-20", path = "left"},
		{map = "-6,-20", path = "left"},
		{map = "-7,-20", path = "left"},
		{map = "-8,-20", path = "left"},
		{map = "-9,-20", path = "left"},
		{map = "-10,-20", path = "bottom"},
		{map = "-10,-19", path = "bottom"},
		{map = "-10,-18", path = "bottom"},
		{map = "-10,-17", path = "bottom"},
		{map = "-10,-16", path = "bottom"},

		-- Boucle combat pour abraknyde sombre --
		{map = "-10,-15", path = "left", custom = Selling},
		{map = "-11,-15", path = "left", fight = true},
		{map = "-12,-15", path = "left", fight = true},
		{map = "-13,-15", path = "left", fight = true},
		{map = "-14,-15", path = "bottom", fight = true},
		{map = "-14,-14", path = "right", fight = true},
		{map = "-13,-14", path = "right", fight = true},
		{map = "-12,-14", path = "right", fight = true},
		{map = "-11,-14", path = "bottom", fight = true},
		{map = "-11,-13", path = "left", fight = true},
		{map = "-12,-13", path = "left", fight = true},
		{map = "-13,-13", path = "left", fight = true},
		{map = "-14,-13", path = "bottom", fight = true},
		{map = "-14,-12", path = "right", fight = true},
		{map = "-13,-12", path = "right", fight = true},
		{map = "-12,-12", path = "right", fight = true},
		{map = "-11,-12", path = "bottom", fight = true},
		{map = "-11,-11", path = "bottom", fight = true},
		{map = "-11,-10", path = "right", fight = true},
		{map = "-10,-10", path = "top", fight = true},
		{map = "-10,-11", path = "top", fight = true},
		{map = "-10,-12", path = "top", fight = true},
		{map = "-10,-13", path = "top", fight = true},
		{map = "-10,-14", path = "top", fight = true},

		-- Retour � la boucle depuis ph�nix --
		{map = "-10,-6", path = "top"},
		{map = "-10,-7", path = "top"},
		{map = "-10,-8", path = "top"},
		{map = "-10,-9", path = "top"},		
	}
end

function bank()
	return {
	}
end


function phenix()
	return {
        { map = "-10,-6", phenix = "185", path = "top" }
	}
end
