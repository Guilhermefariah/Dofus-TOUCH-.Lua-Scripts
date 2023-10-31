
MAX_PODS = 90 
MIN_MONSTERS = 5
MIN_LIFE = 40
MAX_LIFE = 99
IDItem1 = 11254
IDItem2 = 11253

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
end

function move()
		 selling()
    return {
{ map = "-76,-47", path = "bottom" },
{ map = "-86,-44", path = "right" }, 
{ map = "-72,-34", path = "left" }, 
{ map = "-73,-33", path = "top" }, 
{ map = "-83,-46", fight = true, path = "right"},
{ map = "-82,-46", fight = true, path = "right"},
{ map = "-81,-46", fight = true, path = "right"},
{ map = "-80,-46", fight = true, path = "right"},
{ map = "-79,-46", fight = true, path = "right"},
{ map = "-78,-46", fight = true, path = "right"},
{ map = "-77,-46", fight = true, path = "bottom" },
{ map = "-76,-46", fight = true, path = "bottom", },
{ map = "-84,-45", fight = true, path = "right"},
{ map = "-83,-45", fight = true, path = "top"},
{ map = "-82,-45", fight = true, path = "left|bottom"},
{ map = "-81,-45", fight = true, path = "left"},
{ map = "-80,-45", fight = true, path = "top|left|right"},
{ map = "-79,-45", fight = true, path = "right"},
{ map = "-78,-45", fight = true, path = "top|right"},
{ map = "-77,-45", fight = true, path = "right|bottom" },
{ map = "-76,-45", fight = true, path = "right", },
{ map = "-75,-45", fight = true, path = "bottom", },
{ map = "-85,-44", fight = true, path = "right"},
{ map = "-84,-44", fight = true, path = "top"},
{ map = "-83,-44", fight = true, path = "bottom"},
{ map = "-82,-44", fight = true, path = "left|right"},
{ map = "-81,-44", fight = true, path = "bottom"},
{ map = "-80,-44", fight = true, path = "top"},
{ map = "-79,-44", fight = true, path = "top"},
{ map = "-78,-44", fight = true, path = "bottom"},
{ map = "-77,-44", fight = true, path = "left" },
{ map = "-76,-44", fight = true, path = "top", },
{ map = "-75,-44", fight = true, path = "right", },
{ map = "-74,-44", fight = true, path = "bottom", },
{ map = "-85,-43", fight = true, path = "right"},
{ map = "-84,-43", fight = true, path = "top"},
{ map = "-83,-43", fight = true, path = "bottom"},
{ map = "-82,-43", fight = true, path = "bottom"},
{ map = "-81,-43", fight = true, path = "left"},
{ map = "-80,-43", fight = true, path = "top"},
{ map = "-79,-43", fight = true, path = "top"},
{ map = "-78,-43", fight = true, path = "right"},
{ map = "-77,-43", fight = true, path = "bottom" },
{ map = "-76,-43", fight = true, path = "top|right", },
{ map = "-75,-43", fight = true, path = "bottom", },
{ map = "-74,-43", fight = true, path = "right", },
{ map = "-73,-43", fight = true, path = "bottom", },
{ map = "-85,-42", fight = true, path = "top"},
{ map = "-84,-42", fight = true, path = "top|left"},
{ map = "-83,-42", fight = true, path = "left"},
{ map = "-82,-42", fight = true, path = "right"},
{ map = "-81,-42", fight = true, path = "bottom"},
{ map = "-80,-42", fight = true, path = "top"},
{ map = "-79,-42", fight = true, path = "top"},
{ map = "-78,-42", fight = true, path = "left"},
{ map = "-77,-42", fight = true, path = "right" },
{ map = "-76,-42", fight = true, path = "top", },
{ map = "-75,-42", fight = true, path = "right", },
{ map = "-74,-42", fight = true, path = "right", },
{ map = "-73,-42", fight = true, path = "bottom", },
{ map = "-85,-41", fight = true, path = "top"},
{ map = "-84,-41", fight = true, path = "left|bottom"},
{ map = "-83,-41", fight = true, path = "left"},
{ map = "-82,-41", fight = true, path = "left"},
{ map = "-81,-41", fight = true, path = "left"},
{ map = "-80,-41", fight = true, path = "top"},
{ map = "-79,-41", fight = true, path = "bottom"},
{ map = "-78,-41", path = "top|left|right|bottom" },
{ map = "-76,-41", fight = true, path = "right", },
{ map = "-75,-41", fight = true, path = "right", },
{ map = "-74,-41", fight = true, path = "right", },
{ map = "-73,-41", fight = true, path = "top|right", },
{ map = "-72,-41", fight = true, path = "bottom", },
{ map = "-84,-40", fight = true, path = "top", },
{ map = "-82,-40", fight = true, path = "top"},
{ map = "-81,-40", fight = true, path = "left"},
{ map = "-80,-40", fight = true, path = "top"},
{ map = "-79,-40", fight = true, path = "left"},
{ map = "-78,-40", fight = true, path = "bottom"},
{ map = "-77,-40", fight = true, path = "right", },
{ map = "-76,-40", fight = true, path = "right", },
{ map = "-75,-40", fight = true, path = "right", },
{ map = "-74,-40", fight = true, path = "right", },
{ map = "-73,-40", fight = true, path = "right|bottom", },
{ map = "-72,-40", fight = true, path = "bottom", },
{ map = "-81,-39", fight = true, path = "top"},
{ map = "-80,-39", fight = true, path = "left"},
{ map = "-79,-39", fight = true, path = "left"},
{ map = "-78,-39", fight = true, path = "left|right|bottom"},
{ map = "-77,-39", fight = true, path = "top", },
{ map = "-76,-39", fight = true, path = "bottom", },
{ map = "-75,-39", fight = true, path = "left", },
{ map = "-74,-39", fight = true, path = "left", },
{ map = "-73,-39", fight = true, path = "left|bottom", },
{ map = "-72,-39", fight = true, path = "bottom", },
{ map = "-80,-38", fight = true, path = "top"},
{ map = "-79,-38", fight = true, path = "left"},
{ map = "-78,-38", fight = true, path = "bottom"},
{ map = "-77,-38", fight = true, path = "left", },
{ map = "-76,-38", fight = true, path = "right|bottom", },
{ map = "-75,-38", fight = true, path = "right", },
{ map = "-74,-38", fight = true, path = "bottom", },
{ map = "-73,-38", fight = true, path = "bottom", },
{ map = "-72,-38", fight = true, path = "left", },
{ map = "-79,-37", fight = true, path = "top", },
{ map = "-78,-37", fight = true, path = "left", },
{ map = "-77,-37", fight = true, path = "top", },
{ map = "-76,-37", fight = true, path = "right|bottom", },
{ map = "-75,-37", fight = true, path = "right", },
{ map = "-74,-37", fight = true, path = "bottom", },
{ map = "-73,-37", fight = true, path = "bottom", },
{ map = "-77,-36", fight = true, path = "top", },
{ map = "-76,-36", fight = true, path = "left", },
{ map = "-75,-36", fight = true, path = "left|bottom", },
{ map = "-74,-36", fight = true, path = "left|bottom", },
{ map = "-73,-36", fight = true, path = "bottom", },
{ map = "-76,-35", fight = true, path = "top", },
{ map = "-75,-35", fight = true, path = "left", },
{ map = "-74,-35", fight = true, path = "bottom", },
{ map = "-73,-35", fight = true, path = "left", },
{ map = "-76,-34", fight = true, path = "right", },
{ map = "-75,-34", fight = true, path = "top", },
{ map = "-74,-34", fight = true, path = "bottom", },
{ map = "-73,-34", fight = true, path = "left", },
{ map = "-76,-33", fight = true, path = "top", },
{ map = "-75,-33", fight = true, path = "left", },
{ map = "-74,-33", fight = true, path = "left", },
{ map = "54172457", fight = true, path = "right" },
{ map = "54534165", path = "424"},
}
end








