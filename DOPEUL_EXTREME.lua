--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--Script Dopeul-----------------------------------------------------------------------------
--départ:zaap coin des bouftous/bouftou corner's zaap---------------------------------------
--il fait tout le trajet/gere la mort en combat/se regenere avant chaque combat-------------
--à la fin du script achette la ressource souhaitée depuis le marchand du temple------------
--puis reviens à la map de départ et s'arrette pour être lancé prochainement----------------
-- la vente de la ressource est aussi gerée par ce trajet-----------------------------------
-- un Sacri lvl 30 en pano bouftou gere généralement tout les dopeuls jusqu'au lvl 60-------
--Il vous sera trop utile :D ---------------------------------------------------------------
--createur:Triplex--------------------------------------------------------------------------
--------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------

item=xxx ---GID de votre item que vous souhaitez acheter/GID of the item you want to sell from the temple merchent
prix=xx ---Son prix en doplons/ its doplon price
vente=false--Permet la vente de la ressource achetée depuis le marchand , sinon mettez false à la place de true
          --If you want to Sell , let vente=true , but if you dont want to , put vente=false
achat_temple=false		  
		  
		  
FORCE_MONSTERS = {72}
R=0
D=0
B=0
S=0
T=0
nb=0
Y=0
function deco()
if T==0 then
File2 = io.open(""..character:name()..".txt","r")                                                         -------- le nom du personnages a qui 
if File2 ~= nil then
nb=tonumber(File2:read())
global:printSuccess(nb..' dopeuls deja faits')
else
nb=0
end
T=1
end
end
function var_b()
if map:currentMapId() == 88082704 then
g = inventory:itemCount(13052)
f = g
elseif Y==0 then
g = inventory:itemCount(13052)
f = g
Y=1
end
g = inventory:itemCount(13052)
if g-f > 0 then
nb=nb+1
f=g
end
if S==1 then
c=b
else
c=0
end
end
function checkpoint_sadi_feca()
if R==0 then
map:useById(472656,-2)
a=inventory:itemCount(13052)
ini=a
end
if B==1 then
    global:disconnect()
elseif tonumber(nb)==0 then
   R=1
   map:changeMap("right")
elseif  tonumber(nb) == 1  then
   R=1
   map:changeMap("left")
else
   R=1
   map:changeMap("top")
end
end
function checkpoint_est_ouest()
if  tonumber(nb)==3 or tonumber(nb)==2 then
   map:changeMap("top")
else

 map:changeMap("right")
end
end
function checkpoint_iop_cra()
if  tonumber(nb)==2 then
   map:changeMap("top")
else 
   map:changeMap("left")
end
end
function checkpoint_osa_steam_eni()
if  tonumber(nb)==4  then
   map:changeMap("top")
elseif  tonumber(nb)==5 then
   map:changeMap("right")
else 
   map:changeMap("left")
end
end
function checkpoint_panda_sram()
if  tonumber(nb)==9  then
   map:changeMap("left")
elseif  tonumber(nb)==10  then
   map:changeMap("right")
else
   map:changeMap("top")
end
end

pain=xxxx
------FECA------
function feca()
if tonumber(nb)==0 then
global:printSuccess('dopeul feca')
    map:door(400)
else
global:printSuccess('dopeul feca terminé')
   map:changeMap("bottom")
end
end
function map1_feca()
if tonumber(nb)==0 then
   map:door(290)
else
   map:door(424)
end
end
function dopeul_feca()
if tonumber(nb)==0 and A==0 then
    npc:npc(433,3)	 
	npc:reply(-1)
    npc:reply(-2)
	global:delay(200)
	A=1
	global:delay(200)
    npc:reply(-1)
    npc:reply(-1)
	
elseif tonumber(nb)==0 and A==1 then
    npc:npc(433,3)	 
	npc:reply(-1)
	npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(451)
end
end
A=0
------SADIDA-------
function sadida()
if tonumber(nb)==1 then
global:printSuccess('dopeul sadida')
   map:door(342)
else
global:printSuccess('dopeul sadida terminé')
   map:changeMap("right")
end
end
function sadida2()
if tonumber(nb)==1 then
   map:changeMap("left")
else
   map:changeMap("bottom")
end
end
function map1_sadi()
if tonumber(nb)==1 then
   map:door(274)
else
   map:moveToCell(397)
end
end
function dopeul_sadi ()
global:printSuccess('sos')
if tonumber(nb)==1 then
    npc:npc(442,3)
	npc:reply(-1)
	npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
global:printSuccess('wow')
File:write(tonumber(nb)) 
global:printSuccess('waw')
File:close() 
global:printSuccess('wiw')
    map:moveToCell(408)
end
end

-----IOP------
function iop()
if tonumber(nb)==2 then
global:printSuccess('dopeul iop')
      map:door(356)
else
global:printSuccess('dopeul iop terminé')
   map:changeMap("left")
end
end
function map1_iop()
if tonumber(nb)==2 then
   map:moveToCell(429)
else
   map:moveToCell(425)
end
end
function dopeul_iop()
if tonumber(nb)==2 then
    npc:npc(434,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(269)
end
end
------CRA-------
function cra()
if tonumber(nb)==3 then
global:printSuccess('dopeul cra')
      map:door(401)
else
global:printSuccess('dopeul cra terminée')
   map:changeMap("left")
end
end
function map1_cra()
if tonumber(nb)==3 then
   map:door(311)
else
   map:moveToCell(451)
end
end
function dopeul_cra()
if tonumber(nb)==3 then
    npc:npc(439,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:moveToCell(472)
end
end
--------OSAMODAS--------
function osa()
if tonumber(nb)==4 then
global:printSuccess('dopeul osa')
      map:door(261)
else
global:printSuccess('dopeul osa terminé')
   map:changeMap("right")
end
end
function map1_osa()
if tonumber(nb)==4 then
   map:door(242)
else
   map:moveToCell(424)
end
end
function dopeul_osa()
if tonumber(nb)==4 then
    npc:npc(436,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:moveToCell(458)
end
end
----STEAMER----
function aller_transpo()
if tonumber(nb)==5 then
global:printSuccess('dopeul steamer')
      map:useById(472880,-1)
else 
global:printSuccess('dopeul steamer terminé')
   map:changeMap("left")
end
end
function entre_retourne()
if tonumber(nb)==5 then
   map:door(344)
else
   map:useById(472866,-1)
end
end
function map1_steam()
if tonumber(nb)==5 then
   map:door(398)
else 
   map:moveToCell(466)
end
end
function map2_steam()
if tonumber(nb)==5 then
   map:moveToCell(499)
else
   map:moveToCell(494)
end
end
function dopeul_steam()
if tonumber(nb)==5 then
    npc:npc(1594,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(311)
end
end
-------ENIRIPSA-------
function eni()
if tonumber(nb)==6 then
global:printSuccess('dopeul eniripsa')
     map:door(412)
else
global:printSuccess('dopeul eniripsa terminé')
   map:changeMap("left")
end
end
function map1_eni()
if tonumber(nb)==6 then
   map:door(290)
else
   map:changeMap("bottom")
end
end
function map2_eni()
if tonumber(nb)==6 then
   map:door(426)
else
   map:door(319)
end
end
function map3_eni()
if tonumber(nb)==6 then
   map:door(346)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
   map:door(337)
end
end
function dopeul_eni()
if tonumber(nb)==6 then
    npc:npc(435,3)
    npc:reply(-1)
    npc:reply(-1)
else
    map:door(348)
end
end
-------XELOR-------
function xelor()
if tonumber(nb)==7 then
global:printSuccess('dopeul xelor')
     map:door(373)
else
global:printSuccess('dopeul xelor terminée')
   map:changeMap("bottom")
end
end
function map1_xelor()
if tonumber(nb)==7 then
   map:door(346)
else
   map:moveToCell(397)
end
end
function dopeul_xelor()
if tonumber(nb)==7 then
    npc:npc(437,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:moveToCell(410)
end
end
-----ROUBLARD--------
function tunnel()
if tonumber(nb)==8 then
global:printSuccess('dopeul roublard')
      map:door(191)
else
global:printSuccess('dopeul roublard terminée')
   map:changeMap("left")
end
end
function bateau()
if tonumber(nb)==8 then
   npc:npc(1422,3)
   npc:reply(-1)
else
   map:door(241)
end
end
function map1_roub()
if tonumber(nb)==8 then
   map:door(159)
else
   npc:npc(1422,3)
   npc:reply(-2)
end
end
function map2_roub()
if tonumber(nb)==8 then
   map:door(338)
else
   map:door(343)
end
end
function map3_roub()
if tonumber(nb)==8 then
   map:door(311)
else
   map:door(453)
end
end
function map4_roub()
if tonumber(nb)==8 then
   map:door(323)
else
   map:moveToCell(347)
end
end
function dopeul_roub()
if tonumber(nb)==8 then
    npc:npc(1414,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(509)
end
end
-----SRAM-----
function sram()
if tonumber(nb)==9 then
global:printSuccess('dopeul sram')
    map:door(317)
else
global:printSuccess('dopeul sram terminée')
   map:changeMap("right")
end
end
function sram1()
if tonumber(nb)==9 then
   map:changeMap("left")
else
   map:changeMap("right")
end
end

function map1_sram()
if tonumber(nb)==9 then
   map:door(275)
else
   map:moveToCell(388)
end
end
function dopeul_sram()
if tonumber(nb)==9 then
    npc:npc(441,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(416)
end
end
------PANDAWA------
function panda()
if tonumber(nb)==10 then
global:printSuccess('dopeul pandawa')
   map:door(381)
else
global:printSuccess('dopeul pandawa terminé')
   map:changeMap("left(532)")
end
end
function map1_panda()
if tonumber(nb)==10 then
   map:door(317)
else
   map:moveToCell(452)
end
end
function dopeul_panda()
if tonumber(nb)==10 then
    npc:npc(672,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:moveToCell(452)
end
end
----ENUTROF---
function enu()
if tonumber(nb)==11 then
global:printSuccess('dopeul enutrof')
   map:door(415)
else
global:printSuccess('dopeul enutrof terminé')
   map:changeMap("right")
end
end
function map1_enu()
if tonumber(nb)==11 then
   map:door(311)
else
   map:moveToCell(456)
end
end
function dopeul_enu()
if tonumber(nb)==11 then
    npc:npc(440,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(325)
end
end
-------ECAFLIP------
function eca()
if tonumber(nb)==12 then
global:printSuccess('dopeul ecaflip')
    map:door(314)
else
global:printSuccess('dopeul ecaflip terminée')
   map:changeMap("top")
end
end
function map1_eca()
if tonumber(nb)==12 then
   map:door(245)
else
   map:moveToCell(382)
end
end
function map2_eca()
if tonumber(nb)==12 then
   map:door(305)
else
   map:door(214)
end
end
function dopeul_eca()
if tonumber(nb)==12 then
    npc:npc(438,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(233)
end
end
----ZOBAL------
function monter1()
if tonumber(nb)==13 then
global:printSuccess('dopeul zobal')
   map:door(144)
else
global:printSuccess('dopeul zobal terminé')
   map:changeMap("left")
end
end
function monter2()
if tonumber(nb)==13 then
   map:door(107)
else
   map:door(347)
end
end
function monter3()
if tonumber(nb)==13 then
   map:door(184)
else
   map:door(394)
end
end
function monter4()
if tonumber(nb)==13 then
   map:door(184)
else
   map:door(393)
end
end
function zobal()
if tonumber(nb)==13 then
   map:door(287)
else
   map:door(402)
end
end
function map1_zobal()
if tonumber(nb)==13 then
   map:door(290)
else
   map:moveToCell(511)
end
end
function dopeul_zobal()
if tonumber(nb)==13 then
    npc:npc(1425,3)
    npc:reply(-1)
    npc:reply(-1)
else
File = io.open(""..character:name()..".txt", "w") 
File:write(tonumber(nb)) 
File:close() 
    map:door(284)
end
end
------SACRIEUR-----
function mine()
   if map:currentCell() == 314 then
      map:changeMap("top")
   else
      map:door(194)
   end   
end

function sacri()
global:printSuccess('dopeul sacri')
	 map:moveToCell(257)
   end

function map1_sacri()
  map:door(285)
end
function map2_sacri()
  map:door(243)
end
function dopeul_sacri()
if  tonumber(nb)==14 then
    npc:npc(443,3)
    npc:reply(-1)
    npc:reply(-1)
else
if achat_temple==true then
if inventory:itemCount(13052)>=prix then
    npc:npc(1516,1)
    sale:buyToPnj(item,math.floor(inventory:itemCount(13052)/prix))--buying from the merchant of the temple
    global:leaveDialog()
	if vente==true then
	npc:npcSale()
	while inventory:itemCount(item)>0 do
	sale:SellItem(item,1,sale:getPriceItem(item,1))
	sale:UpdateAllItems()
	global:leaveDialog()
	end
	end
	end	
	end
    npc:npcBuy()
	while inventory:itemCount(548)<1 do
	sale:buyItem(548,1,1000)
	end
	global:leaveDialog()
	global:delay(500)
    D=1
	B=1
	File = io.open(""..character:name()..".txt", "w") 
File:write('0') 
File:close() 
	inventory:useItem(548)
	end
end



function move()
deco()
var_b()

    return {

        { map = "264" ,fight = false, path = "bottom" },
		{ map = "263" ,fight = false , path = "left" },
		{ map = "131847" ,fight = false , path = "left" },
		{ map = "88212750" ,fight = false ,  custom = sadida },
		{ map = "17040384" ,fight = false ,  custom = map1_sadi },
		{ map = "17040386" ,fight = false ,  custom = dopeul_sadi},
		{ map = "88086290" ,fight = false ,  custom = feca },
		{ map = "17043460" ,fight = false ,  custom = map1_feca },
		{ map = "17043458" ,fight = false ,  custom = dopeul_feca },
		{ map = "88080660" ,fight = false ,  custom = iop },
		{ map = "17047556" ,fight = false ,  custom = map1_iop},
		{ map = "17047554" ,fight = false ,  custom = dopeul_iop },
		{ map = "88212244" ,fight = false ,  custom = cra},
		{ map = "17044483" ,fight = false ,  custom = map1_cra},
		{ map = "17044481" ,fight = false ,  custom = dopeul_cra},
		{ map = "88084245" ,fight = false ,  custom = osa},
		{ map = "17041411" ,fight = false ,  custom = map1_osa },
		{ map = "17041409" ,fight = false ,  custom = dopeul_osa },
		{ map = "9,1" ,fight = false ,  custom = aller_transpo},
		{ map = "95423492" ,fight = false ,  custom = entre_retourne},
		{ map = "96470786" ,fight = false ,  custom = map1_steam},
		{ map = "96470528" ,fight = false ,  custom = map2_steam },
		{ map = "96471552" ,fight = false ,  custom = dopeul_steam},
		{ map = "88083734" ,fight = false ,  custom = eni },
		{ map = "17042432" ,fight = false ,  custom = map1_eni},
		{ map = "17042436" ,fight = false ,  custom = map2_eni},
		{ map = "17042438" ,fight = false ,  custom = map3_eni},
		{ map = "17042434" ,fight = false ,  custom = dopeul_eni},
		{ map = "88081686" ,fight = false ,  custom = xelor},
		{ map = "17045504" ,fight = false ,  custom = map1_xelor},
		{ map = "17045506" ,fight = false ,  custom = dopeul_xelor},
		{ map = "88081684" ,fight = false ,  custom = tunnel},
		{ map = "67373056" ,fight = false ,  custom = bateau},
		{ map = "67112960" ,fight = false ,  custom = map1_roub},
		{ map = "67111936" ,fight = false ,  custom = map2_roub},
		{ map = "67110912" ,fight = false ,  custom = map3_roub},
		{ map = "67108864" ,fight = false ,  custom = map4_roub},
		{ map = "67109888" ,fight = false ,  custom = dopeul_roub},
		{ map = "88214295" ,fight = false ,  custom = sram},
		{ map = "17046528" ,fight = false ,  custom = map1_sram},
		{ map = "17046530" ,fight = false ,  custom = dopeul_sram},
		{ map = "88082201" ,fight = false ,  custom = panda},
		{ map = "17049600" ,fight = false ,  custom = map1_panda},
		{ map = "17049602" ,fight = false ,  custom = dopeul_panda},
		{ map = "88212763" ,fight = false ,  custom = enu},
		{ map = "17048576" ,fight = false ,  custom = map1_enu},
		{ map = "17048578" ,fight = false ,  custom = dopeul_enu},
		{ map = "88080668" ,fight = false ,  custom = eca},
		{ map = "17039360" ,fight = false ,  custom = map1_eca},
		{ map = "17039361" ,fight = false ,  custom = map2_eca},
		{ map = "17039362" ,fight = false ,  custom = dopeul_eca},
		{ map = "70778880" ,fight = false ,  custom = monter1},
		{ map = "69206274" ,fight = false ,  custom = monter2},
		{ map = "69207298" ,fight = false ,  custom = monter3},
		{ map = "69208322" ,fight = false ,  custom = monter4},
		{ map = "69209346" ,fight = false ,  custom = zobal},
		{ map = "69208064" ,fight = false ,  custom = map1_zobal},
		{ map = "69207040" ,fight = false ,  custom = dopeul_zobal},
		{ map = "132359" ,fight = false ,  custom = mine},
		{ map = "4456450" ,fight = true , path = "394"},
		{ map = "132360" ,  custom = sacri },
		{ map = "17050624" ,fight = false ,  custom = map1_sacri},
		{ map = "17051648" ,fight = false ,  custom = map2_sacri},
		{ map = "17051650" ,fight = false ,  custom = dopeul_sacri},	
        { map = "5,7" ,fight = false ,  custom = checkpoint_sadi_feca },
        { map = "5,6" ,fight = false ,  custom = checkpoint_est_ouest },
        { map = "1,5" ,fight = false ,  custom = checkpoint_iop_cra },
		{ map = "8,3" ,fight = false ,  custom = checkpoint_osa_steam_eni },
		{ map = "2,0" ,fight = false ,  custom = checkpoint_panda_sram },
        { map = "1,-7",fight = true , path = "top" },
        { map = "0,-7",fight = true , path = "left" },
        { map = "0,-6",fight = true , path = "top" },
		{ map = "-1,-7" ,fight = true , path = "left" },
        { map = "0,-5",fight = true , path = "top" },
        { map = "1,-4",fight = true , path = "top" },
        { map = "0,-4",fight = true , path = "right" },
        { map = "-1,-3",fight = true , path = "top" },
        { map = "-1,-2",fight = true , path = "top" },
		{ map = "1,-6" ,fight = true , path = "top" },
        { map = "0,-2",fight = true , path = "left" },
        { map = "1,-2",fight = true , path = "left" },
        { map = "2,-2",fight = true , path = "left" },
        { map = "2,-1",fight = true , path = "top" },
        { map = "3,-2",fight = true , path = "left" },
        { map = "4,-1",fight = true , path = "top" },
        { map = "4,0",fight = true , path = "top" },
        { map = "3,0",fight = true , path = "right" },
        { map = "1,1",fight = true , path = "right" },
        { map = "0,1",fight = true , path = "right" },
        { map = "-1,1",fight = true , path = "right" },
        { map = "-2,1",fight = true , path = "right" },
        { map = "-3,1",fight = true , path = "right" },
        { map = "-4,1",fight = true , path = "right" },
        { map = "-3,0",fight = false ,  custom = sram1 },
        { map = "-2,0",fight = false ,  custom = sram1 },
        { map = "-1,0",fight = false ,  custom = sram1 },
		{ map = "0,0" ,fight = false ,  custom = sram1 },
        { map = "1,0",fight = false , custom = sram1 },
        { map = "2,1",fight = true , path = "top" },
        { map = "2,2",fight = true , path = "top" },
        { map = "2,3",fight = true , path = "top" },
        { map = "3,2",fight = true , path = "bottom" },
        { map = "4,1",fight = true , path = "left" },
        { map = "88082710",fight = true , path = "left" },
		{ map = "99096077" ,fight = true , path = "bottom" },
        { map = "6,1",fight = true , path = "left" },
        { map = "8,1",fight = true , path = "left" },
        { map = "7,2",fight = true , path = "top" },
        { map = "7,3",fight = true , path = "top" },
        { map = "9,2",fight = true , path = "top" },
        { map = "9,3",fight = true , path = "top" },
        { map = "8,4",fight = true , path = "top" },
        { map = "8,5",fight = true , path = "top" },
        { map = "8,6",fight = true , path = "top" },
        { map = "7,6",fight = true , path = "right" },
        { map = "6,6",fight = true , path = "right" },
        { map = "-1,2",fight = true , path = "bottom" },
        { map = "0,2",fight = true , path = "left" },
        { map = "1,2",fight = true , path = "left" },
        { map = "4,6",fight = true , path = "right" },
        { map = "3,6",fight = true , path = "right" },
        { map = "2,6",fight = true , path = "right" },
        { map = "1,6",fight = true , path = "right" },
        { map = "0,6",fight = true , path = "right" },
        { map = "-1,6",fight = true , path = "right" },
        { map = "-1,5",fight = true , path = "bottom" },
        { map = "-1,4",fight = true , path = "bottom" },
        { map = "-1,3",fight = true , path = "bottom" },
        { map = "0,4",fight = true , path = "top" },
        { map = "0,5",fight = true , path = "top" },
        { map = "1,4",fight = true , path = "top" },
        { map = "2,5",fight = true , path = "left" },
        { map = "3,5",fight = true , path = "left" },
        { map = "4,5",fight = true , path = "left" },
        { map = "5,5",fight = true , path = "left" },
        { map = "5,9",fight = true , path = "top" },
        { map = "5,10",fight = true , path = "top" },
        { map = "4,10",fight = true , path = "right" },
        { map = "3,10",fight = true , path = "right" },
        { map = "2,10",fight = true , path = "right" },
        { map = "1,10",fight = true , path = "right" },
        { map = "0,10",fight = true , path = "right" },
        { map = "-1,10",fight = true , path = "right" },
        { map = "0,9",fight = false , custom = sadida2 },
        { map = "0,8",fight = true , path = "bottom" },
        { map = "0,7",fight = true , path = "bottom" },
        { map = "1,7",fight = true , path = "left" },
        { map = "2,7",fight = true , path = "left" },
        { map = "3,7",fight = true , path = "left" },
        { map = "4,7",fight = true , path = "left" },
        { map = "6,8",fight = true , path = "left" },
        { map = "7,8",fight = true , path = "left" },
        { map = "8,8",fight = true , path = "left" },
        { map = "9,8",fight = true , path = "left" },
        { map = "10,8",fight = true , path = "left" },
        { map = "11,8",fight = true , path = "left" },
        { map = "12,8",fight = true , path = "left" },
        { map = "12,7",fight = true , path = "bottom" },
        { map = "12,6",fight = true , path = "bottom" },
        { map = "11,5",fight = true , path = "right" },
        { map = "11,6",fight = true , path = "top" },
        { map = "11,7",fight = true , path = "top" },
        { map = "10,7",fight = true , path = "right" },
        { map = "9,7",fight = true , path = "right" },
        { map = "8,7",fight = true , path = "right" },
        { map = "7,7",fight = true , path = "right" },
        { map = "6,7",fight = true , path = "right" },
        { map = "5,8",fight = true , path = "top" },
        { map = "8,-2",fight = true , path = "left" },
    }
end



