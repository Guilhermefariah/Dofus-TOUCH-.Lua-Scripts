MIN_MONSTERS = 4
MAX_MONSTERS = 4

IDItem3 = 398

function selling()
  if inventory:itemCount(IDItem3) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem3, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem3) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem3, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem8).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem3) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
end

function move()
		 selling()
  return {
   { map = "-1,24", path = "right" },
   { map = "0,24", path = "right", fight = true },
   { map = "1,24", path = "right" },
   { map = "2,24", path = "right", fight = true },
   { map = "3,24", path = "bottom", fight = true },
   { map = "3,25", path = "bottom", fight = true },
   { map = "3,26", path = "bottom", fight = true },
   { map = "3,27", path = "bottom", fight = true },
   { map = "3,28", path = "bottom", fight = true },
   { map = "3,29", path = "bottom", fight = true },
   { map = "3,30", path = "left", fight = true },
   { map = "2,30", path = "top", fight = true },
   { map = "2,29", path = "top", fight = true },
   { map = "2,28", path = "top", fight = true },
   { map = "2,27", path = "top", fight = true },
   { map = "2,26", path = "top", fight = true },
   { map = "2,25", path = "left", fight = true },
   { map = "1,25", path = "bottom", fight = true },
   { map = "1,26", path = "bottom", fight = true },
   { map = "1,27", path = "bottom", fight = true },
   { map = "1,28", path = "bottom", fight = true },
   { map = "1,29", path = "left", fight = true },
   { map = "0,29", path = "top", fight = true },
   { map = "0,28", path = "top", fight = true },
   { map = "0,27", path = "top", fight = true },
   { map = "0,25", path = "top", fight = true },
   { map = "0,26", path = "top", fight = true },
  }
end


function bank()
  return {
  }
end
