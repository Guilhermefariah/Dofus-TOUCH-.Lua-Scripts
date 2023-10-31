                     -- Création d'un nouveau personnage SADI obligatoire! --
-- Importer une configuration du personnage dans snowbot grâce au fichier ci-joint dans le pack --
				    -- Lancer le trajet --
	      -- Forcer le bot en retour banque si vous souhaitez récupérer vos kamas --
				     




AUTO_DELETE = {10792, 10793, 10795, 10796,10801,10797, 10784, 10798, 10799, 10794, 10785, 10800, 881, 385, 1736, 884, 883, 395, 885, 304, 14672, 2419, 2422, 384, 882, 2419, 887, 2425, 2419, 14687, 2419, 2425}
OPEN_BAGS = true

IDItem1 = 1782 -- Goujon
IDItem2 = 598 -- Greuvette
IDItem3 = 1844 -- Truite
IDItem4 = 1757 -- Crabe Sourimi
IDItem5 = 603 -- Poisson-Chaton
IDItem6 = 1750 -- Poisson Pané
IDItem7 = 1794 -- Carpe d'Iem
IDItem8 = 1805 -- Sardine Brillante

function cellulebug()
global:delay(500)
map:moveToCell(155)
gather = true
end

function Selling()

  if character:kamas() > 299 and inventory:itemCount(IDItem1) > 99 then
        npc:npcSale()
  Priceitem = sale:getPriceItem(IDItem1, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem1) > 99) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem1, 99, Priceitem -1)
          end
           global:leaveDialog()
          global:printSuccess("[Vente]["..inventory:itemNameId(IDItem1).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]") 
     end
 end

  if character:kamas() > 299 and inventory:itemCount(IDItem2) > 99 then
        npc:npcSale()
  Priceitem = sale:getPriceItem(IDItem2, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem2) > 99) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem2, 100, Priceitem -1)
          end
           global:leaveDialog()
          global:printSuccess("[Vente]["..inventory:itemNameId(IDItem2).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
     end
 end

if character:kamas() > 299 and inventory:itemCount(IDItem3) > 99 then
        npc:npcSale()
  Priceitem = sale:getPriceItem(IDItem3, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem3) > 99) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem3, 100, Priceitem -1)
          end
           global:leaveDialog()
           global:printSuccess("[Vente]["..inventory:itemNameId(IDItem3).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
     end
 end

if character:kamas() > 299 and inventory:itemCount(IDItem4) > 99 then
        npc:npcSale()
  Priceitem = sale:getPriceItem(IDItem4, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem4) > 99) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem4, 100, Priceitem -1)
          end
           global:leaveDialog()
          global:printSuccess("[Vente]["..inventory:itemNameId(IDItem4).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
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
           global:printSuccess("[Vente]["..inventory:itemNameId(IDItem5).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
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
           global:printSuccess("[Vente]["..inventory:itemNameId(IDItem6).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
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
           global:printSuccess("[Vente]["..inventory:itemNameId(IDItem7).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
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
           global:printSuccess("[Vente]["..inventory:itemNameId(IDItem8).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
     end
 end
end

function saveZaapAstrub()
	map:useById(509434,-2)
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
    global:leaveDialog() 
    tpastrub()
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

function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 10, 3000)
    global:printSuccess("Popo rappel")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilisée")
end

function learnJob()
        npc:npc(849, 3)
	global:delay(2500)
        npc:reply(-1)
	global:delay(2500)
        npc:reply(-2) 
	global:delay(2500)
	npc:reply(-1)
	global:delay(2500)
	npc:leaveDialog()
	inventory:equipItem(8541, 1)
	global:printSuccess("canne à pêche équipée")
end


function move()
	Selling()

  if character:level() < 20 then
	combatastrub = true
	gopecher = false
	gobanqueastrub = false
  end

  if character:level() > 19 and character:kamas() < 300 then
	gobanqueastrub = true
	combatastrub = false
	gopecher = false	
  end

 if character:level() > 19 and character:kamas() > 299 then
        gopecher = true
	gobanqueastrub = false
	combatastrub = false	
  end
  
  if combatastrub then
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
			MAX_MONSTERS = 1
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
			{ map = "3,-19", path = "left", fight = true },
  			{ map = "2,-19", path = "left", fight = true }, --combatastrub
  			{ map = "1,-19", path = "left", fight = true },
			{ map = "0,-19", path = "top", fight = true },
   			{ map = "0,-21", path = "right", fight = true },
   			{ map = "1,-21", path = "right", fight = true },
   			{ map = "2,-21", path = "right", fight = true },
   			{ map = "3,-21", path = "right", fight = true },
   			{ map = "4,-21", path = "right", fight = true },
   			{ map = "5,-21", path = "bottom", fight = true },
   			{ map = "5,-20", path = "left", fight = true },
   			{ map = "4,-20", path = "left", fight = true },
   			{ map = "3,-20", path = "left", fight = true },
   			{ map = "2,-20", path = "left", fight = true },
   			{ map = "1,-20", path = "left", fight = true },
   			{ map = "0,-20", path = "top|left", fight = true },
   			{ map = "-1,-20", path = "bottom", fight = true },
   			{ map = "-1,-19", path = "bottom", fight = true },
   			{ map = "0,-18", path = "right", fight = true },
   			{ map = "1,-18", path = "right", fight = true },
   			{ map = "2,-18", path = "right", fight = true },
   			{ map = "4,-18", path = "right", fight = true },
   			{ map = "5,-18", path = "right", fight = true },
   			{ map = "6,-18", path = "bottom", fight = true },
   			{ map = "6,-17", path = "left", fight = true },
   			{ map = "5,-17", path = "left", fight = true },
   			{ map = "4,-17", path = "left", fight = true },
   			{ map = "3,-17", path = "left", fight = true },
   			{ map = "2,-17", path = "left", fight = true },
   			{ map = "1,-17", path = "left", fight = true },
   			{ map = "0,-17", path = "left", fight = true },
   			{ map = "-1,-17", path = "top", fight = true },
   			{ map = "-1,-18", path = "right", fight = true },
   			{ map = "3,-18", path = "top|right", fight = true },
			}
  end

    if gopecher then
	return {
   { map = "-1,-14", path = "top" },
   { map = "0,-14", path = "top" },
   { map = "1,-14", path = "top" },
   { map = "2,-14", path = "top" },
   { map = "3,-14", path = "top" },
   { map = "4,-14", path = "top" },
   { map = "5,-15", path = "top" },
   { map = "6,-15", path = "top" },
   { map = "7,-15", path = "top" },
   { map = "4,-15", path = "top" },
   { map = "4,-16", path = "top" },
   { map = "4,-17", path = "top" },
   { map = "4,-18", path = "top" },
   { map = "3,-15", path = "top" },
   { map = "3,-16", path = "top" },
   { map = "1,-15", path = "top" },
   { map = "2,-15", path = "top" },
   { map = "2,-16", path = "top" },
   { map = "1,-16", path = "top" },
   { map = "0,-15", path = "top" },
   { map = "0,-16", path = "top" },
   { map = "-1,-15", path = "top" },
   { map = "-1,-16", path = "top" },
   { map = "6,-16", path = "top" },
   { map = "7,-16", path = "top" },
   { map = "7,-17", path = "top" },
   { map = "6,-17", path = "top" },
   { map = "5,-17", path = "top" },
   { map = "7,-18", path = "left" },
   { map = "6,-18", path = "left" },
   { map = "5,-18", path = "left" },
   { map = "7,-20", path = "left" },
   { map = "6,-20", path = "left" },
   { map = "5,-20", path = "left" },
   { map = "7,-21", path = "left" },
   { map = "6,-21", path = "left" },
   { map = "5,-21", path = "left" },
   { map = "5,-22", path = "left" },
   { map = "-1,-22", path = "right" },
   { map = "0,-22", path = "right" },
   { map = "1,-22", path = "right" },
   { map = "2,-22", path = "right" },
   { map = "3,-22", path = "right" },
   { map = "-1,-21", path = "right" },
   { map = "0,-21", path = "right" },
   { map = "1,-21", path = "right" },
   { map = "2,-21", path = "right" },
   { map = "3,-21", path = "right" },
   { map = "-1,-20", path = "right" },
   { map = "0,-20", path = "right" },
   { map = "1,-20", path = "right" },
   { map = "2,-20", path = "right" },
   { map = "3,-20", path = "right" },
   { map = "-1,-19", path = "right" },
   { map = "0,-19", path = "right" },
   { map = "1,-19", path = "right" },
   { map = "2,-19", path = "right" },
   { map = "3,-19", path = "right" },
   { map = "2,-18", path = "right" },
   { map = "0,-18", path = "right" },
   { map = "-1,-18", path = "right" },
   { map = "-1,-17", path = "right" },
   { map = "0,-17", path = "right" },
   { map = "1,-17", path = "right" },
   { map = "2,-17", path = "right" },
   { map = "3,-17", path = "right" },
   { map = "4,-22", path = "bottom" },
   { map = "4,-21", path = "bottom" },
   { map = "4,-20", path = "bottom" },
   { map = "3,-18", path = "right" },
   { map = "5,-16", path = "top" },
   { map = "4,-19", custom = saveZaapAstrub, path = "right" },
   { map = "5,-19", path = "right" },
   { map = "6,-19", path = "right" },
   { map = "7,-19", path = "right" },
   { map = "8,-19", path = "right" },
   { map = "9,-19", path = "right" },
   { map = "10,-19", path = "right" },
   { map = "11,-19", path = "right" },
   { map = "12,-19", path = "bottom", gather = true },
   { map = "12,-18", path = "bottom", gather = true },
   { map = "12,-17", path = "bottom", gather = true },
   { map = "12,-16", path = "bottom", gather = true },
   { map = "11,-15", path = "bottom", gather = true },
   { map = "11,-14", path = "bottom", gather = true },
   { map = "12,-15", path = "left", gather = true },
   { map = "11,-13", path = "bottom", gather = true },
   { map = "11,-12", path = "bottom", gather = true },
   { map = "11,-11", path = "left", gather = true },
   { map = "10,-11", path = "bottom", gather = true },
   { map = "10,-10", path = "left", gather = true },
   { map = "9,-10", path = "bottom", gather = true },
   { map = "9,-9", path = "left", gather = true },
   { map = "8,-8", path = "top", gather = true },
   { map = "8,-9", path = "left", gather = true },
   { map = "7,-9", path = "left", gather = true },
   { map = "6,-9", path = "left", gather = true },
   { map = "5,-9", path = "left", gather = true },
   { map = "4,-9", path = "bottom" },
   { map = "4,-8", path = "bottom" },
   { map = "4,-7", path = "bottom" },
   { map = "4,-6", path = "bottom" },
   { map = "4,-5", path = "bottom" },
   { map = "4,-4", path = "bottom" },
   { map = "4,-3", path = "bottom" },
   { map = "4,-2", path = "right" },
   { map = "5,-2", path = "right", gather = true },
   { map = "6,-2", path = "right", gather = true },
   { map = "7,-2", path = "top" },
   { map = "7,-3", path = "right", gather = true },
   { map = "8,-3", path = "right", gather = true },
   { map = "9,-3", path = "right", gather = true },
   { map = "10,-3", path = "right", gather = true },
   { map = "11,-3", path = "right", gather = true },
   { map = "12,-3", path = "bottom", gather = true },
   { map = "12,-2", path = "right", gather = true },
   { map = "13,-2", path = "bottom", gather = true },
   { map = "13,-1", path = "left", gather = true },
   { map = "12,-1", path = "bottom", gather = true },
   { map = "12,0", path = "right", gather = true },
   { map = "13,0", path = "bottom", gather = true },
   { map = "13,1", path = "left", gather = true },
   { map = "12,1", path = "bottom", gather = true },
   { map = "12,2", path = "left", gather = true },
   { map = "11,2", path = "left", gather = true },
   { map = "10,2", path = "top", gather = true },
   { map = "10,1", path = "left(364)", gather = true },
   { map = "9,1", path = "bottom", gather = true },
   { map = "9,2", path = "bottom", gather = true },
   { map = "9,3", path = "right", gather = true },
   { map = "10,3", path = "right", gather = true },
   { map = "11,3", path = "right", gather = true },
   { map = "12,3", path = "bottom", gather = true },
   { map = "12,4", path = "right", gather = true },
   { map = "13,4", path = "bottom", gather = true },
   { map = "13,5", path = "bottom", gather = true },
   { map = "13,6", path = "bottom", gather = true },
   { map = "13,7", path = "bottom", gather = true },
   { map = "13,8", path = "left", gather = true },
   { map = "12,8", path = "bottom", gather = true },
   { map = "12,9", path = "left", gather = true },
   { map = "11,9", path = "left" },
   { map = "10,9", path = "bottom" },
   { map = "10,10", path = "bottom" },
   { map = "10,11", path = "bottom" },
   { map = "9,12", path = "bottom", gather = true },
   { map = "8,13", path = "bottom", gather = true },
   { map = "10,12", path = "left", gather = true },
   { map = "9,13", path = "left", gather = true },
   { map = "8,14", path = "left", gather = true },
   { map = "7,14", path = "bottom", gather = true },
   { map = "7,15", path = "bottom", gather = true },
   { map = "7,16", path = "bottom", gather = true },
   { map = "7,17", path = "bottom", gather = true },
   { map = "7,18", path = "right", gather = true },
   { map = "8,18", path = "bottom", gather = true },
   { map = "8,19", path = "right", gather = true },
   { map = "10,19", path = "bottom", gather = true },
   { map = "9,19", path = "right", gather = true },
   { map = "10,20", path = "bottom", gather = true },
   { map = "10,21", path = "bottom", gather = true },
   { map = "10,22", path = "left", gather = true },
   { map = "9,22", path = "left", gather = true },
   { map = "8,22", path = "left", gather = true },
   { map = "7,22", path = "bottom", gather = true },
   { map = "7,23", path = "left", gather = true },
   { map = "6,23", path = "left", gather = true },
   { map = "5,23", path = "left", gather = true },
   { map = "4,23", path = "bottom", gather = true },
   { map = "4,24", path = "bottom", gather = true },
   { map = "4,25", path = "bottom", gather = true },
   { map = "4,26", path = "left", gather = true },
   { map = "3,26", path = "left", gather = true },
   { map = "2,26", path = "left", gather = true },
   { map = "1,26", path = "left", gather = true },
   { map = "0,26", path = "bottom", gather = true },
   { map = "0,27", path = "bottom", gather = true },
   { map = "0,28", path = "bottom", gather = true },
   { map = "0,29", path = "bottom", gather = true },
   { map = "0,30", path = "right", gather = true },
   { map = "1,30", path = "bottom", gather = true },
   { map = "1,31", path = "right", gather = true },
   { map = "2,31", path = "bottom", gather = true },
   { map = "2,32", path = "right", gather = true },
   { map = "3,32", path = "right", gather = true },
   { map = "4,32", path = "right", gather = true },
   { map = "5,32", path = "top", gather = true },
   { map = "5,31", path = "top", gather = true },
   { map = "5,30", path = "top", gather = true },
   { map = "5,29", path = "top", gather = true },
   { map = "5,28", path = "right", gather = true },
   { map = "6,28", path = "right", gather = true },
   { map = "7,28", path = "bottom", gather = true },
   { map = "7,29", path = "right", gather = true },
   { map = "8,29", path = "right", gather = true },
   { map = "9,29", path = "bottom", gather = true },
   { map = "9,30", path = "right", gather = true },
   { map = "10,30", path = "top", gather = true },
   { map = "10,29", path = "right", gather = true },
   { map = "11,29", path = "right", gather = true },
   { map = "12,29", path = "right", gather = true },
   { map = "14,29", path = "top", gather = true },
   { map = "13,29", path = "right", gather = true },
   { map = "14,28", path = "right", gather = true },
   { map = "15,28", path = "top", gather = true },
   { map = "15,27", path = "right", gather = true },
   { map = "16,27", path = "top", gather = true },
   { map = "16,26", path = "right", gather = true },
   { map = "17,26", custom = cellulebug, path = "top(6)" },
   { map = "17,25", path = "right", gather = true },
   { map = "18,25", path = "right", gather = true },
   { map = "19,25", path = "right", gather = true },
   { map = "20,25", path = "top", gather = true },
   { map = "20,24", path = "left", gather = true },
   { map = "19,24", path = "left", gather = true },
   { map = "18,24", path = "left", gather = true },
   { map = "17,24", path = "left", gather = true },
   { map = "16,24", path = "left", gather = true },
   { map = "15,24", path = "top", gather = true },
   { map = "15,23", path = "right", gather = true },
   { map = "16,23", path = "top", gather = true },
   { map = "16,22", path = "left", gather = true },
   { map = "15,22", custom = tpastrub },
	  }
    end

    if gobanqueastrub then
return {
   { map = "5,-19", custom = tpastrub },
   { map = "6,-19", custom = tpastrub },
   { map = "7,-19", custom = tpastrub },
   { map = "8,-19", custom = tpastrub },
   { map = "9,-19", custom = tpastrub },
   { map = "10,-19", custom = tpastrub },
   { map = "11,-19", custom = tpastrub },
   { map = "12,-19", custom = tpastrub },
   { map = "12,-18", custom = tpastrub },
   { map = "12,-17", custom = tpastrub },
   { map = "12,-16", custom = tpastrub },
   { map = "11,-15", custom = tpastrub },
   { map = "11,-14", custom = tpastrub },
   { map = "12,-15", custom = tpastrub },
   { map = "11,-13", custom = tpastrub },
   { map = "11,-12", custom = tpastrub },
   { map = "11,-11", custom = tpastrub },
   { map = "10,-11", custom = tpastrub },
   { map = "10,-10", custom = tpastrub },
   { map = "9,-10", custom = tpastrub },
   { map = "9,-9", custom = tpastrub },
   { map = "8,-8", custom = tpastrub },
   { map = "8,-9", custom = tpastrub },
   { map = "7,-9", custom = tpastrub },
   { map = "6,-9", custom = tpastrub },
   { map = "5,-9", custom = tpastrub },
   { map = "4,-9", custom = tpastrub },
   { map = "4,-8", custom = tpastrub },
   { map = "4,-7", custom = tpastrub },
   { map = "4,-6", custom = tpastrub },
   { map = "4,-5", custom = tpastrub },
   { map = "4,-4", custom = tpastrub },
   { map = "4,-3", custom = tpastrub },
   { map = "4,-2", custom = tpastrub },
   { map = "5,-2", custom = tpastrub },
   { map = "6,-2", custom = tpastrub },
   { map = "7,-2", custom = tpastrub },
   { map = "7,-3", custom = tpastrub },
   { map = "8,-3", custom = tpastrub },
   { map = "9,-3", custom = tpastrub },
   { map = "10,-3", custom = tpastrub },
   { map = "11,-3", custom = tpastrub },
   { map = "12,-3", custom = tpastrub },
   { map = "12,-2", custom = tpastrub },
   { map = "13,-2", custom = tpastrub },
   { map = "13,-1", custom = tpastrub },
   { map = "12,-1", custom = tpastrub },
   { map = "12,0", custom = tpastrub },
   { map = "13,0", custom = tpastrub },
   { map = "13,1", custom = tpastrub },
   { map = "12,1", custom = tpastrub },
   { map = "12,2", custom = tpastrub },
   { map = "11,2", custom = tpastrub },
   { map = "10,2", custom = tpastrub },
   { map = "10,1", custom = tpastrub },
   { map = "9,1", custom = tpastrub },
   { map = "9,2", custom = tpastrub },
   { map = "9,3", custom = tpastrub },
   { map = "10,3", custom = tpastrub },
   { map = "11,3", custom = tpastrub },
   { map = "12,3", custom = tpastrub },
   { map = "12,4", custom = tpastrub },
   { map = "13,4", custom = tpastrub },
   { map = "13,5", custom = tpastrub },
   { map = "13,6", custom = tpastrub },
   { map = "13,7", custom = tpastrub },
   { map = "13,8", custom = tpastrub },
   { map = "12,8", custom = tpastrub },
   { map = "12,9", custom = tpastrub },
   { map = "11,9", custom = tpastrub },
   { map = "10,9", custom = tpastrub },
   { map = "10,10", custom = tpastrub },
   { map = "10,11", custom = tpastrub },
   { map = "9,12", custom = tpastrub },
   { map = "8,13", custom = tpastrub },
   { map = "10,12", custom = tpastrub },
   { map = "9,13", custom = tpastrub },
   { map = "8,14", custom = tpastrub },
   { map = "7,14", custom = tpastrub },
   { map = "7,15", custom = tpastrub },
   { map = "7,16", custom = tpastrub },
   { map = "7,17", custom = tpastrub },
   { map = "7,18", custom = tpastrub },
   { map = "8,18", custom = tpastrub },
   { map = "8,19", custom = tpastrub },
   { map = "10,19", custom = tpastrub },
   { map = "9,19", custom = tpastrub },
   { map = "10,20", custom = tpastrub },
   { map = "10,21", custom = tpastrub },
   { map = "10,22", custom = tpastrub },
   { map = "9,22", custom = tpastrub },
   { map = "8,22", custom = tpastrub },
   { map = "7,22", custom = tpastrub },
   { map = "7,23", custom = tpastrub },
   { map = "6,23", custom = tpastrub },
   { map = "5,23", custom = tpastrub },
   { map = "4,23", custom = tpastrub },
   { map = "4,24", custom = tpastrub },
   { map = "4,25", custom = tpastrub },
   { map = "4,26", custom = tpastrub },
   { map = "3,26", custom = tpastrub },
   { map = "2,26", custom = tpastrub },
   { map = "1,26", custom = tpastrub },
   { map = "0,26", custom = tpastrub },
   { map = "0,27", custom = tpastrub },
   { map = "0,28", custom = tpastrub },
   { map = "0,29", custom = tpastrub },
   { map = "0,30", custom = tpastrub },
   { map = "1,30", custom = tpastrub },
   { map = "1,31", custom = tpastrub },
   { map = "2,31", custom = tpastrub },
   { map = "2,32", custom = tpastrub },
   { map = "3,32", custom = tpastrub },
   { map = "4,32", custom = tpastrub },
   { map = "5,32", custom = tpastrub },
   { map = "5,31", custom = tpastrub },
   { map = "5,30", custom = tpastrub },
   { map = "5,29", custom = tpastrub },
   { map = "5,28", custom = tpastrub },
   { map = "6,28", custom = tpastrub },
   { map = "7,28", custom = tpastrub },
   { map = "7,29", custom = tpastrub },
   { map = "8,29", custom = tpastrub },
   { map = "9,29", custom = tpastrub },
   { map = "9,30", custom = tpastrub },
   { map = "10,30", custom = tpastrub },
   { map = "10,29", custom = tpastrub },
   { map = "11,29", custom = tpastrub },
   { map = "12,29", custom = tpastrub },
   { map = "14,29", custom = tpastrub },
   { map = "13,29", custom = tpastrub },
   { map = "14,28", custom = tpastrub },
   { map = "15,28", custom = tpastrub },
   { map = "15,27", custom = tpastrub },
   { map = "16,27", custom = tpastrub },
   { map = "16,26", custom = tpastrub },
   { map = "17,26", custom = tpastrub },
   { map = "17,25", custom = tpastrub },
   { map = "18,25", custom = tpastrub },
   { map = "19,25", custom = tpastrub },
   { map = "20,25", custom = tpastrub },
   { map = "20,24", custom = tpastrub },
   { map = "19,24", custom = tpastrub },
   { map = "18,24", custom = tpastrub },
   { map = "17,24", custom = tpastrub },
   { map = "16,24", custom = tpastrub },
   { map = "15,24", custom = tpastrub },
   { map = "15,23", custom = tpastrub },
   { map = "16,23", custom = tpastrub },
   { map = "16,22", custom = tpastrub },
   { map = "15,22", custom = tpastrub },
   { map = "4,-19", path = "bottom" },
   { map = "4,-18", path = "bottom" },
   { map = "4,-17", path = "bottom" }, 
   { map = "84674566", door = "303" },
   { map = "83887104", custom = prendreKamasAstrub },
	}
    end
end

function bank()
return {
   { map = "5,-19", custom = tpastrub },
   { map = "6,-19", custom = tpastrub },
   { map = "7,-19", custom = tpastrub },
   { map = "8,-19", custom = tpastrub },
   { map = "9,-19", custom = tpastrub },
   { map = "10,-19", custom = tpastrub },
   { map = "11,-19", custom = tpastrub },
   { map = "12,-19", custom = tpastrub },
   { map = "12,-18", custom = tpastrub },
   { map = "12,-17", custom = tpastrub },
   { map = "12,-16", custom = tpastrub },
   { map = "11,-15", custom = tpastrub },
   { map = "11,-14", custom = tpastrub },
   { map = "12,-15", custom = tpastrub },
   { map = "11,-13", custom = tpastrub },
   { map = "11,-12", custom = tpastrub },
   { map = "11,-11", custom = tpastrub },
   { map = "10,-11", custom = tpastrub },
   { map = "10,-10", custom = tpastrub },
   { map = "9,-10", custom = tpastrub },
   { map = "9,-9", custom = tpastrub },
   { map = "4,-9", custom = tpastrub },
   { map = "4,-8", custom = tpastrub },
   { map = "4,-7", custom = tpastrub },
   { map = "4,-6", custom = tpastrub },
   { map = "4,-5", custom = tpastrub },
   { map = "4,-4", custom = tpastrub },
   { map = "4,-3", custom = tpastrub },
   { map = "4,-2", custom = tpastrub },
   { map = "5,-2", custom = tpastrub },
   { map = "6,-2", custom = tpastrub },
   { map = "7,-2", custom = tpastrub },
   { map = "7,-3", custom = tpastrub },
   { map = "8,-3", custom = tpastrub },
   { map = "9,-3", custom = tpastrub },
   { map = "10,-3", custom = tpastrub },
   { map = "11,-3", custom = tpastrub },
   { map = "12,-3", custom = tpastrub },
   { map = "12,-2", custom = tpastrub },
   { map = "13,-2", custom = tpastrub },
   { map = "13,-1", custom = tpastrub },
   { map = "12,-1", custom = tpastrub },
   { map = "12,0", custom = tpastrub },
   { map = "13,0", custom = tpastrub },
   { map = "13,1", custom = tpastrub },
   { map = "12,1", custom = tpastrub },
   { map = "12,2", custom = tpastrub },
   { map = "11,2", custom = tpastrub },
   { map = "10,2", custom = tpastrub },
   { map = "10,1", custom = tpastrub },
   { map = "9,1", custom = tpastrub },
   { map = "9,2", custom = tpastrub },
   { map = "9,3", custom = tpastrub },
   { map = "10,3", custom = tpastrub },
   { map = "11,3", custom = tpastrub },
   { map = "12,3", custom = tpastrub },
   { map = "12,4", custom = tpastrub },
   { map = "13,4", custom = tpastrub },
   { map = "13,5", custom = tpastrub },
   { map = "13,6", custom = tpastrub },
   { map = "13,7", custom = tpastrub },
   { map = "13,8", custom = tpastrub },
   { map = "12,8", custom = tpastrub },
   { map = "12,9", custom = tpastrub },
   { map = "11,9", custom = tpastrub },
   { map = "10,9", custom = tpastrub },
   { map = "10,10", custom = tpastrub },
   { map = "10,11", custom = tpastrub },
   { map = "9,12", custom = tpastrub },
   { map = "8,13", custom = tpastrub },
   { map = "10,12", custom = tpastrub },
   { map = "9,13", custom = tpastrub },
   { map = "8,14", custom = tpastrub },
   { map = "7,14", custom = tpastrub },
   { map = "7,15", custom = tpastrub },
   { map = "7,16", custom = tpastrub },
   { map = "7,17", custom = tpastrub },
   { map = "7,18", custom = tpastrub },
   { map = "8,18", custom = tpastrub },
   { map = "8,19", custom = tpastrub },
   { map = "10,19", custom = tpastrub },
   { map = "9,19", custom = tpastrub },
   { map = "10,20", custom = tpastrub },
   { map = "10,21", custom = tpastrub },
   { map = "10,22", custom = tpastrub },
   { map = "9,22", custom = tpastrub },
   { map = "8,22", custom = tpastrub },
   { map = "7,22", custom = tpastrub },
   { map = "7,23", custom = tpastrub },
   { map = "6,23", custom = tpastrub },
   { map = "5,23", custom = tpastrub },
   { map = "4,23", custom = tpastrub },
   { map = "4,24", custom = tpastrub },
   { map = "4,25", custom = tpastrub },
   { map = "4,26", custom = tpastrub },
   { map = "3,26", custom = tpastrub },
   { map = "2,26", custom = tpastrub },
   { map = "1,26", custom = tpastrub },
   { map = "0,26", custom = tpastrub },
   { map = "0,27", custom = tpastrub },
   { map = "0,28", custom = tpastrub },
   { map = "0,29", custom = tpastrub },
   { map = "0,30", custom = tpastrub },
   { map = "1,30", custom = tpastrub },
   { map = "1,31", custom = tpastrub },
   { map = "2,31", custom = tpastrub },
   { map = "2,32", custom = tpastrub },
   { map = "3,32", custom = tpastrub },
   { map = "4,32", custom = tpastrub },
   { map = "5,32", custom = tpastrub },
   { map = "5,31", custom = tpastrub },
   { map = "5,30", custom = tpastrub },
   { map = "5,29", custom = tpastrub },
   { map = "5,28", custom = tpastrub },
   { map = "6,28", custom = tpastrub },
   { map = "7,28", custom = tpastrub },
   { map = "7,29", custom = tpastrub },
   { map = "8,29", custom = tpastrub },
   { map = "9,29", custom = tpastrub },
   { map = "9,30", custom = tpastrub },
   { map = "10,30", custom = tpastrub },
   { map = "10,29", custom = tpastrub },
   { map = "11,29", custom = tpastrub },
   { map = "12,29", custom = tpastrub },
   { map = "14,29", custom = tpastrub },
   { map = "13,29", custom = tpastrub },
   { map = "14,28", custom = tpastrub },
   { map = "15,28", custom = tpastrub },
   { map = "15,27", custom = tpastrub },
   { map = "16,27", custom = tpastrub },
   { map = "16,26", custom = tpastrub },
   { map = "17,26", custom = tpastrub },
   { map = "17,25", custom = tpastrub },
   { map = "18,25", custom = tpastrub },
   { map = "19,25", custom = tpastrub },
   { map = "20,25", custom = tpastrub },
   { map = "20,24", custom = tpastrub },
   { map = "19,24", custom = tpastrub },
   { map = "18,24", custom = tpastrub },
   { map = "17,24", custom = tpastrub },
   { map = "16,24", custom = tpastrub },
   { map = "15,24", custom = tpastrub },
   { map = "15,23", custom = tpastrub },
   { map = "16,23", custom = tpastrub },
   { map = "16,22", custom = tpastrub },
   { map = "15,22", custom = tpastrub },
   { map = "4,-19", path = "bottom" },
   { map = "4,-18", path = "bottom" },
   { map = "4,-17", path = "bottom" }, 
   { map = "84674566", door = "303" },
   { map = "83887104", custom = prendreKamasAstrub },
	}
end