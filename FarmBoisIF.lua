--======Paramètres======--
OPEN_BAGS = true
AUTO_DELETE = {10792,10793,10795,10796,10801,8545,10797,10784,10798,10799,10794,10785,10800,6897,8230,287,1734,6902,8213,8217,2475,6900,761,1975,6899,854}
IDItem1 = 303 --Frêne              -Lv. 0
IDItem2 = 473 --Chataigner         -Lv. 10
IDItem3 = 476 --Noyer              -Lv. 20
IDItem4 = 471 --Erable             -Lv. 30
IDItem5 = 460 --Chene              -Lv. 40
IDItem6 = 461 --If                 -Lv. 50
IDItem7 = 474 --Merisier           -Lv. 60

--======================--

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
       global:printSuccess("[Vente]["..inventory:itemNameId(IDItem1).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
   end
  end

  if inventory:itemCount(IDItem2) > 100  and character:kamas() > 300 then
  npc:npcSale()

  Priceitem = sale:getPriceItem(IDItem2, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem2) > 100) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem2, 100, Priceitem -1)
          end
           global:leaveDialog()
       global:printSuccess("[Vente]["..inventory:itemNameId(IDItem2).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
   end
  end

  if inventory:itemCount(IDItem3) > 100  and character:kamas() > 300 then
  npc:npcSale()

  Priceitem = sale:getPriceItem(IDItem3, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem3) > 100) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem3, 100, Priceitem -1)
          end
           global:leaveDialog()
      global:printSuccess("[Vente]["..inventory:itemNameId(IDItem3).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")

   end
  end

  if inventory:itemCount(IDItem4) > 100  and character:kamas() > 300 then
  npc:npcSale()

  Priceitem = sale:getPriceItem(IDItem4, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem4) > 100) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem4, 100, Priceitem -1)
          end
           global:leaveDialog()
       global:printSuccess("[Vente]["..inventory:itemNameId(IDItem4).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
   end
  end

  if inventory:itemCount(IDItem5) > 100  and character:kamas() > 300 then
  npc:npcSale()

  Priceitem = sale:getPriceItem(IDItem5, 3)
      if Priceitem > 1 then 
          while (inventory:itemCount(IDItem5) > 100) and (sale:availableSpace() > 0) do 
                sale:sellItem(IDItem5, 100, Priceitem -1)
          end
           global:leaveDialog()
       global:printSuccess("[Vente]["..inventory:itemNameId(IDItem5).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
   end
  end

  if inventory:itemCount(IDItem6) > 100  and character:kamas() > 300 then
    npc:npcSale()
  
    Priceitem = sale:getPriceItem(IDItem6, 3)
        if Priceitem > 1 then 
            while (inventory:itemCount(IDItem6) > 100) and (sale:availableSpace() > 0) do 
                  sale:sellItem(IDItem6, 100, Priceitem -1)
            end
             global:leaveDialog()
         global:printSuccess("[Vente]["..inventory:itemNameId(IDItem6).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
     end
    end

    if inventory:itemCount(IDItem7) > 100  and character:kamas() > 300 then
        npc:npcSale()
      
        Priceitem = sale:getPriceItem(IDItem7, 3)
            if Priceitem > 1 then 
                while (inventory:itemCount(IDItem7) > 100) and (sale:availableSpace() > 0) do 
                      sale:sellItem(IDItem7, 100, Priceitem -1)
                end
                 global:leaveDialog()
             global:printSuccess("[Vente]["..inventory:itemNameId(IDItem7).."] Mise en vente x100 au prix de ["..Priceitem.." Kamas]")
         end
        end
end

function move()
  selling()
  return {
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
   { map = "123456", path = "" },     -- même coordonées que dans la banque, on remplace par la mapid de la map pour eviter le conflit


   -- action banque interieur
   { map = "123456", path = "123" },
  }
end


function bank()
  return {
   { map = "-26,-56", path = "left|right" },
   { map = "-25,-56", path = "left|right" },
   { map = "-22,-56", path = "left|right" },
   { map = "-21,-56", path = "left|right" },
   { map = "-23,-56", path = "left|right" },
   { map = "-24,-56", path = "left|right" },
   { map = "-30,-54", path = "left|right" },
   { map = "-29,-54", path = "left|right" },
   { map = "-28,-54", path = "left|right" },
   { map = "-27,-55", path = "top|bottom" },
   { map = "-27,-54", path = "left" },
   { map = "-27,-56", path = "right" },


   -- actions banque interieur & exterieur
   { map = "123456", npcBank = true, path = "123" },
   { map = "123456", door = "123" },
  }
end
