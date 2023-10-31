OPEN_BAGS = true -- Ouverture des sacs de récolte
opti = 1 -- Optimise le trajet en fonction du niveau mineur (1 = activé ; mettre une valeur différente pour désactiver)
a = 0
b = 0
c = 0
z = 0

IDItem1 = 312 -- Fer
IDItem2 = 441 -- Cuivre
IDItem3 = 442 -- Bronze
IDItem4 = 443 -- Kobalte
IDItem5 = 444 -- Etain
IDItem6 = 350 -- Argent
IDItem7 = 446 -- Bauxite
IDItem8 = 313 -- Or
IDItem9 = 445 -- Manganeso


function popoBonta()
    npc:npcBuy()
    sale:buyItem(6965, 1, 900)
    global:printSuccess("[ACHAT] Potion Bonta x1 ["..sale:getPriceItem(548, 1).." Kamas]")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(6965)
    global:printSuccess("Teleporté à "..map:currentMap().."")
end

function tpastrub()
    npc:npcBuy()
    sale:buyItem(548, 1, 10000)
    global:printSuccess("Popo rappel")
    global:leaveDialog()
    global:delay(400)
    inventory:useItem(548)
    global:printSuccess("Utilisée")
end







function move()

if map:currentMap() != "5,19" and z == 0 then
return dep()
end
j = job:level(24)
if j < 10 and opti == 1 then
return mineur10()
elseif j < 20 and opti == 1 then
return mineur20()
elseif j > 19 and opti == 1 then
return mineur100()
end
if opti != 1 then
return mineur100()
end
end

function dep()

if map:currentMap() == "5,19" then
z = 1
end
  return {

   { map = "-32,-56", custom = tpastrub },
   { map = "10,22", path = "top" },
   { map = "10,21", path = "top" },
   { map = "9,20", path = "left" },
   { map = "10,20", path = "left" },
   { map = "8,20", path = "left" },
   { map = "7,20", path = "left" },
   { map = "6,20", path = "left" },
   { map = "5,20", path = "top" },
   { map = "-1,13", path = "right" },
   { map = "0,13", path = "right" },
   { map = "1,13", path = "right" },
   { map = "2,13", path = "right" },
   { map = "3,13", path = "right" },
   { map = "4,13", path = "right" },
   { map = "-2,0", path = "right" },
   { map = "-1,0", path = "right" },
   { map = "1,0", path = "right" },
   { map = "0,0", path = "right" },
   { map = "2,-1", path = "bottom" },
   { map = "2,0", path = "bottom" },
   { map = "2,2", path = "bottom" },
   { map = "2,1", path = "bottom" },
   { map = "2,3", path = "bottom" },
   { map = "2,4", path = "bottom" },
   { map = "2,5", path = "bottom" },
   { map = "2,6", path = "bottom" },
   { map = "2,7", path = "right" },
   { map = "3,7", path = "right" },
   { map = "4,7", path = "right" },
   { map = "5,7", path = "bottom" },
   { map = "5,8", path = "bottom" },
   { map = "5,9", path = "bottom" },
   { map = "5,10", path = "bottom" },
   { map = "5,11", path = "bottom" },
   { map = "5,12", path = "bottom" },
   { map = "5,13", path = "bottom" },
   { map = "5,14", path = "bottom" },
   { map = "5,15", path = "bottom" },
   { map = "5,16", path = "bottom" },
   { map = "5,17", path = "bottom" },
   { map = "-1,24", path = "right" },
   { map = "0,24", path = "right" },
   { map = "1,24", path = "right" },
   { map = "2,23", path = "top" },
   { map = "2,22", path = "top" },
   { map = "2,21", path = "top" },
   { map = "2,24", path = "top" },
   { map = "2,20", path = "right" },
   { map = "3,20", path = "right" },
   { map = "4,20", path = "right" },
   { map = "5,18", path = "bottom" },
   { map = "88086283", custom = tpastrub },
   { map = "12,12", patch = "right"},
   { map = "13,12", custom = tpastrub },
   -- action banque interieur
   { map = "99095051", path = "410" },	-- SORTIR DE LA BANQUE
   { map = "88081177", path = "bottom" },    
    { map = "147254", path = "top" }, -- Mapa exterior do banco
    { map = "2885641", path = "424" }, -- Mapa interior do banco
        { map = "-31,-55", path = "top" },
	{ map = "-31,-56", path = "left" },
	
  }
end


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
   { map = "88086283", door = "184", patch = "left" },
   { map = "12,12", patch = "right"},
   { map = "13,12", custom = tpastrub },
  }
end


function bank()
if map:currentMap() == "99095051" then
z = 0
end
  return {
   { map = "148280", path = "right" },
   { map = "5506048", path = "519" },
   { map = "12,12", custom = popoBonta},
   { map = "-2,0", custom = popoBonta },
   { map = "97260035", path = "top(288)" },
   { map = "97257987", path = "left(212)" },
   { map = "97256963", path = "bottom(492)" },
   { map = "97261057", path = "left(227)" },
   { map = "97255939", path = "bottom(478)" },
   { map = "97259011", path = "top(276)" },
   { map = "97260033", path = "bottom(466)" },
   { map = "97261059", path = "right(417)" },
   { map = "88082692", path = "top" },
   { map = "2,-1", path = "top" },
   { map = "2,0", path = "top" },
   { map = "2,2", path = "top" },
   { map = "2,1", path = "top" },
   { map = "2,3", path = "top" },
   { map = "2,4", path = "top" },
   { map = "2,5", path = "top" },
   { map = "2,6", path = "top" },
   { map = "2,7", path = "top" },
   { map = "3,7", path = "left" },
   { map = "4,7", path = "left" },
   { map = "5,7", path = "left" },
   { map = "5,8", path = "top" },
   { map = "5,9", path = "top" },
   { map = "5,10", path = "top" },
   { map = "5,11", path = "top" },
   { map = "5,12", path = "top" },
   { map = "5,13", path = "top" },
   { map = "5,14", path = "top" },
   { map = "5,15", path = "top" },
   { map = "5,16", path = "top" },
   { map = "5,17", path = "top" },
   { map = "5,18", path = "top" },
   { map = "12,12", patch = "right"},
   { map = "13,12", custom = tpastrub },

	{ map = "-32,-56", path = "right" },
        { map = "-31,-56", path = "bottom" },
	{ map = "-31,-55", path = "bottom" },
 

        { map = "147254", door = "383" }, -- 
        { map = "2885641", npcBank = true, path = "424" }, -- Mapa interior do banco




   { map = "99095051", npcBank = true, path = "410" },
   { map = "88081177", door = "216" },
  }
end

function mineur10()
return {
   { map = "88082692", door = "332" },
   { map = "97261059", path = "right(417)", gather = true },
   { map = "97260033", gather = true, custom = mapmulti},
   { map = "97261057", gather = true, custom = mapmulti10 },
   { map = "97259011", path = "top(276)", gather = true },
}
end

function mapmulti10()
mapi = map:currentMapId()
if mapi == 97261057 then
if b == 0 then
map:moveToCell(421)
b = 1
elseif b == 1 then
map:moveToCell(227)
b = 0
end
end
end

function mineur20()
return {
   { map = "88082692", door = "332" },
   { map = "97261059", path = "right(417)", gather = true },
   { map = "97260033", gather = true, custom = mapmulti},
   { map = "97261057", gather = true, custom = mapmulti20 },
   { map = "97259011", path = "top(276)", gather = true },
   { map = "97257987", path = "left(212)", gather = true },
   { map = "88086283", custom = tpastrub },
}
end

function mapmulti20()
mapi = map:currentMapId()
if mapi == 97261057 then
if b == 0 then
map:moveToCell(487)
b = 1
elseif b == 1 then
map:moveToCell(421)
b = 2
elseif b == 2 then
map:moveToCell(227)
b = 0
end
end
end

function mineur100()
  return {
   { map = "88082692", door = "332" },
   { map = "97260033", gather = true, custom = mapmulti},
   { map = "97261059", path = "right(417)", gather = true },
   { map = "97261057", gather = true, custom = mapmulti },
   { map = "97259011", path = "top(276)", gather = true },
   { map = "97255939", path = "right(446)", gather = true },
   { map = "97256963", path = "bottom(492)", gather = true },
   { map = "97257987", gather = true, custom = mapmulti },
   { map = "97260035", path = "top(288)", gather = true },
   { map = "88086283", custom = tpastrub },
  }
  end

function mapmulti()
mapi = map:currentMapId()
if mapi == 97260033 then
if a == 0 then
map:moveToCell(183)
a = 1
elseif a == 1 then
map:moveToCell(405)
a = 0
end
end

if mapi == 97261057 then
if b == 0 then
map:moveToCell(421)
b = 1
elseif b == 1 then
map:moveToCell(235)
b = 2
elseif b == 2 then
map:moveToCell(227)
b = 0
end
end

if mapi == 97257987 then
if c == 0 then
map:moveToCell(492)
c = 1
elseif c == 1 then
map:moveToCell(212)
c = 0
end
end

end