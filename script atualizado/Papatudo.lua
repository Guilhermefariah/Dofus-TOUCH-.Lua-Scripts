MIN_MONSTERS = 4
MAX_MONSTERS = 4
OPEN_BAGS = true


IDItem1 = 1736

function alone()
	tpreturn()
	return { 
  { map = "1,-32", path = "bottom", fight = true },
}
    end

function tpreturn()
    npc:npcBuy()
    sale:buyItem(548, 1, 3000)
    global:printSuccess("Poção de lembrança")
    global:leaveDialog()
    global:delay(600)
    inventory:useItem(548)
    global:printSuccess("Utilizada")
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
end

function move()
		 selling()
  return {

	-- Déplacements
    { map = "4,-19", path = "top" },
   { map = "4,-20", path = "top" },
   { map = "4,-21", path = "top" },
   { map = "4,-23", path = "top" },
   { map = "4,-24", path = "top" },
   { map = "4,-25", path = "top" },
   { map = "4,-26", path = "top" },
   { map = "4,-27", path = "top" },
   { map = "4,-28", path = "top" },
   { map = "4,-29", path = "top" },
   { map = "4,-30", path = "right" },
   { map = "5,-30", path = "top" },
   { map = "5,-31", path = "left" },
   { map = "4,-31", path = "top" },
   { map = "4,-32", path = "left" },
   { map = "4,-22", path = "right" },
   { map = "5,-22", path = "top" },
   { map = "5,-23", path = "left" },
        { map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	{ map = "-32,-56", path = "zaap(800)" },
	{ map = "1,-32", path = "bottom" }, 
	
	-- Combats
   { map = "1,-32", path = "bottom", fight = true },
   { map = "1,-31", path = "right", fight = true },
   { map = "2,-31", path = "top", fight = true },
   { map = "2,-32", path = "right", fight = true },
   { map = "3,-32", path = "top", fight = true },
   { map = "3,-33", path = "left", fight = true },
   { map = "2,-33", path = "left", fight = true },
   { map = "1,-33", path = "top", fight = true },
   { map = "1,-34", path = "left", fight = true },
   { map = "0,-34", path = "bottom", fight = true },
   { map = "0,-33", path = "left", fight = true },
   { map = "-1,-33", path = "bottom", fight = true },
   { map = "-1,-32", path = "left", fight = true },
   { map = "-2,-32", path = "bottom", fight = true },
   { map = "-2,-31", path = "right", fight = true },
   { map = "-1,-31", path = "bottom", fight = true },
   { map = "-1,-30", path = "bottom", fight = true },
   { map = "-1,-29", path = "right", fight = true },
   { map = "0,-29", path = "right", fight = true },
   { map = "1,-29", path = "top", fight = true },
   { map = "1,-30", path = "left", fight = true },
   { map = "0,-30", path = "top", fight = true },
   { map = "0,-31", path = "top", fight = true },
   { map = "0,-32", path = "right", fight = true },
   { map = "1,-32", path = "bottom", fight = true },
   { map = "3,-12", custom = tpreturn },
   { map = "2,-12", custom = tpreturn },

                    --Retornar do banco
    { map = "147254", path = "top" }, -- Mapa exterior do banco
    { map = "2885641", path = "424" }, -- Mapa interior do banco

  }
end

function phenix()
	return 
{
      { map = "84673546", door = "272", patch = "right"}, 
  }
end

function bank()
  return {
	{ map = "2,-1", path = "top" },
        { map = "2,0", path = "top" },
        { map = "1,0", path = "right" },
        { map = "0,0", path = "right" },
        { map = "-1,0", path = "right" },
        { map = "-2,0", path = "right" },
        { map = "0,-32", path = "right" },
        { map = "1,-31", path = "top" },
        { map = "2,-32", path = "left" },
        { map = "1,-33", path = "bottom" },
        { map = "2,-33", path = "bottom" },
        { map = "2,-31", path = "top" },
        { map = "3,-32", path = "left" },
        { map = "3,-33", path = "bottom" },
        { map = "1,-34", path = "bottom" },
        { map = "0,-34", path = "right" },
        { map = "0,-33", path = "right" },
        { map = "-1,-33", path = "right" },
        { map = "-1,-32", path = "right" },
        { map = "-2,-32", path = "right" },
        { map = "0,-31", path = "right" },
        { map = "-1,-31", path = "right" },
        { map = "-2,-31", path = "right" },
	{ map = "1,-30", path = "top" },
	{ map = "0,-30", path = "right" },
	{ map = "-1,-30", path = "right" },
	{ map = "-2,-30", path = "right" },
	{ map = "-1,-29", path = "top" },
	{ map = "0,-29", path = "top" },
	{ map = "1,-29", path = "top" },
	{ map = "1,-32", path = "zaap(147768)" },
 
        { map = "-32,-56", path = "right" },
        { map = "-31,-56", path = "bottom" },
	{ map = "-31,-55", path = "bottom" },

		--Retornar ao banco
        { map = "147254", door = "383" }, -- Mapa exterior do banco
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco
  }
end