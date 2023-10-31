MIN_MONSTERS = 4
MAX_MONSTERS = 4
OPEN_BAGS = true 

IDItem1 = 1978
IDItem2 = 11243
IDItem3 = 11239
IDItem4 = 11248
IDItem5 = 11247
IDItem6 = 11240

function decoMaxCombat()
    if global:maxFightsPerDay() == true then
        global:disconnect()
    end
end

function selling()
  if inventory:itemCount(IDItem1) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem1, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem1) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem1, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem1).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem1) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
  
  if inventory:itemCount(IDItem2) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem2, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem2) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem2, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem2).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem2) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
  
  if inventory:itemCount(IDItem3) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem3, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem3) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem3, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem3).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem3) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
  
  if inventory:itemCount(IDItem4) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem4, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem4) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem4, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem4).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem4) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
  
  if inventory:itemCount(IDItem5) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem5, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem5) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem5, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem5).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem5) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
  
  if inventory:itemCount(IDItem6) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem6, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem6) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem6, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem6).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem6) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
end



function move()
  selling()
  decoMaxCombat()
  return {
   { map = "-78,-41", path = "top" },
   { map = "-78,-42", path = "top" },
   { map = "-78,-43", path = "top" },
   { map = "-78,-44", path = "top" },
   { map = "-78,-45", path = "top" },
   { map = "-78,-46", path = "right" },
   { map = "-77,-46", path = "right" },
   { map = "-76,-46", path = "top" },
   { map = "-76,-47", path = "top" },
   { map = "-76,-48", path = "top" },
   { map = "-76,-49", path = "right", fight = true },
   { map = "-69,-58", path = "right", fight = true },
   { map = "-69,-57", path = "top|bottom", fight = true },
   { map = "-69,-56", path = "top|bottom", fight = true },
   { map = "-69,-55", path = "top|bottom", fight = true },
   { map = "-70,-54", path = "left|right", fight = true },
   { map = "-72,-53", path = "left|right", fight = true },
   { map = "-73,-52", path = "top|bottom", fight = true },
   { map = "-73,-51", path = "top|bottom", fight = true },
   { map = "-73,-50", path = "top|bottom", fight = true },
   { map = "-73,-49", path = "top|left", fight = true },
   { map = "-74,-49", path = "left|right", fight = true },
   { map = "-75,-49", path = "left|right", fight = true },
   { map = "-73,-53", path = "right|bottom", fight = true },
   { map = "-71,-53", path = "top|left", fight = true },
   { map = "-71,-54", path = "right", fight = true },
   { map = "-69,-54", path = "top|left", fight = true },
   { map = "-68,-58", path = "top|left|right|bottom", fight = true },
   { map = "-68,-57", path = "top|left|right|bottom", fight = true },
   { map = "-66,-59", path = "top|left|right|bottom", fight = true },
   { map = "-66,-60", path = "top|left|right|bottom", fight = true },
   { map = "-67,-60", path = "top|left|right|bottom", fight = true },
   { map = "-66,-61", path = "top|left|right|bottom", fight = true },
   { map = "-66,-58", path = "top|left", fight = true },
   { map = "-67,-57", path = "top|left", fight = true },
   { map = "-65,-59", path = "top|left", fight = true },
   { map = "-68,-56", path = "top|left", fight = true },
   { map = "-68,-59", path = "top|right|bottom", fight = true },
   { map = "-68,-60", path = "right|bottom", fight = true },
   { map = "-67,-61", path = "right|bottom", fight = true },
   { map = "-66,-62", path = "right|bottom", fight = true },
   { map = "-65,-62", path = "bottom", fight = true },
   { map = "-65,-61", path = "bottom", fight = true },
   { map = "-65,-60", path = "top|left|bottom", fight = true },
   { map = "-67,-59", path = "top|left|right|bottom", fight = true },
   { map = "-67,-58", path = "top|left|right|bottom", fight = true },
  }
end


function bank()
  return {
  }
end
