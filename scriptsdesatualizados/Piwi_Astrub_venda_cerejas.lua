MIN_MONSTERS = 4
MAX_MONSTERS = 4
OPEN_BAGS = true
IDItem8 = 1734

function selling()
  if inventory:itemCount(IDItem8) > 100 and character:kamas() > 300 then
      npc:npcSale()

      Priceitem = sale:getPriceItem(IDItem8, 100)
      if Priceitem > 1 then
          while (inventory:itemCount(IDItem8) > 100) and (sale:availableSpace() > 0) do
              sale:sellItem(IDItem8, 100, Priceitem - 1)
          end
          global:leaveDialog()
          global:delay(1000)
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem8).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem8) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
end


function move()
		 selling()
  return {
   { map = "4,-19", path = "top|left|right|bottom" },
   { map = "3,-20", path = "top|left|right|bottom", fight = true },
   { map = "4,-20", path = "top|left|right|bottom", fight = true },
   { map = "5,-20", path = "top|left|right|bottom", fight = true },
   { map = "5,-19", path = "top|left|right|bottom", fight = true },
   { map = "5,-18", path = "top|left|right|bottom", fight = true },
   { map = "5,-17", path = "top|left|right|bottom", fight = true },
   { map = "4,-17", path = "top|left|right|bottom", fight = true },
   { map = "4,-18", path = "top|left|right|bottom", fight = true },
   { map = "3,-18", path = "top|left|right|bottom", fight = true },
   { map = "3,-17", path = "top|left|right|bottom", fight = true },
   { map = "3,-19", path = "top|left|right|bottom", fight = true },
   { map = "4,-21", path = "left|right|bottom", fight = true },
   { map = "3,-21", path = "left|right|bottom", fight = true },
   { map = "2,-21", path = "left|right|bottom", fight = true },
   { map = "1,-21", path = "left|right|bottom", fight = true },
   { map = "1,-20", path = "top|left|right|bottom", fight = true },
   { map = "2,-20", path = "top|left|right|bottom", fight = true },
   { map = "0,-21", path = "right|bottom", fight = true },
   { map = "0,-20", path = "right|bottom", fight = true },
   { map = "0,-19", path = "right", fight = true },
   { map = "1,-19", path = "right", fight = true },
   { map = "2,-19", path = "right", fight = true },
   { map = "2,-18", path = "top|right", fight = true },
   { map = "6,-20", path = "left|bottom", fight = true },
   { map = "6,-17", path = "top|left", fight = true },
   { map = "6,-18", path = "top|left|bottom", fight = true },
   { map = "6,-19", path = "top|left|bottom", fight = true },
   { map = "5,-21", path = "left|bottom", fight = true },
   { map = "5,-16", path = "top|left", fight = true },
   { map = "4,-16", path = "top|left|right", fight = true },
   { map = "3,-16", path = "top|left|right", fight = true },
   { map = "2,-16", path = "left", fight = true },
   { map = "1,-16", path = "left", fight = true },
   { map = "0,-16", path = "bottom", fight = true },
   { map = "0,-15", path = "right", fight = true },
   { map = "1,-15", path = "right", fight = true },
   { map = "2,-15", path = "right", fight = true },
   { map = "3,-15", path = "right", fight = true },
   { map = "4,-15", path = "top", fight = true },
   { map = "2,-17", path = "right", fight = true },
  }
end


function bank()
  return {
  }
end
