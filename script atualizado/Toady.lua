
♥-----------------------------------------------------------------------------------------------------
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
MIN_MONSTERS = 4
MAX_MONSTERS = 4
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
OPEN_BAGS = true
IDItem3 = 398
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------

function decoMaxCombat()
    if global:maxFightsPerDay() == true then
        global:disconnect()
    end
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 1, 3000)
    global:printSuccess("Voltando pro Zaap")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Ta usada ")
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function alone()
	tpreturn()
return {
   { map = "5,7", path = "bottom" },
}
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function tpreturn()
    npc:npcBuy()
    sale:buyItem(548, 1, 3000)
    global:printSuccess("Poção de lembrança")
    global:leaveDialog()
    global:delay(600)
    inventory:useItem(548)
    global:printSuccess("Utilizada")
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
          global:printSuccess("[Venda]["..inventory:itemNameId(IDItem3).."] À venda x100 ao preço de ["..Priceitem.." Kamas]")
      end
  end

  if inventory:itemCount(IDItem3) > 100 and character:kamas() <= 300 then
      global:printSuccess("Kamas insuficientes para colocar a venda, deve ter no mínimo 300 kamas disponíveis")
      global:leaveDialog()
      global:delay(1000)
  end
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function move()
  selling()
  decoMaxCombat()
  return {
   { map = "5,7", path = "bottom" },
   { map = "5,8", path = "bottom" },
   { map = "5,9", path = "right" },
   { map = "6,9", path = "right" },
   { map = "7,9", path = "bottom" },
   { map = "7,10", path = "right" },
   { map = "8,10", path = "bottom", fight = true },
   { map = "8,11", path = "right", fight = true },
   { map = "9,11", path = "right", fight = true },
   { map = "10,11", path = "right", fight = true },
   { map = "11,11", path = "right", fight = true },
   { map = "12,11", path = "top", fight = true },
   { map = "12,10", path = "left", fight = true },
   { map = "11,10", path = "top", fight = true },
   { map = "11,9", path = "left", fight = true },
   { map = "10,9", path = "bottom", fight = true },
   { map = "10,10", path = "left", fight = true },
   { map = "9,10", path = "left", fight = true },
   { map = "12,12", custom = tpastrub },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
        { map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	{ map = "-32,-56", path = "zaap(88082704)" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
    { map = "147254", path = "top" }, -- Mapa exterior do banco
    { map = "2885641", path = "424" }, -- Mapa interior do banco
  }
end
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
function phenix()
	return 
{
   { map = "9,16", path = "right" },
   { map = "10,16", path = "right" },
   { map = "11,16", path = "right" },
   { map = "12,16", path = "right" },
   { map = "13,16", path = "top" },
   { map = "13,15", path = "top" },
   { map = "13,14", path = "top" },
   { map = "13,13", path = "top" },
   { map = "13,12", path = "left" },
   { map = "88086283", door = "184", custom = tpastrub },

  }
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function bank()
  return {
   { map = "5,8", path = "top" },
   { map = "5,9", path = "top" },
   { map = "6,9", path = "left" },
   { map = "7,9", path = "left" },
   { map = "7,10", path = "top" },
   { map = "8,10", path = "left" },
   { map = "8,11", path = "top" },
   { map = "9,11", path = "left" },
   { map = "10,11", path = "left" },
   { map = "11,11", path = "left" },
   { map = "12,11", path = "left" },
   { map = "12,10", path = "left" },
   { map = "11,10", path = "left" },
   { map = "11,9", path = "bottom" },
   { map = "10,9", path = "bottom" },
   { map = "10,10", path = "left" },
   { map = "9,10", path = "left" },
   { map = "12,9", path = "bottom" },
   { map = "5,7", path = "zaap(147768)" },	
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------	
	{ map = "-32,-56", path = "right" },
        { map = "-31,-56", path = "bottom" },
	{ map = "-31,-55", path = "bottom" },
 -------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Retornar ao banco
        { map = "147254", door = "383" }, -- Mapa exterior do banco
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco

  }
end


