
-- BEGIN-IGNORE --
-----------------------------------------------
------------------------Importer la configuration personnage avant de lancer-------------------------------------
------------------------------------------Sadi OBLIGATOIRE-------------------------------------------------------
vendre = true  -- true pour vendre une fois full, false pour aller stocker en banque(vendre= true, retour banque snowbot à 92%)
vente10 = false-- Choisir false ou true si vous souhaitez vendre ou non par 10
vente100 = true -- Choisir false ou true si vous souhahitez vendre ou non par 100 cumulable avec vente par 10
local blackList = {} -- ID éléments à ne pas vendre !
-----------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------
-- END-IGNORE --
-- BEGIN-ENCODE --
AUTO_DELETE = {10792, 10793, 10795, 10796,10801,10797, 10784, 10798, 10799, 10794, 10785, 10800}
OPEN_BAGS = true

local function checkTheList(blackList, val)
  for i,v in pairs(blackList) do 
    print(val)
    if v == val then 
      return true 
    end 
  end
  return false
end

function selling()
 if vendre  and inventory:podsP() > 30 then
      global:printSuccess("c'est le moment de vendre")
    npc:npcSale()
    global:printSuccess("OuvertureNPCSale")
	for i = 44,21185 do

	  if inventory:itemCount(i) > 99 and inventory:itemWeight(i) > 0 then
             if sale:availableSpace() < 1 then global:printSuccess("[Info] Slots HDV remplis") global:printSuccess("[Reussite] On deconnecte le personnage") global:disconnect() end
               if checkTheList(blackList, i) then
        		global:printSuccess("[Blacklist][ID="..i.."] On passe à l'index suivant.")
        		i = i + 1
               else
     			global:printSuccess("Si erreur de retour de prix mettre "..i.." en Blacklist")
    		   if inventory:itemCount(i) > 99 and vente100 == true then
          		Priceitem = sale:getPriceItem(i, 3)
    			  	 if Priceitem > 0 then 
    				      global:printSuccess(i)
                  			while (inventory:itemCount(i) > 99) and (sale:availableSpace() > 0) do 
                        		   global:printSuccess("[Vente][ID="..i.."] Mise en vente x100.")
                        		   sale:sellItem(i, 100, Priceitem -1)
                 		 	end
               		         end
		  end
    		   if inventory:itemCount(i) > 99 and vente10 == true then
          		Priceitem = sale:getPriceItem(i, 2)
    			   	  if Priceitem > 0 then 
    				       global:printSuccess(i)
                  			  while (inventory:itemCount(i) > 99) and (sale:availableSpace() > 0) do
                        		      global:printSuccess("[Vente][ID="..i.."] Mise en vente x10.") 
                       			      sale:sellItem(i, 100, Priceitem -1)
                  		 	  end      
                	          end
    	   	   end
             end
         end
       end
    global:delay(300)
    global:leaveDialog() 
    global:printSuccess("FermetureNPCSale")
    global:delay(300)
    move()
 end
end

function saveZaapAstrub()
	map:useById(509434,-2)
end

function onprendleskamasbonta()
    npc:npcBank(-1)
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    popoBonta()    
end

function onprendleskamasamakna()
    npc:npcBank(-1)
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    map:moveToCell(410)    
end

function stockageBonta()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    popoBonta()    
end

function stockageAmakna()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banque] : " .. kamas .. " Kamas. On les prend et on reprend la route")
    npc:leaveDialog()
    global:delay(300)
    map:moveToCell(410)    
end

function learnJob()
        npc:npc(849, 3)
	global:delay(2500)
        npc:reply(-1)
	global:delay(2500)
        npc:reply(-3) 
	global:delay(2500)
	npc:reply(-1)
	global:delay(2500)
	npc:leaveDialog()
	inventory:equipItem(8542, 1)
	global:printSuccess("gant d'alchi équipée")
end

function popoRappel()
    npc:npcBuy()
    sale:buyItem(548, 1, 900)
    global:printSuccess("Popo rappel")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilisée")
end

function popoBonta()
    npc:npcBuy()
    sale:buyItem(6965, 1, 900)
    global:printSuccess("Popo Bonta")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(6965)
    global:printSuccess("Utilisée")
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

function move()

  if vendre then
     selling()
  end

  if character:level() < 21 then
	combatAstrub = true
	recolte30 = false
        prendreKamas30 = false
        recolte100 = false
        prendreKamas100 = false
  end

  if character:level() > 20 and character:kamas() > 300 and job:level(26) < 30 then
	combatAstrub = false
	recolte30 = true
        prendreKamas30 = false
        recolte100 = false
        prendreKamas100 = false
  end

  if character:level() > 20 and character:kamas() < 301 and job:level(26) < 30 then
	combatAstrub = false
	recolte30 = false
        prendreKamas30 = true
        recolte100 = false
        prendreKamas100 = false
  end

  if character:level() > 20 and character:kamas() > 300 and job:level(26) > 29 then
	combatAstrub = false
	recolte30 = false
        prendreKamas30 = false
        recolte100 = true
        prendreKamas100 = false
  end

  if character:level() > 20 and character:kamas() < 301 and job:level(26) > 29 then
	combatAstrub = false
	recolte30 = false
        prendreKamas30 = false
        recolte100 = false
        prendreKamas100 = true
  end

 if combatAstrub then

        if character:level() <= 5 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 1
	end
	  if character:level() > 5 and character:level() <= 10 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 2
	  end
		if character:level() > 10 and character:level() < 20 then
			MIN_MONSTERS = 1
			MAX_MONSTERS = 3
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
			{ map="4,3", custom = learnJob, path = "right" },
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

 if recolte30 then

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
		{ map = "4,-20", custom = popoBonta},
                { map = "-33,-56", path = "zaapi(146226)" }, --vers zaapiBontaSud
   		{ map = "-28,-36", path = "right", gather = true },
   		{ map = "-27,-36", path = "right", gather = true },
   		{ map = "-26,-36", path = "right", gather = true },
   		{ map = "-29,-36", path = "right", gather = true },
   		{ map = "-25,-36", path = "right", gather = true },
   		{ map = "-24,-36", path = "top", gather = true },
   		{ map = "-24,-37", path = "left", gather = true },
   		{ map = "-25,-37", path = "left", gather = true },
   		{ map = "-27,-37", path = "left", gather = true },
   		{ map = "-28,-37", path = "left(252)", gather = true },
   		{ map = "-26,-37", path = "left", gather = true },
   		{ map = "-29,-37", path = "top", gather = true },
   		{ map = "-29,-38", path = "right", gather = true },
   		{ map = "-28,-38", path = "right", gather = true },
   		{ map = "-27,-38", path = "right", gather = true },
   		{ map = "-26,-38", path = "right", gather = true },
   		{ map = "-25,-38", path = "top", gather = true },
   		{ map = "-29,-40", path = "top", gather = true },
   		{ map = "-29,-41", path = "right", gather = true },
   		{ map = "-28,-41", path = "right", gather = true },
   		{ map = "-27,-41", path = "right", gather = true },
   		{ map = "-26,-41", path = "top", gather = true },
   		{ map = "-26,-42", path = "left", gather = true },
   		{ map = "-27,-42", path = "top", gather = true },
   		{ map = "-28,-43", path = "top", gather = true },
   		{ map = "-27,-43", path = "left", gather = true },
   		{ map = "-28,-44", path = "left", gather = true },
   		{ map = "-25,-39", path = "left", gather = true },
   		{ map = "-26,-39", path = "left", gather = true },
   		{ map = "-27,-39", path = "top", gather = true },
   		{ map = "-27,-40", path = "left", gather = true },
   		{ map = "-28,-40", path = "left", gather = true },
   		{ map = "-29,-50", path = "bottom" },
   		{ map = "-29,-49", path = "bottom" },
   		{ map = "-29,-48", path = "bottom" },
   		{ map = "-29,-47", path = "bottom" },
   		{ map = "-29,-46", path = "bottom" },
   		{ map = "-29,-45", path = "bottom" },
   		{ map = "-29,-44", path = "left" },
   		{ map = "-30,-44", path = "bottom" },
   		{ map = "-30,-43", path = "bottom" },
   		{ map = "-30,-42", path = "bottom" },
   		{ map = "-30,-41", path = "bottom" },
   		{ map = "-30,-40", path = "bottom" },
   		{ map = "-30,-39", path = "bottom" },
   		{ map = "-30,-38", path = "bottom" },
   		{ map = "-30,-37", path = "bottom", gather = true },
   		{ map = "-30,-36", path = "right", gather = true },
  }
 end

 if prendreKamas30 then

  return {
   { map = "-28,-36", path = "top" },
   { map = "-27,-36", path = "top" },
   { map = "-26,-36", path = "top" },
   { map = "-29,-36", path = "top" },
   { map = "-25,-36", path = "top" },
   { map = "-24,-36", path = "top" },
   { map = "-24,-37", path = "left" },
   { map = "-25,-37", path = "left" },
   { map = "-27,-37", path = "left" },
   { map = "-28,-37", path = "left" },
   { map = "-26,-37", path = "left" },
   { map = "-29,-37", path = "top" },
   { map = "-29,-38", path = "top" },
   { map = "-28,-38", path = "left" },
   { map = "-27,-38", path = "left" },
   { map = "-26,-38", path = "left" },
   { map = "-25,-38", path = "left" },
   { map = "-29,-40", path = "top" },
   { map = "-29,-41", path = "top" },
   { map = "-28,-41", path = "left" },
   { map = "-27,-41", path = "left" },
   { map = "-26,-41", path = "left" },
   { map = "-26,-42", path = "left" },
   { map = "-27,-42", path = "left" },
   { map = "-28,-43", path = "left" },
   { map = "-27,-43", path = "left" },
   { map = "-28,-44", path = "left" },
   { map = "-25,-39", path = "left" },
   { map = "-26,-39", path = "left" },
   { map = "-27,-39", path = "left" },
   { map = "-27,-40", path = "left" },
   { map = "-28,-40", path = "left" },
   { map = "-29,-49", path = "top" },
   { map = "-29,-48", path = "top" },
   { map = "-29,-47", path = "top" },
   { map = "-29,-46", path = "top" },
   { map = "-29,-45", path = "top" },
   { map = "-29,-44", path = "top" },
   { map = "-30,-44", path = "right" },
   { map = "-30,-43", path = "right" },
   { map = "-30,-42", path = "top" },
   { map = "-30,-41", path = "top" },
   { map = "-30,-40", path = "top" },
   { map = "-30,-39", path = "top" },
   { map = "-30,-38", path = "top" },
   { map = "-30,-37", path = "top" },
   { map = "-30,-36", path = "top" },
   { map = "-29,-39", path = "top" },
   { map = "-29,-42", path = "top" },
   { map = "-29,-43", path = "top" },
   { map = "-28,-39", path = "left" },
   { map = "-28,-42", path = "left" },
   { map = "-29,-50", path = "zaapi(147254)" }, -- vers banque bonta
   { map = "147254", door = "340"}, -- on rentre dans la banque
   { map = "2884617", custom = onprendleskamasbonta},  -- on prend les kamas a bonta
  }
 end

 if recolte100 then

 return {
   { map = "-28,-36", custom = popoRappel},
   { map = "-27,-36", custom = popoRappel},
   { map = "-26,-36", custom = popoRappel},
   { map = "-29,-36", custom = popoRappel},
   { map = "-25,-36", custom = popoRappel},
   { map = "-24,-36", custom = popoRappel},
   { map = "-24,-37", custom = popoRappel},
   { map = "-25,-37", custom = popoRappel},
   { map = "-27,-37", custom = popoRappel},
   { map = "-28,-37", custom = popoRappel},
   { map = "-26,-37", custom = popoRappel},
   { map = "-29,-37", custom = popoRappel},
   { map = "-29,-38", custom = popoRappel},
   { map = "-28,-38", custom = popoRappel},
   { map = "-27,-38", custom = popoRappel},
   { map = "-26,-38", custom = popoRappel},
   { map = "-25,-38", custom = popoRappel},
   { map = "-29,-40", custom = popoRappel},
   { map = "-29,-41", custom = popoRappel},
   { map = "-28,-41", custom = popoRappel},
   { map = "-27,-41", custom = popoRappel},
   { map = "-26,-41", custom = popoRappel},
   { map = "-26,-42", custom = popoRappel},
   { map = "-27,-42", custom = popoRappel},
   { map = "-28,-43", custom = popoRappel},
   { map = "-27,-43", custom = popoRappel},
   { map = "-28,-44", custom = popoRappel},
   { map = "-25,-39", custom = popoRappel},
   { map = "-26,-39", custom = popoRappel},
   { map = "-27,-39", custom = popoRappel},
   { map = "-27,-40", custom = popoRappel},
   { map = "-28,-40", custom = popoRappel},
   { map = "-29,-50", custom = popoRappel},
   { map = "-29,-49", custom = popoRappel},
   { map = "-29,-48", custom = popoRappel},
   { map = "-29,-47", custom = popoRappel},
   { map = "-29,-46", custom = popoRappel},
   { map = "-29,-45", custom = popoRappel},
   { map = "-29,-44", custom = popoRappel},
   { map = "-30,-44", custom = popoRappel},
   { map = "-30,-43", custom = popoRappel},
   { map = "-30,-42", custom = popoRappel},
   { map = "-30,-41", custom = popoRappel},
   { map = "-30,-40", custom = popoRappel},
   { map = "-30,-39", custom = popoRappel},
   { map = "-30,-38", custom = popoRappel},
   { map = "-30,-37", custom = popoRappel},
   { map = "-30,-36", custom = popoRappel}, -- transfert vers Astrub direction amakna
   { map = "4,-19", path = "right" },  --zaap Astrub
   { map = "5,-19", path = "right" },
   { map = "6,-19", path = "right" },
   { map = "7,-19", path = "right" },
   { map = "8,-19", path = "bottom", gather = true },
   { map = "8,-18", path = "bottom", gather = true },
   { map = "8,-17", path = "bottom", gather = true },
   { map = "8,-16", path = "bottom", gather = true },
   { map = "8,-15", path = "bottom", gather = true },
   { map = "8,-14", path = "bottom" },
   { map = "8,-13", path = "left" },
   { map = "7,-13", path = "bottom" },
   { map = "7,-12", path = "left" },
   { map = "6,-12", path = "left" },
   { map = "5,-12", path = "left" },
   { map = "4,-12", path = "bottom" },
   { map = "4,-11", path = "bottom" },
   { map = "4,-10", path = "bottom" },
   { map = "4,-9", path = "bottom" },
   { map = "4,-8", path = "bottom" },
   { map = "4,-7", path = "bottom" },
   { map = "4,-6", path = "bottom" },
   { map = "4,-5", path = "bottom" },
   { map = "4,-4", path = "bottom" },
   { map = "4,-3", path = "left" },
   { map = "3,-3", path = "bottom" },
   { map = "3,-2", path = "bottom" },
   { map = "3,-1", path = "bottom" },
   { map = "3,0", path = "left" },
   { map = "2,0", path = "bottom" },
   { map = "2,1", path = "bottom" },
   { map = "2,2", path = "bottom" },
   { map = "2,3", path = "bottom" },
   { map = "2,4", path = "right" },
   { map = "3,4", path = "bottom" },
   { map = "3,5", path = "bottom" },
   { map = "3,6", path = "right" },
   { map = "4,6", path = "bottom" },
   { map = "4,7", path = "right" },
   { map = "5,7", path = "bottom", gather = true },
   { map = "5,8", path = "bottom", gather = true },
   { map = "5,9", path = "bottom", gather = true },
   { map = "5,10", path = "bottom", gather = true },
   { map = "5,11", path = "left", gather = true },
   { map = "4,11", path = "left", gather = true },
   { map = "3,11", path = "left", gather = true },
   { map = "2,11", path = "left", gather = true },
   { map = "1,11", path = "bottom", gather = true },
   { map = "1,12", path = "bottom", gather = true },
   { map = "1,13", path = "bottom", gather = true },
   { map = "1,14", path = "bottom", gather = true },
   { map = "1,15", path = "bottom", gather = true },
   { map = "1,16", path = "bottom", gather = true },
   { map = "1,17", path = "bottom" },
   { map = "1,18", path = "bottom" },
   { map = "1,19", path = "bottom" },
   { map = "1,20", path = "bottom" },
   { map = "1,21", path = "bottom" },
   { map = "1,22", path = "right" },
   { map = "2,22", path = "bottom" },
   { map = "2,23", path = "bottom" },
   { map = "2,24", path = "left" },
   { map = "1,24", path = "bottom" },
   { map = "1,25", path = "bottom" },
   { map = "1,26", path = "bottom" },
   { map = "1,27", path = "bottom" },
   { map = "1,28", path = "bottom" },
   { map = "1,29", path = "bottom" },
   { map = "1,30", path = "right", gather = true },
   { map = "2,30", path = "right", gather = true },
   { map = "3,30", path = "top", gather = true },
   { map = "3,29", path = "top", gather = true },
   { map = "3,28", path = "top", gather = true },
   { map = "3,27", path = "top", gather = true },
   { map = "3,26", path = "top", gather = true },
   { map = "3,25", path = "top", gather = true },
   { map = "3,24", path = "top", gather = true },
   { map = "3,23", path = "top", gather = true },
   { map = "3,22", path = "top", gather = true },
   { map = "3,21", path = "top", gather = true },
   { map = "3,20", path = "top", gather = true },
   { map = "3,19", path = "top", gather = true },
   { map = "3,18", path = "top", gather = true },
   { map = "3,17", path = "right", gather = true },
   { map = "4,17", path = "right", gather = true },
   { map = "5,17", path = "top", gather = true },
   { map = "5,16", path = "top", gather = true },
   { map = "5,15", path = "top", gather = true },
   { map = "5,14", path = "left", gather = true },
   { map = "4,14", path = "bottom", gather = true },
   { map = "4,15", path = "left", gather = true },
   { map = "3,15", path = "top", gather = true },
   { map = "3,14", path = "top", gather = true },
   { map = "3,13", path = "right", gather = true },
   { map = "4,13", path = "right", gather = true },
   { map = "5,13", path = "right", gather = true },
   { map = "6,13", path = "right", gather = true },
   { map = "7,13", path = "top", gather = true },
   { map = "7,12", path = "right", gather = true },
   { map = "8,12", path = "top", gather = true },
   { map = "8,11", path = "top", gather = true },
   { map = "8,10", path = "right", gather = true },
   { map = "9,10", path = "right", gather = true },
   { map = "10,10", path = "bottom", gather = true },
   { map = "10,11", path = "bottom", gather = true },
   { map = "10,12", path = "right", gather = true },
   { map = "11,12", path = "top", gather = true },
   { map = "11,11", path = "top", gather = true },
   { map = "11,10", path = "top", gather = true },
   { map = "11,9", path = "left" },
   { map = "10,9", path = "left" },
   { map = "9,9", path = "left" },
   { map = "8,9", path = "left" },
   { map = "7,9", path = "top" },
   { map = "7,8", path = "top" },
   { map = "7,7", path = "left" },
   { map = "6,7", path = "left" },
   { map = "2,-2", path = "right" },
  }
 end

 if prendreKamas100 then

 return {
   { map = "3,-2", path = "left" },
   { map = "3,-1", path = "top" },
   { map = "3,0", path = "top" },
   { map = "2,0", path = "right" },
   { map = "2,1", path = "top" },
   { map = "2,2", path = "top" },
   { map = "2,3", path = "top" },
   { map = "2,4", path = "top" },
   { map = "3,4", path = "left" },
   { map = "3,5", path = "top" },
   { map = "3,6", path = "top" },
   { map = "4,7", path = "left" },
   { map = "5,7", path = "left" },
   { map = "5,9", path = "left" },
   { map = "5,10", path = "top" },
   { map = "5,11", path = "top" },
   { map = "4,11", path = "right" },
   { map = "3,11", path = "right" },
   { map = "2,11", path = "right" },
   { map = "1,11", path = "right" },
   { map = "1,12", path = "top" },
   { map = "1,13", path = "top" },
   { map = "1,14", path = "top" },
   { map = "1,15", path = "top" },
   { map = "1,16", path = "top" },
   { map = "1,17", path = "top" },
   { map = "1,18", path = "top" },
   { map = "1,19", path = "top" },
   { map = "1,20", path = "top" },
   { map = "1,21", path = "top" },
   { map = "1,22", path = "top" },
   { map = "2,22", path = "left" },
   { map = "2,23", path = "top" },
   { map = "2,24", path = "top" },
   { map = "1,24", path = "right" },
   { map = "1,25", path = "top" },
   { map = "1,26", path = "top" },
   { map = "1,27", path = "top" },
   { map = "1,28", path = "top" },
   { map = "1,29", path = "top" },
   { map = "1,30", path = "top" },
   { map = "2,30", path = "right" },
   { map = "3,30", path = "top" },
   { map = "3,29", path = "top" },
   { map = "3,28", path = "top" },
   { map = "3,27", path = "top" },
   { map = "3,26", path = "top" },
   { map = "3,25", path = "top" },
   { map = "3,24", path = "top" },
   { map = "3,23", path = "top" },
   { map = "3,22", path = "top" },
   { map = "3,21", path = "top" },
   { map = "3,20", path = "top" },
   { map = "3,19", path = "top" },
   { map = "3,18", path = "top" },
   { map = "3,17", path = "right" },
   { map = "4,17", path = "right" },
   { map = "5,17", path = "top" },
   { map = "5,16", path = "top" },
   { map = "5,15", path = "top" },
   { map = "5,14", path = "left" },
   { map = "4,14", path = "bottom" },
   { map = "4,15", path = "left" },
   { map = "3,15", path = "top" },
   { map = "3,14", path = "top" },
   { map = "3,13", path = "top" },
   { map = "4,13", path = "right" },
   { map = "5,13", path = "right" },
   { map = "6,13", path = "right" },
   { map = "7,13", path = "top" },
   { map = "7,12", path = "right" },
   { map = "8,12", path = "top" },
   { map = "8,11", path = "top" },
   { map = "8,10", path = "right" },
   { map = "9,10", path = "right" },
   { map = "10,10", path = "bottom" },
   { map = "10,11", path = "bottom" },
   { map = "10,12", path = "right" },
   { map = "11,12", path = "top" },
   { map = "11,11", path = "top" },
   { map = "11,10", path = "top" },
   { map = "11,9", path = "left" },
   { map = "10,9", path = "left" },
   { map = "9,9", path = "left" },
   { map = "8,9", path = "left" },
   { map = "7,9", path = "left" },
   { map = "7,8", path = "top" },
   { map = "7,7", path = "left" },
   { map = "6,7", path = "left" },
   { map = "6,9", path = "left" },
   { map = "4,9", path = "left" },
   { map = "3,9", path = "top" },
   { map = "3,7", path = "top" },
   { map = "3,8", path = "top" },
   { map = "2,21", path = "left" },
   { map = "2,13", path = "left" },
   { map = "2,14", path = "left" },
   { map = "2,15", path = "left" },
   { map = "3,12", path = "top" },
   { map = "88081177", door = "216" }, --on rentre dans la banque
   { map = "99095051", custom = onprendleskamasamakna},
  }
 end
end

function bank()

  if job:level(26) < 30 then
	stockage30 = true
	stockage100 = false
  end

  if job:level(26) > 29 then
	stockage30 = false
	stockage100 = true
  end

 if stockage30 then
  return {
   { map = "-28,-36", path = "top" },
   { map = "-27,-36", path = "top" },
   { map = "-26,-36", path = "top" },
   { map = "-29,-36", path = "top" },
   { map = "-25,-36", path = "top" },
   { map = "-24,-36", path = "top" },
   { map = "-24,-37", path = "left" },
   { map = "-25,-37", path = "left" },
   { map = "-27,-37", path = "left" },
   { map = "-28,-37", path = "left" },
   { map = "-26,-37", path = "left" },
   { map = "-29,-37", path = "top" },
   { map = "-29,-38", path = "top" },
   { map = "-28,-38", path = "left" },
   { map = "-27,-38", path = "left" },
   { map = "-26,-38", path = "left" },
   { map = "-25,-38", path = "left" },
   { map = "-29,-40", path = "top" },
   { map = "-29,-41", path = "top" },
   { map = "-28,-41", path = "left" },
   { map = "-27,-41", path = "left" },
   { map = "-26,-41", path = "left" },
   { map = "-26,-42", path = "left" },
   { map = "-27,-42", path = "left" },
   { map = "-28,-43", path = "left" },
   { map = "-27,-43", path = "left" },
   { map = "-28,-44", path = "left" },
   { map = "-25,-39", path = "left" },
   { map = "-26,-39", path = "left" },
   { map = "-27,-39", path = "left" },
   { map = "-27,-40", path = "left" },
   { map = "-28,-40", path = "left" },
   { map = "-29,-49", path = "top" },
   { map = "-29,-48", path = "top" },
   { map = "-29,-47", path = "top" },
   { map = "-29,-46", path = "top" },
   { map = "-29,-45", path = "top" },
   { map = "-29,-44", path = "top" },
   { map = "-30,-44", path = "right" },
   { map = "-30,-43", path = "right" },
   { map = "-30,-42", path = "top" },
   { map = "-30,-41", path = "top" },
   { map = "-30,-40", path = "top" },
   { map = "-30,-39", path = "top" },
   { map = "-30,-38", path = "top" },
   { map = "-30,-37", path = "top" },
   { map = "-30,-36", path = "top" },
   { map = "-29,-39", path = "top" },
   { map = "-29,-42", path = "top" },
   { map = "-29,-43", path = "top" },
   { map = "-28,-39", path = "left" },
   { map = "-28,-42", path = "left" },
   { map = "-29,-50", path = "zaapi(147254)" }, -- vers banque bonta
   { map = "147254", door = "340"}, -- on rentre dans la banque
   { map = "2884617", custom = stockageBonta},  -- on prend les kamas a bonta
  }
 end

 if stockage100 then

 return {
   { map = "3,-2", path = "left" },
   { map = "3,-1", path = "top" },
   { map = "3,0", path = "top" },
   { map = "2,0", path = "right" },
   { map = "2,1", path = "top" },
   { map = "2,2", path = "top" },
   { map = "2,3", path = "top" },
   { map = "2,4", path = "top" },
   { map = "3,4", path = "left" },
   { map = "3,5", path = "top" },
   { map = "3,6", path = "top" },
   { map = "4,7", path = "left" },
   { map = "5,7", path = "left" },
   { map = "5,9", path = "left" },
   { map = "5,10", path = "top" },
   { map = "5,11", path = "top" },
   { map = "4,11", path = "right" },
   { map = "3,11", path = "right" },
   { map = "2,11", path = "right" },
   { map = "1,11", path = "right" },
   { map = "1,12", path = "top" },
   { map = "1,13", path = "top" },
   { map = "1,14", path = "top" },
   { map = "1,15", path = "top" },
   { map = "1,16", path = "top" },
   { map = "1,17", path = "top" },
   { map = "1,18", path = "top" },
   { map = "1,19", path = "top" },
   { map = "1,20", path = "top" },
   { map = "1,21", path = "top" },
   { map = "1,22", path = "top" },
   { map = "2,22", path = "left" },
   { map = "2,23", path = "top" },
   { map = "2,24", path = "top" },
   { map = "1,24", path = "right" },
   { map = "1,25", path = "top" },
   { map = "1,26", path = "top" },
   { map = "1,27", path = "top" },
   { map = "1,28", path = "top" },
   { map = "1,29", path = "top" },
   { map = "1,30", path = "top" },
   { map = "2,30", path = "right" },
   { map = "3,30", path = "top" },
   { map = "3,29", path = "top" },
   { map = "3,28", path = "top" },
   { map = "3,27", path = "top" },
   { map = "3,26", path = "top" },
   { map = "3,25", path = "top" },
   { map = "3,24", path = "top" },
   { map = "3,23", path = "top" },
   { map = "3,22", path = "top" },
   { map = "3,21", path = "top" },
   { map = "3,20", path = "top" },
   { map = "3,19", path = "top" },
   { map = "3,18", path = "top" },
   { map = "3,17", path = "right" },
   { map = "4,17", path = "right" },
   { map = "5,17", path = "top" },
   { map = "5,16", path = "top" },
   { map = "5,15", path = "top" },
   { map = "5,14", path = "left" },
   { map = "4,14", path = "bottom" },
   { map = "4,15", path = "left" },
   { map = "3,15", path = "top" },
   { map = "3,14", path = "top" },
   { map = "3,13", path = "top" },
   { map = "4,13", path = "right" },
   { map = "5,13", path = "right" },
   { map = "6,13", path = "right" },
   { map = "7,13", path = "top" },
   { map = "7,12", path = "right" },
   { map = "8,12", path = "top" },
   { map = "8,11", path = "top" },
   { map = "8,10", path = "right" },
   { map = "9,10", path = "right" },
   { map = "10,10", path = "bottom" },
   { map = "10,11", path = "bottom" },
   { map = "10,12", path = "right" },
   { map = "11,12", path = "top" },
   { map = "11,11", path = "top" },
   { map = "11,10", path = "top" },
   { map = "11,9", path = "left" },
   { map = "10,9", path = "left" },
   { map = "9,9", path = "left" },
   { map = "8,9", path = "left" },
   { map = "7,9", path = "left" },
   { map = "7,8", path = "top" },
   { map = "7,7", path = "left" },
   { map = "6,7", path = "left" },
   { map = "6,9", path = "left" },
   { map = "4,9", path = "left" },
   { map = "3,9", path = "top" },
   { map = "3,7", path = "top" },
   { map = "3,8", path = "top" },
   { map = "2,21", path = "left" },
   { map = "2,13", path = "left" },
   { map = "2,14", path = "left" },
   { map = "2,15", path = "left" },
   { map = "3,12", path = "top" },
   { map = "88081177", door = "216" }, --on rentre dans la banque
   { map = "99095051", custom = stockageAmakna},-- on depose les items
  }

 end
end
-- END-ENCODE --