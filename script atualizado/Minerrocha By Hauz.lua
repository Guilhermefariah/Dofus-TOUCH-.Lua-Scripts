IGNORE_REQUEST_PARTY = true
IGNORE_REQUEST_DUEL = true
IGNORE_REQUEST_EXCHANGE = true
MIN_MONSTERS = 4
MAX_MONSTERS = 4
OPEN_BAGS = true

 
function decoMaxCombat()
    if global:maxFightsPerDay() == true then
        global:disconnect()
    end
end

function alone()
	tpreturn()
	return {
        { map = "-19,-53", path = "bottom" },
        { map = "-19,-53", path = "bottom" },
	{ map = "-19,-52", path = "bottom" },
   	{ map = "-19,-51", path = "bottom" },
   	{ map = "-19,-50", path = "bottom" },
   	{ map = "-19,-49", path = "bottom" },
   	{ map = "-19,-48", path = "left" },
   	{ map = "-20,-48", path = "left" },
   	{ map = "-21,-48", path = "left" },
   	{ map = "-22,-48", path = "left" },
   	{ map = "-23,-48", path = "bottom" },
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


-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function move()
  decoMaxCombat()
  return {
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
		-- Deslocamentos
	{ map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	{ map = "-32,-56", path = "zaap(129894405)" },
	{ map = "-19,-53", path = "bottom" },
	{ map = "-19,-52", path = "bottom" },
   	{ map = "-19,-51", path = "bottom" },
   	{ map = "-19,-50", path = "bottom" },
   	{ map = "-19,-49", path = "bottom" },
   	{ map = "-19,-48", path = "left" },
   	{ map = "-20,-48", path = "left" },
   	{ map = "-21,-48", path = "left" },
   	{ map = "-22,-48", path = "left" },
   	{ map = "-23,-48", path = "bottom" },
-------------------------------------------------------------------------------------------------------------------------------------------------------------------	
		-- Combates
   	
  	{ map = "-23,-47", path = "right", fight = true },
	{ map = "-22,-47", path = "right", fight = true },
	{ map = "-21,-47", path = "right", fight = false },
	{ map = "-20,-47", path = "right", fight = true },
	{ map = "-19,-47", path = "right", fight = true },
	{ map = "-18,-47", path = "right", fight = true },
	{ map = "-17,-47", path = "right", fight = true },
	{ map = "-16,-47", path = "bottom", fight = true },
	{ map = "-16,-46", path = "bottom", fight = true },
	{ map = "-16,-45", path = "bottom", fight = true },
	{ map = "-16,-44", path = "bottom", fight = true },
	{ map = "-16,-43", path = "left", fight = true },
	{ map = "-17,-43", path = "top", fight = true },
	{ map = "-17,-44", path = "top", fight = true },
	{ map = "-17,-45", path = "top", fight = true },
	{ map = "-17,-46", path = "left", fight = true },
	{ map = "-18,-46", path = "bottom", fight = true },
	{ map = "-18,-45", path = "bottom", fight = true },
	{ map = "-18,-44", path = "bottom", fight = true },
	{ map = "-18,-43", path = "left", fight = true },
	{ map = "-19,-43", path = "top", fight = true },
	{ map = "-19,-44", path = "left", fight = true },
	{ map = "-20,-44", path = "bottom", fight = true },
	{ map = "-20,-43", path = "left", fight = true },
	{ map = "-21,-43", path = "top", fight = true },
	{ map = "-21,-44", path = "top", fight = true },
	{ map = "-21,-45", path = "right", fight = true },
	{ map = "-20,-45", path = "right", fight = true },
	{ map = "-19,-45", path = "top", fight = true },
	{ map = "-19,-46", path = "left", fight = true },
	{ map = "-20,-46", path = "left", fight = true },
	{ map = "-21,-46", path = "left", fight = true },
	{ map = "-22,-46", path = "left", fight = true },
	{ map = "-23,-46", path = "top", fight = true },
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
		 --Retornar do banco
    { map = "147254", path = "top" }, -- Mapa exterior do banco
    { map = "2885641", path = "424" }, -- Mapa interior do banco
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
		--Retornar da Fênix
	{map = "129894401", path = "bottom"},
	{map = "129894402", path = "bottom"},
	{map = "129894403", path = "bottom"},
	{map = "129894404", path = "bottom"},
  }
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function phenix()
	return 
{

	{map = "129893889", door = "172", path = "left"},

}
end
-------------------------------------------------------------------------------------------------------------------------------------------------------------------
function bank()
  return {
	{ map = "-21,-43", path = "top" },
	{ map = "-20,-43", path = "top" },
	{ map = "-19,-43", path = "top" },
	{ map = "-18,-43", path = "top" },
	{ map = "-17,-43", path = "top" },
	{ map = "-16,-43", path = "top" },
	{ map = "-21,-44", path = "top" },
	{ map = "-20,-44", path = "top" },
	{ map = "-19,-44", path = "right" },
	{ map = "-18,-44", path = "top" },
	{ map = "-17,-44", path = "top" },
	{ map = "-16,-44", path = "top" },	
	{ map = "-23,-46", path = "top" },
	{ map = "-22,-46", path = "top" },
	{ map = "-21,-46", path = "top" },
	{ map = "-20,-46", path = "top" },
	{ map = "-18,-46", path = "top" },
	{ map = "-17,-46", path = "top" },
	{ map = "-16,-46", path = "top" },
	{ map = "-16,-45", path = "top" },
	{ map = "-17,-45", path = "top" },
	{ map = "-18,-45", path = "top" },
	{ map = "-20,-45", path = "top" },
	{ map = "-21,-45", path = "top" },
	{ map = "-16,-47", path = "left" },
	{ map = "-17,-47", path = "left" },
	{ map = "-18,-47", path = "left" },
	{ map = "-23,-47", path = "right" },
	{ map = "-22,-47", path = "right" },
	{ map = "-21,-47", path = "right" },
	{ map = "-20,-47", path = "right" },
	{ map = "-19,-45", path = "top" },
	{ map = "-19,-46", path = "top" },
	{ map = "-19,-47", path = "top" },

	{ map = "-19,-48", path = "top" },
	{ map = "-19,-49", path = "top" },
	{ map = "-19,-50", path = "top" },
	{ map = "-19,-51", path = "top" },
	{ map = "-19,-52", path = "top" },

	{ map = "-19,-53", path = "zaap(147768)" },	
	
	{ map = "-32,-56", path = "right" },
        { map = "-31,-56", path = "bottom" },
	{ map = "-31,-55", path = "bottom" },

		--Retornar ao banco
        { map = "147254", door = "383" }, -- Mapa exterior do banco
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco
  }
end