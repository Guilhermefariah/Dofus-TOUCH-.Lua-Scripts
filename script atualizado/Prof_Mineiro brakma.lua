             -- Création d'un nouveau personnage SADI obligatoire! --
-- Importer une configuration du personnage dans snowbot grâce au fichier ci-joint dans le pack --
				    -- Lancer le trajet --
	      -- Forcer le bot en retour banque si vous souhaitez récupérer vos kamas --
				      

AUTO_DELETE = {10792, 10793, 10795, 10796,10801,10797, 10784, 10798, 10799, 10794, 10785, 10800, 881, 385, 1736, 884, 883, 395, 885, 304, 14672, 2419, 2422, 384, 882, 2419, 887, 2425, 2419, 14687, 2419, 2425}
OPEN_BAGS = true

IDItem1 = 312 -- Fer
IDItem3 = 442 -- Bronze
IDItem4 = 443 -- Kobalte
IDItem5 = 444 -- Etain
IDItem6 = 350 -- Argent
IDItem7 = 446 -- Bauxite
IDItem8 = 313 -- Or

gotobanqueastrub = true
mineur1 = false
mineur20 = false
combatAstrub = false
gotobanquebrakmar = false

   

function Selling()

  	if character:kamas() > 299 and inventory:itemCount(IDItem1) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem1, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem1) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem1, 100, Priceitem -1)
			global:printSuccess("venteid1")
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem3) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem3, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem3) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem3, 100, Priceitem -1)
			global:printSuccess("venteid3")
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem4) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem4, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem4) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem4, 100, Priceitem -1)
			global:printSuccess("venteid4")
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem5) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem5, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem5) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem5, 100, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem6) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem6, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem6) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem6, 100, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem7) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem7, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem7) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem7, 100, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end

	if character:kamas() > 299 and inventory:itemCount(IDItem8) > 99 then
          npc:npcSale()
	  Priceitem = sale:getPriceItem(IDItem8, 3)
    		if Priceitem > 1 then 
        	  while (inventory:itemCount(IDItem8) > 99) and (sale:availableSpace() > 0) do 
            	    sale:sellItem(IDItem8, 100, Priceitem -1)
        	  end
       		  global:leaveDialog() 
   		end
 	end
end


function saveZaapAstrub()
	map:useById(509434,-2)
end


function goAstrub()
    npc:npc(888,3)
    global:delay(2500)
    npc:reply(-1)
    global:delay(2500)
    npc:reply(-1)
    global:printSuccess("Transfert vers Astrub")
    global:delay(2500)
    npc:reply(-1)
    npc:leaveDialog()
end

function prendreKamasBrakmar()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    npc:npcSale()
    global:delay(300)
    sale:updateAllItems()
    global:printSuccess("Mise à jour des prix")
    global:delay(300)
    global:leaveDialog() 
    tpbrakmar()
    gotobanquebrakmar = false
    mineur20 = true
end

function prendreKamasAstrub()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    npc:npcSale()
    global:delay(300)
    sale:updateAllItems()
    global:printSuccess("Mise à jour des prix")
    global:delay(300)
    global:leaveDialog() 
    tpastrub()
    mineur1 = true
    gotobanqueastrub = false
end

function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 1, 300)
    global:printSuccess("Popo rappel")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilisée")
end

function tpbrakmar()
    npc:npcBuy()
    sale:buyItem(6964, 1, 300)
    global:printSuccess("Popo brak")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(6964)
    global:printSuccess("utilisée")
end


function apprendreMineur() 
    npc:npc(596,3)
    npc:reply(-2)
    npc:reply(-1)
    global:leaveDialog()
    map:moveToCell(263)
end

function gomapmine()
    map:moveToCell(263)
end 

function move()
	Selling()

   if job:level(24) < 20 and character:level() > 19 and character:kamas() > 299 then 
	mineur1 = true
	mineur20 = false
	combatAstrub = false
	gotobanquebrakmar = false
	gotobanqueastrub = false
   end

   if job:level(24) < 20 and character:level() > 19 and character:kamas() < 300 then 
	gotobanqueastrub = true
	mineur1 = false
	mineur20 = false
	combatAstrub = false
	gotobanquebrakmar = false
   end

   if job:level(24) > 19 and character:level() > 19 and character:kamas() > 299 then 
	mineur20 = true
	gotobanquebrakmar = false
	combatAstrub = false
	mineur1 = false
	gotobanqueastrub = false
   end

   if job:level(24) > 19 and character:level() > 19 and character:kamas() < 300 then
	gotobanquebrakmar = true 
	mineur20 = false
	combatAstrub = false
	mineur1 = false
	gotobanqueastrub = false
   end

   if character:level() < 20 then
	combatAstrub = true
	mineur20 = false
	mineur1 = false
	gotobanquebrakmar = false
	gotobanqueastrub = false
   end

    if combatAstrub then
	if character:level() <= 5 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 1
	end
	  if character:level() > 5 and character:level() <= 10 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 1
	  end
		if character:level() > 10 and character:level() < 20 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 2
		end
		return {
			{ map="-5,-1", path = "bottom" },   --Dessente incarnam
			{ map="-4,0", path = "right" },
			{ map="-3,1", path = "right" },
			{ map="-2,2", path = "bottom" },
			{ map="0,3", path = "right" },
			{ map="1,3", path = "right" },
			{ map="2,3", path = "right" },
			{ map="3,3", path = "right" },
			{ map="4,3", path = "right" },
			{ map="5,3", path = "right" },
			{ map="6,3", path = "right" },
			{ map="7,3", path = "right" },
			{ map="8,3", path = "right" },
			{ map = "80220676", custom = goAstrub },
			{map = "2,-12", path = "right" },       --Phénix Piou
			{map = "3,-12", path = "right" },
			{map = "4,-12", path = "top" },
			{map = "4,-13", path = "top" },
			{map = "4,-14", path = "top" },
			{map = "4,-15", path = "left" },	--Phénix Piou
			{map = "-1,-14", fight = true,  path = "right" },   -- Combats Astrub
			{map = "0,-14", fight = true,  path = "right" },
			{map = "1,-14", fight = true,  path = "right" },
			{map = "2,-14", fight = true,  path = "right" },
			{map = "3,-14", fight = true,  path = "top" },
			{map = "3,-15", fight = true,  path = "top" },
			{map = "3,-16", fight = true,  path = "right" },
			{map = "4,-16", fight = true,  path = "right" },
			{map = "5,-16", fight = true,  path = "right" },
			{map = "6,-16", fight = true,  path = "right" },
			{map = "7,-16", fight = true,  path = "top" },
			{map = "7,-17", fight = true,  path = "top" },
			{map = "7,-18", fight = true,  path = "top" },
			{map = "7,-19", fight = true,  path = "top" },
			{map = "7,-20", fight = true,  path = "top" },
			{map = "7,-21", fight = true,  path = "left" },
			{map = "6,-21", fight = true,  path = "bottom" },
			{map = "6,-20", fight = true,  path = "bottom" },
			{map = "6,-19", fight = true,  path = "left" },
			{map = "5,-19", fight = true,  path = "left"},
			{map = "4,-19", path = "left" },
			{map = "84674566", fight = true,  path = "right	" },
			{map = "3,-19", fight = true,  path = "top" },
			{map = "3,-20", fight = true,  path = "top" },
			{map = "3,-21", fight = true,  path = "top" },
			{map = "3,-22", fight = true,  path = "left" },
			{map = "2,-22", fight = true,  path = "left" },
			{map = "1,-22", fight = true,  path = "bottom" },
			{map = "1,-21", fight = true,  path = "bottom" },
			{map = "2,-20", fight = true, path = "left" },
			{map = "1,-20", fight = true,  path = "bottom" },
			{map = "1,-19", fight = true,  path = "left" },
			{map = "0,-19", fight = true,  path = "left" },
			{map = "-1,-19", fight = true,  path = "bottom" },
			{map = "-1,-18", fight = true,  path = "bottom" },
			{map = "-1,-17", fight = true,  path = "bottom" },
			{map = "-1,-16", fight = true,  path = "bottom" },
			{map = "-1,-15", fight = true,  path = "bottom" },
			{map = "83887104", path = "396" },
		}
    end


	if mineur1 == true and job:level(24) < 1 then

	return {
   		{ map = "-1,-14", path = "top" },
  		{ map = "0,-14", path = "top" },
   		{ map = "1,-14", path = "top" },
   		{ map = "2,-14", path = "top" },
   		{ map = "3,-14", path = "top" },
   		{ map = "4,-15", path = "top" },
   		{ map = "4,-16", path = "top" },
   		{ map = "3,-15", path = "top" },
   		{ map = "3,-16", path = "top" },
   		{ map = "3,-17", path = "top" },
   		{ map = "3,-18", path = "top" },
   		{ map = "-1,-15", path = "top" },
   		{ map = "-1,-16", path = "right" },
   		{ map = "0,-16", path = "right" },
   		{ map = "1,-16", path = "right" },
   		{ map = "2,-16", path = "right" },
   		{ map = "0,-15", path = "right" },
   		{ map = "1,-15", path = "right" },
   		{ map = "2,-15", path = "right" },
   		{ map = "-1,-17", path = "right" },
   		{ map = "0,-17", path = "right" },
   		{ map = "1,-17", path = "right" },
   		{ map = "2,-17", path = "right" },
   		{ map = "-1,-18", path = "right" },
   		{ map = "0,-18", path = "right" },
   		{ map = "1,-18", path = "right" },
   		{ map = "2,-18", path = "right" },
   		{ map = "-1,-19", path = "right" },
   		{ map = "0,-19", path = "right" },
   		{ map = "1,-19", path = "right" },
   		{ map = "2,-19", path = "right" },
   		{ map = "4,-17", path = "top" },
   		{ map = "4,-18", path = "top" },
   		{ map = "5,-15", path = "top" },
   		{ map = "5,-16", path = "top" },
   		{ map = "6,-15", path = "top" },
   		{ map = "7,-15", path = "top" },
   		{ map = "7,-16", path = "top" },
   		{ map = "6,-16", path = "top" },
   		{ map = "6,-17", path = "top" },
   		{ map = "5,-17", path = "top" },
   		{ map = "7,-18", path = "left" },
   		{ map = "6,-18", path = "left" },
   		{ map = "5,-18", path = "left" },
   		{ map = "7,-19", path = "left" },
   		{ map = "6,-19", path = "left" },
   		{ map = "5,-19", path = "left" },
   		{ map = "5,-20", path = "bottom" },
   		{ map = "5,-21", path = "bottom" },
   		{ map = "6,-21", path = "bottom" },
   		{ map = "7,-21", path = "bottom" },
   		{ map = "7,-20", path = "left" },
   		{ map = "6,-20", path = "bottom" },
   		{ map = "-1,-22", path = "bottom" },
   		{ map = "-1,-21", path = "bottom" },
   		{ map = "-1,-20", path = "bottom" },
   		{ map = "0,-22", path = "bottom" },
   		{ map = "0,-21", path = "bottom" },
   		{ map = "0,-20", path = "bottom" },
   		{ map = "1,-22", path = "bottom" },
   		{ map = "1,-21", path = "bottom" },
   		{ map = "1,-20", path = "bottom" },
   		{ map = "2,-22", path = "bottom" },
   		{ map = "2,-21", path = "bottom" },
   		{ map = "2,-20", path = "bottom" },
   		{ map = "3,-22", path = "bottom" },
   		{ map = "3,-21", path = "bottom" },
   		{ map = "3,-20", path = "bottom" },
   		{ map = "84674051" , path = "right" },
   		{ map = "84674563" , custom = saveZaapAstrub, path = "top" }, -- SAUVEGARDE ZAAP
   		{ map = "84675586" , path = "left" },
   		{ map = "84675074" , path = "bottom" },
   		{ map = "84675075" , path = "left" },
   		{ map = "84674562" , path = "top" },
   		{ map = "84674561" , path = "top" },
   		{ map = "84674560" , path = "right" },
   		{ map = "84675072" , path = "right" },
   		{ map = "84675584" , path = "right" },
   		{ map = "84676096" , path = "right" },
   		{ map = "84676608" , path = "right" },
   		{ map = "84677120" , path = "top" },
   		{ map = "84677377" , door = 358 },
   		{ map = "102236673" , custom = apprendreMineur },
		}
   	end

    if mineur1 == true and job:level(24) > 0 then

	return {
                { map = "-1,-14", path = "top" },
  		{ map = "0,-14", path = "top" },
   		{ map = "1,-14", path = "top" },
   		{ map = "2,-14", path = "top" },
   		{ map = "3,-14", path = "top" },
   		{ map = "4,-15", path = "top" },
   		{ map = "4,-16", path = "top" },
   		{ map = "3,-15", path = "top" },
   		{ map = "3,-16", path = "top" },
   		{ map = "3,-17", path = "top" },
   		{ map = "3,-18", path = "top" },
   		{ map = "-1,-15", path = "top" },
   		{ map = "-1,-16", path = "right" },
   		{ map = "0,-16", path = "right" },
   		{ map = "1,-16", path = "right" },
   		{ map = "2,-16", path = "right" },
   		{ map = "0,-15", path = "right" },
   		{ map = "1,-15", path = "right" },
   		{ map = "2,-15", path = "right" },
   		{ map = "-1,-17", path = "right" },
   		{ map = "0,-17", path = "right" },
   		{ map = "1,-17", path = "right" },
   		{ map = "2,-17", path = "right" },
   		{ map = "-1,-18", path = "right" },
   		{ map = "0,-18", path = "right" },
   		{ map = "1,-18", path = "right" },
   		{ map = "2,-18", path = "right" },
   		{ map = "-1,-19", path = "right" },
   		{ map = "0,-19", path = "right" },
   		{ map = "1,-19", path = "right" },
   		{ map = "2,-19", path = "right" },
   		{ map = "4,-17", path = "top" },
   		{ map = "4,-18", path = "top" },
   		{ map = "5,-15", path = "top" },
   		{ map = "5,-16", path = "top" },
   		{ map = "6,-15", path = "top" },
   		{ map = "7,-15", path = "top" },
   		{ map = "7,-16", path = "top" },
   		{ map = "6,-16", path = "top" },
   		{ map = "6,-17", path = "top" },
   		{ map = "5,-17", path = "top" },
   		{ map = "7,-18", path = "left" },
   		{ map = "6,-18", path = "left" },
   		{ map = "5,-18", path = "left" },
   		{ map = "7,-19", path = "left" },
   		{ map = "6,-19", path = "left" },
   		{ map = "5,-19", path = "left" },
   		{ map = "5,-20", path = "bottom" },
   		{ map = "5,-21", path = "bottom" },
   		{ map = "6,-21", path = "bottom" },
   		{ map = "7,-21", path = "bottom" },
   		{ map = "7,-20", path = "left" },
   		{ map = "6,-20", path = "bottom" },
   		{ map = "-1,-22", path = "bottom" },
   		{ map = "-1,-21", path = "bottom" },
   		{ map = "-1,-20", path = "bottom" },
   		{ map = "0,-22", path = "bottom" },
   		{ map = "0,-21", path = "bottom" },
   		{ map = "0,-20", path = "bottom" },
   		{ map = "1,-22", path = "bottom" },
   		{ map = "1,-21", path = "bottom" },
   		{ map = "1,-20", path = "bottom" },
   		{ map = "2,-22", path = "bottom" },
   		{ map = "2,-21", path = "bottom" },
   		{ map = "2,-20", path = "bottom" },
   		{ map = "3,-22", path = "bottom" },
   		{ map = "3,-21", path = "bottom" },
   		{ map = "3,-20", path = "bottom" },
   		{ map = "84674051" , path = "right" },
   		{ map = "84674563" , path = "top" }, -- zaap astrub
   		{ map = "84675586" , path = "left" },
   		{ map = "84675074" , path = "bottom" },
   		{ map = "84675075" , path = "left" },
   		{ map = "84674562" , path = "top" },
   		{ map = "84674561" , path = "top" },
   		{ map = "84674560" , path = "right" },
   		{ map = "84675072" , path = "right" },
   		{ map = "84675584" , path = "right" },
   		{ map = "84676096" , path = "right" },
   		{ map = "84676608" , path = "right" },
   		{ map = "84677120" , path = "top" },
   		{ map = "84677377" , door = 358 },
   		{ map = "102236673" , custom = gomapmine },
        { map = "102237697" , gather = true, custom = loopastrub1 },
        { map = "102238721" , gather = true, custom = loopastrub2 },
        { map = "102239745" , gather = true, custom = loopastrub3 },
        { map = "102236675" , gather = true, custom = loopastrub4 },
       
	}
    end

    if mineur20 == true then
	return {
	{ map = "102237697" , custom = tpbrakmar },
	{ map = "102238721" , custom = tpbrakmar },
	{ map = "102239745" , custom = tpbrakmar },
	{ map = "102236675" , custom = tpbrakmar },
	{ map = "8913935", custom = tpbrakmar}, -- Pour banque brak si jamais on force le retour banque
	{ map = "13631488" , path = "534" },
	{ map = "144420" , path = "top" },
	{ map = "144419" , path = "top" },
	{ map = "144418" , path = "top" },
	{ map = "144417" , path = "top" },
	{ map = "144416" , path = "top" },
	{ map = "144415" , door = 125 },
	{ map = "143902" , path = "top" },
	{ map = "143901" , path = "top" },
	{ map = "143900" , path = "top" },
	{ map = "143899" , path = "top" },
	{ map = "143898" , path = "top" },
	{ map = "143897" , path = "top" },
	{ map = "143896" , door = 174 },  -- DIRECTION MINE BRAK
	{ map = "29884416" , path = "347" },
	{ map = "29885952" , gather = true, custom = loopBrak1 },
	{ map = "29887491" , gather = true, custom = loopBrak2 },
	{ map = "29884422" , gather = true, custom = loopBrak3 },
	{ map = "29885958" , gather = true, custom = loopBrak4 },
	{ map = "29887494" , gather = true, custom = loopBrak5 },
	{ map = "29884425" , gather = true, custom = loopBrak6 },
	{ map = "29885961" , gather = true, custom = loopBrak7 },
	{ map = "29887497" , gather = true, custom = loopBrak8 },
	{ map = "29884419" , gather = true, custom = loopBrak9 },
	{ map = "29885955" , gather = true, custom = loopBrak10 }, -- LOOP 20 - 100
	}
    end

	if gotobanquebrakmar then 
	
   return {
	{ map = "29885952" , custom = tpbrakmar },
	{ map = "29887491" , custom = tpbrakmar },
	{ map = "29884422" , custom = tpbrakmar },
	{ map = "29885958" , custom = tpbrakmar },
	{ map = "29887494" , custom = tpbrakmar },
	{ map = "29884425" , custom = tpbrakmar },
	{ map = "29885961" , custom = tpbrakmar },
	{ map = "29887497" , custom = tpbrakmar },
	{ map = "29884419" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },  -- LOOP 20 - 100
	{map = "13631488", path = "zaapi(144931)"}, --de la milice a la banque
	{map = "144931", door = "218"},             -- banque porte milieu
	{map = "8913935", custom = prendreKamasBrakmar},
	}
   end
	
    if gotobanqueastrub then 
	
	return {
        { map = "102237697" ,  custom = tpastrub },
        { map = "102238721" ,  custom = tpastrub },
        { map = "102239745" ,  custom = tpastrub },
        { map = "102236675" ,  custom = tpastrub },  
        { map = "4,-19", path = "bottom" },
        { map = "4,-18", path = "bottom" },
        { map = "4,-17", path = "bottom" }, 
	{ map = "84674566", door = "303" },
	{ map = "83887104", custom = prendreKamasAstrub },
	}
    end
end

function loopastrub1() --ok
  map:moveToCell(137)
end

function loopastrub2() --ok
   if map:onCell(535) then
        global:delay(500)
	map:moveToCell(306)
   else
	global:delay(500)
	map:moveToCell(548)
   end
end

function loopastrub3() --ok
   if map:onCell(506) then
        global:delay(500)
	map:moveToCell(361)
   else
	global:delay(500)
	map:moveToCell(519)
   end
end

function loopastrub4() --ok
  map:moveToCell(534)
end

function loopBrak10()

   if map:onCell(474) then
        global:delay(500)
	map:moveToCell(416)
	global:delay(500)
	map:moveToCell(489)
   else
	global:delay(500)
	map:moveToCell(489)
   end
   
end

function loopBrak9()
	if map:onCell(460) then
	global:delay(500)
	map:moveToCell(155)
  

   elseif map:onCell(170) then
	global:delay(500)
	map:moveToCell(474)
  else
  global:delay(500)
  map:moveToCell(155)
  end

end

function loopBrak8()

   if map:onCell(460) then
    global:delay(500)
    map:moveToCell(416)
    global:delay(500)
    map:moveToCell(474)
   else
    global:delay(500)
    map:moveToCell(474)
   end

end

function loopBrak7()

   if map:onCell(460) then
	global:delay(500)
	map:moveToCell(155)
  

   elseif map:onCell(170) then
	global:delay(500)
	map:moveToCell(474)
   else
  global:delay(500)
  map:moveToCell(155)
   end

end

function loopBrak6()

   if map:onCell(449) then 
        global:delay(500)
	map:moveToCell(408)
	global:delay(500)
	map:moveToCell(462)
   else
	global:delay(500)
	map:moveToCell(462)
   end
   
end

function loopBrak5()

   if map:onCell(449) then
	global:delay(500)
	map:moveToCell(138)
   

   elseif map:onCell(152) then
	global:delay(500)
	map:moveToCell(113)
   

   elseif map:onCell(127) then
	global:delay(500)
	map:moveToCell(462)
   else
        global:delay(500)
        map:moveToCell(462)
   end

end

function loopBrak4()

   if map:onCell(449) then
	global:delay(500)
	map:moveToCell(152)
  

   elseif map:onCell(165) then
	global:delay(500)
	map:moveToCell(462)
   else
  global:delay(500)
  map:moveToCell(152)
   end

end

function loopBrak3()

   if map:onCell(170) then
        global:delay(500)
	map:moveToCell(213)
	global:delay(500)
	map:moveToCell(155)
   else
	global:delay(500)
	map:moveToCell(155)
   end
   
end

function loopBrak2()
   
   if map:onCell(170) then
	global:delay(500)
	map:moveToCell(474)
   

   elseif map:onCell(460) then
	global:delay(500)
	map:moveToCell(155)
   else
	global:delay(500)
	map:moveToCell(474)
   end
   
end


function loopBrak1()
   
    if map:onCell(127) then
    global:delay(500)
    map:moveToCell(432)
    

    elseif map:onCell(417) then
    global:delay(500)
    map:moveToCell(138)
    

    elseif map:onCell(152) then
    global:delay(500)
    map:moveToCell(113)
    

    elseif map:onCell(449) then
    global:delay(500)
    map:moveToCell(432)
    else
    global:delay(500)
    map:moveToCell(113)
   end

end 




function bank()

   if mineur20 == true then
	return {
	{ map = "29885952" , custom = tpbrakmar },
	{ map = "29887491" , custom = tpbrakmar },
	{ map = "29884422" , custom = tpbrakmar },
	{ map = "29885958" , custom = tpbrakmar },
	{ map = "29887494" , custom = tpbrakmar },
	{ map = "29884425" , custom = tpbrakmar },
	{ map = "29885961" , custom = tpbrakmar },
	{ map = "29887497" , custom = tpbrakmar },
	{ map = "29884419" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },
	{ map = "29885955" , custom = tpbrakmar },  -- LOOP 20 - 100
	{map = "13631488", path = "zaapi(144931)"}, --de la milice a la banque
	{map = "144931", door = "218"},             -- banque porte milieu
	{map = "8913935", custom = prendreKamasBrakmar},
	}
    end

     if mineur1 == true then
	return {
	{ map = "102237697" ,  custom = tpastrub },
        { map = "102238721" ,  custom = tpastrub },
        { map = "102239745" ,  custom = tpastrub },
        { map = "102236675" ,  custom = tpastrub },  
        { map = "4,-19", path = "bottom" },
        { map = "4,-18", path = "bottom" },
        { map = "4,-17", path = "bottom" }, 
	{ map = "84674566", door = "303" },
	{ map = "83887104", custom = prendreKamasAstrub },
	}
    end
end
	
