MIN_MONSTERS = 4
MAX_MONSTERS = 4

OPEN_BAGS = true -- Autorização abrir inventário 

IDItem1 = 2267 -- Dragon Milk
IDItem4 = 1730 -- Salt measure - medida de sal

function Selling()

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

end

function decoMaxCombat()
    if global:maxFightsPerDay() == true then
        global:disconnect()
    end
end

function prendreKamasAstrub()
    npc:npcBank(-1)
    global:delay(400)
    exchange:putAllItemsExchange()
    global:delay(400)
    kamas = exchange:storageKamas()
    exchange:getKamas(kamas) 
    global:printSuccess("[Banco] : " .. kamas .. " Kamas, porco capitalista, vamos continuar")
    npc:leaveDialog()
    global:delay(300)
    npc:npcSale()
    global:delay(300)
    global:leaveDialog() 
    tpastrub()
end

function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 10, 3000)
    global:printSuccess("Poção de lembrança")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilizada")
end

function alone()
	tpastrub()
	return {
    { map = "4,-19", path = "zaap(88212481)" },
	}
    end

function move()
		 decoMaxCombat()
		 Selling()
return {
 
   { map = "-81,-46", custom = tpastrub },
    --- Início nos porkassos ---
   { map = "-7,-36", custom = tpastrub },
   { map = "-7,-19", custom = tpastrub },
   { map = "-5,-19", custom = tpastrub },
   { map = "-5,-25", custom = tpastrub },
   { map = "-3,-25", custom = tpastrub },
   { map = "-3,-26", custom = tpastrub },
   { map = "-2,-36", custom = tpastrub },
   { map = "-2,-33", custom = tpastrub },
   { map = "-7,-35", custom = tpastrub },
   { map = "-7,-34", custom = tpastrub },
   { map = "-7,-33", custom = tpastrub },
   { map = "-7,-32", custom = tpastrub },
   { map = "-7,-31", custom = tpastrub },
   { map = "-7,-29", custom = tpastrub },
   { map = "-7,-30", custom = tpastrub },
   { map = "-7,-28", custom = tpastrub },
   { map = "-7,-27", custom = tpastrub },
   { map = "-7,-26", custom = tpastrub },
   { map = "-7,-25", custom = tpastrub },
   { map = "-7,-24", custom = tpastrub },
   { map = "-7,-23", custom = tpastrub },
   { map = "-7,-22", custom = tpastrub },
   { map = "-7,-21", custom = tpastrub },
   { map = "-7,-20", custom = tpastrub },
   { map = "-6,-19", custom = tpastrub },
   { map = "-5,-20", custom = tpastrub },
   { map = "-5,-21", custom = tpastrub },
   { map = "-5,-23", custom = tpastrub },
   { map = "-5,-24", custom = tpastrub },
   { map = "-5,-22", custom = tpastrub },
   { map = "-4,-25", custom = tpastrub },
   { map = "-6,-23", custom = tpastrub },
   { map = "-3,-27", custom = tpastrub },
   { map = "-3,-28", custom = tpastrub },
   { map = "-3,-29", custom = tpastrub },
   { map = "-3,-30", custom = tpastrub },
   { map = "-4,-30", custom = tpastrub },
   { map = "-5,-32", custom = tpastrub },
   { map = "-5,-31", custom = tpastrub },
   { map = "-4,-33", custom = tpastrub },
   { map = "-6,-36", custom = tpastrub },
   { map = "-4,-36", custom = tpastrub },
   { map = "-5,-36", custom = tpastrub },
   { map = "-3,-36", custom = tpastrub },
   { map = "-2,-34", custom = tpastrub },
   { map = "-2,-35", custom = tpastrub },
   { map = "-6,-35", custom = tpastrub },
   { map = "-5,-35", custom = tpastrub },
   { map = "-4,-35", custom = tpastrub },
   { map = "-4,-34", custom = tpastrub },
   { map = "-5,-34", custom = tpastrub },
   { map = "-6,-33", custom = tpastrub },
   { map = "-6,-34", custom = tpastrub },
   { map = "-5,-33", custom = tpastrub },
   { map = "-3,-34", custom = tpastrub },
   { map = "-3,-35", custom = tpastrub },
   { map = "-3,-33", custom = tpastrub },
   { map = "-6,-32", custom = tpastrub },
   { map = "-6,-30", custom = tpastrub },
   { map = "-6,-31", custom = tpastrub },
   { map = "-5,-30", custom = tpastrub },
   { map = "-6,-29", custom = tpastrub },
   { map = "-5,-29", custom = tpastrub },
   { map = "-6,-28", custom = tpastrub },
   { map = "-5,-28", custom = tpastrub },
   { map = "-4,-28", custom = tpastrub },
   { map = "-4,-29", custom = tpastrub },
   { map = "-6,-27", custom = tpastrub },
   { map = "-6,-26", custom = tpastrub },
   { map = "-4,-27", custom = tpastrub },
   { map = "-4,-26", custom = tpastrub },
   { map = "-5,-27", custom = tpastrub },
   { map = "-5,-26", custom = tpastrub },
   { map = "-6,-25", custom = tpastrub },
   { map = "-6,-24", custom = tpastrub },
   { map = "-6,-22", custom = tpastrub },
   { map = "-6,-21", custom = tpastrub },
   { map = "-6,-20", custom = tpastrub },
   
   { map = "-78,-41", path = "zaap(88212481)" },
   { map = "4,-19", path = "zaap(88212481)" },
   { map = "-1,24", path = "right" },
   { map = "0,25", path = "bottom" },
   { map = "0,24", path = "bottom" },
   { map = "0,26", path = "bottom" },
   { map = "0,27", path = "bottom" },
   { map = "0,28", path = "bottom" },
   { map = "0,29", path = "bottom" },
   { map = "0,30", path = "bottom" },
   { map = "0,31", path = "right" },
   { map = "1,31", path = "bottom" },
   { map = "-2,31", path = "right|bottom", fight = true },
   { map = "0,31", path = "left|bottom", fight = true },
   { map = "1,32", path = "left|bottom", fight = true },
   { map = "1,33", path = "top|left|bottom", fight = true },
   { map = "1,34", path = "top|left", fight = true },
   { map = "-2,34", path = "top|right", fight = true },
   { map = "-2,32", path = "top|right|bottom", fight = true },
   { map = "-2,33", path = "top|right|bottom", fight = true },
   { map = "-1,31", path = "left|right|bottom", fight = true },
   { map = "-1,34", path = "top|left|right", fight = true },
   { map = "0,34", path = "top|left|right", fight = true },
   { map = "-1,32", path = "top|left|right|bottom", fight = true },
   { map = "0,32", path = "top|left|right|bottom", fight = true },
   { map = "0,33", path = "top|left|right|bottom", fight = true },
   { map = "-1,33", path = "top|left|right|bottom", fight = true },
  }
end

function bank()
return {
   { map = "-2,31", custom = tpastrub },
   { map = "0,31", custom = tpastrub },
   { map = "1,32", custom = tpastrub },
   { map = "1,33", custom = tpastrub },
   { map = "1,34", custom = tpastrub },
   { map = "-2,34", custom = tpastrub },
   { map = "-2,32", custom = tpastrub },
   { map = "-2,33", custom = tpastrub },
   { map = "-1,31", custom = tpastrub },
   { map = "-1,34", custom = tpastrub },
   { map = "0,34", custom = tpastrub },
   { map = "-1,32", custom = tpastrub },
   { map = "0,32", custom = tpastrub },
   { map = "0,33", custom = tpastrub },
   { map = "-1,33", custom = tpastrub },
   { map = "4,-19", path = "bottom" },
   { map = "4,-18", path = "bottom" },
   { map = "4,-17", path = "bottom" }, 
   { map = "84674566", door = "303" },
   { map = "83887104", custom = prendreKamasAstrub },
	}
end
