


autovente = true -- mets true si tu veux qu'il vende
temps_reconection = 8 -- temps de reco apres 4000 recoltes / 800 combats
OPEN_BAGS = true -- Autorisation d'ouverture des sacs de récolte
GATHER = {111, 261, 47, 38, 39, 42, 43,44,45, 134} -- ressources qu'il drop dans l'ordre Seigle, Millet, Malt, Blé, Houblon, Lin, Orge, Avoine, Frostiz
PLANNING = {} -- si "PLANNING = {11,12} " il ne recoltera pas de 11h a 13h


choixlevel = 21 -- choix du level auquel le bot va xp

DELETTE = true -- supprime ton inventaire au moment de passer paysan pour pas encombrer la banque

------------------------------------------
--bouftous celestes(lvl 5)--
---level 1 à 5--
monstresmax1 = 2
monstresmini1 = 1
----------------	
---level 5 à 10--
monstresmax2 = 3
monstresmini2 = 1
----------------
-----------------------------

----piou (lvl 20)----
---level 10 à 20---
monstresmax3 = 2
monstresmini3 = 1
------------------
---level 20 à 45--
monstresmax4 = 4
monstresmini4 = 3
------------------
---------------------

---araknes(lvl 40)---
---level 45 à 60---
monstresmax5 = 2
monstresmini5 = 1
-------------------
---level 60 à 80---
monstresmax5 = 3
monstresmini5 = 1
-------------------
--level 80 à 100--		
monstresmax6 = 4
monstresmini6 = 3
------------------
---------------------

---------------------------------------------



OPEN_BAGS = true -- Autorisation d'ouverture des sacs de récolte
FOLLOW_NORMAL = true -- Les mules se déplacent en même temps, après le chef


a=0
g=1
b=0
u=0







c=0
d=0
e=0
f=0
h=0
w=0
z=0

function droite()
a=0
map:changeMap("right")
end
function gauche()
a=0
map:changeMap("left")
end
function talktonpc()
npc:npc(888,3)
npc:reply(-1)
npc:reply(-1)
end

function prendrekamas4()
    npc:npc(522,3)
    npc:reply(-1) 
    exchange:getKamas(0)
    global:leaveDialog()
    global:resetCountFight()
    a = character:kamas()
    global:printSuccess("j'ai actuellement ce nombre de kamas = "..a)
    global:printSuccess("800 combats max, je me reco dans quelques heures")
    global:reconnect(temps_reconection)
end


function customNpcToAstrub()
    npc:npc(888,3)
    global:delay(654)
    npc:reply(-1) 
    global:delay(435)
    npc:reply(-1) 
    global:delay(435)
    npc:reply(-1)
end

function prendrekamas1()
    npc:npc(522,3)
    global:delay(654)
    npc:reply(-1) 
    global:delay(435)
    global:printSuccess("Ouvrant la banque et prenant les kamas")
    exchange:getKamas(0)
    global:leaveDialog()
   
end
function prendrekamas2()
    npc:npc(522,3)
    global:delay(654)
    npc:reply(-1) 
    global:printSuccess("Ouvrant la banque et prenant les kamas")
    exchange:putAllItems()
    exchange:getKamas(0)
    global:leaveDialog()
    map:moveToCell(396)
end


function bonta10()
npc:npcBuy()
sale:buyItem(6965,1,10000)
global:leaveDialog()
inventory:useItem(6965)
end

function bonta2()
      npc:npcBuy()
      sale:buyItem(6965,1,10000)
      global:leaveDialog()
      inventory:useItem(6965)
end


function zaap1()
map:useById(260872,-2)
map:changeMap("right")
end

function zaapvendre()
map:useById(456126,-2)
a=0
map:changeMap("top")
end

function zaap()
map:useById(456126,-2)
map:changeMap("top")
a=0
end

function statue()
if character:breed() == 1 then
map:useById(465398,-2)
end
map:useById(465398,-1)
end

function Selling()
if inventory:podsP() > 80 then
npc:npcSale()
if sale:itemsOnSale() > 0 then
   sale:updateAllItems()
end
npc:leaveDialog()
 npc:npcSale()
    if character:kamas() > 200 then
        Priceitem = sale:getPriceItem(287, 3)
        while (inventory:itemCount(287) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(287, 100, Priceitem -1)
        end 
        Priceitem = sale:getPriceItem(287, 2) 
        while (inventory:itemCount(287) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(287, 10, Priceitem -1) 
        end 
    Priceitem = sale:getPriceItem(6897, 3) 
        while (inventory:itemCount(6897) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6897, 100, Priceitem -1) 
        end 
    Priceitem = sale:getPriceItem(6897, 2) 
        while (inventory:itemCount(6897) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6897, 10, Priceitem -1) 
        end 
    Priceitem = sale:getPriceItem(6898, 3) 
        while (inventory:itemCount(6898) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6898, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6898, 2) 
        while (inventory:itemCount(6898) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6898, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6899, 3) 
        while (inventory:itemCount(6899) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6899, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6899, 2) 
        while (inventory:itemCount(6899) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6899, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6900, 3) 
        while (inventory:itemCount(6900) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6900, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6900, 2) 
        while (inventory:itemCount(6900) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6900, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6902, 3) 
        while (inventory:itemCount(6902) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6902, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(6902, 2) 
        while (inventory:itemCount(6902) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6902, 10, Priceitem -1) 
        end 
           Priceitem = sale:getPriceItem(6903, 3) 
        while (inventory:itemCount(6903) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6903, 100, Priceitem -1) 
        end 
           Priceitem = sale:getPriceItem(6903, 2) 
        while (inventory:itemCount(6903) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(6903, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(365, 3) 
        while (inventory:itemCount(365) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(365, 100, Priceitem -1) 
        end
        Priceitem = sale:getPriceItem(17112, 3) 
        while (inventory:itemCount(17112) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(17112, 100, Priceitem -1) 
        end
        Priceitem = sale:getPriceItem(2656, 3) 
        while (inventory:itemCount(2656) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(2656, 100, Priceitem -1) 
        end
        Priceitem = sale:getPriceItem(2656, 2) 
        while (inventory:itemCount(2656) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(2656, 10, Priceitem -1) 
        end
        Priceitem = sale:getPriceItem(17116, 2) 
        while (inventory:itemCount(17116) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(17116, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(17118, 2) 
        while (inventory:itemCount(17118) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(17118, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(17114, 2) 
        while (inventory:itemCount(17114) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(17114, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(365, 2) 
        while (inventory:itemCount(365) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(365, 10, Priceitem -1) 
        end
        Priceitem = sale:getPriceItem(388, 2) 
        while (inventory:itemCount(388) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(388, 10, Priceitem -1) 
        end
        Priceitem = sale:getPriceItem(17110, 2) 
        while (inventory:itemCount(17110) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(17110, 10, Priceitem -1) 
        end  
        Priceitem = sale:getPriceItem(519, 3) 
        while (inventory:itemCount(519) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(519, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(311, 3) 
        while (inventory:itemCount(311) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(311, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(1978, 3) 
        while (inventory:itemCount(1978) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(1978, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(14679, 3) 
        while (inventory:itemCount(14679) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(14679, 100, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(311, 2) 
        while (inventory:itemCount(311) > 9) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(311, 10, Priceitem -1) 
        end 
        Priceitem = sale:getPriceItem(678, 1) 
        while (inventory:itemCount(678) > 0) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
            sale:sellItem(678, 1, Priceitem -1) 
        end 
    end
npc:leaveDialog()
end
end

function Selling2()
if inventory:podsP() > 50 and character:kamas() < kamas_minimum then
npc:npcSale()
if sale:itemsOnSale() > 0 then
   sale:updateAllItems()
end
if vente_max < sale:itemsOnSale() then
     Priceitem = sale:getPriceItem(395, 3)
     while (inventory:itemCount(395) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(395, 100, Priceitem -1)
     end 
     Priceitem = sale:getPriceItem(421, 3)
     while (inventory:itemCount(421) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(421, 100, Priceitem -1)
     end 
     Priceitem = sale:getPriceItem(428, 3)
     while (inventory:itemCount(428) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(428, 100, Priceitem -1)
     end 
     Priceitem = sale:getPriceItem(380, 3)
     while (inventory:itemCount(380) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(380, 100, Priceitem -1)
     end 
     Priceitem = sale:getPriceItem(593, 3)
     while (inventory:itemCount(593) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(593, 100, Priceitem -1)
     end 
     Priceitem = sale:getPriceItem(594, 3)
     while (inventory:itemCount(594) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(594, 100, Priceitem -1)
     end 
     Priceitem = sale:getPriceItem(11102, 3)
     while (inventory:itemCount(11102) > 99) and (sale:availableSpace() > 0) and (Priceitem > 50) and (character:kamas() > (Priceitem*0.03)) do 
         sale:sellItem(11102, 100, Priceitem -1)
     end 
end
npc:leaveDialog()
end

end
function supprimer()
if DELETTE == true then 
ids = 0
while ids < 24000 do
ids = ids + 1
mdrrr = 0


if ids != 10207 and ids != 10784 and ids != 10785 and ids != 10798 and ids != 10800 and ids != 10801 and ids != 10797 and ids != 10799 and ids != 10794 and ids != 14737 and ids != 14738 and ids != 14739 and ids != 14740 and ids != 14741 then
while inventory:itemCount(ids) > 0 do
 inventory:deleteItem(ids,1)
end
end
end
end
end




function move00()
if global:getCountFight() > 799 or global:maximumNumberFightsOfDay() == true then
          return kamas4() 
end

if b == 0 and  (character:kamas()> 300 or inventory:podsP() <= 79) then
           b=0
           AUTO_DELETE={1673,1527,2411,2414,2466,1734,6919,2428,14741,8213,8214,8215,8216,8217,8218,8219,8220,8221,8222,8223,8224,8225,8226,8227,8228,8229,8230,8231,8232,8233,8234,8235,8236,8237,8238,8239,8240,8241,8242,8243,8244,8245,8246,8247,8248,2416,6922,6916,2661,6918,2419,642,2425,300,6897,8227,6920,6915,2473,6921,2476,14737,1736,304,881,882,395,384,883,14687,2467,885,2422,884,2419,14672,2477,14674,14739,14741,6911,2478,6910,6914,6913,6912,14680,1527,1528,887,14741,14739,14673,1434,1978,387,6909,367,486,393,14679}
end

                          
if b == 0 then
     return move0()
end
end

function messagesRegistering()
    developer:registerMessage("TextInformationMessage", getTextInformationMessage)
end

function getTextInformationMessage(message)
    messageId = tonumber(developer:deserializeObject(message,"msgId"))
    messageType = tonumber(developer:deserializeObject(message,"msgType"))


    if messageId == 420 and messageType == 1 then
        stopGathering()
    end
end
function stopGathering()
    getKamas = character:kamas()
    global:printSuccess("J'ai actuellement ")
    global:printSuccess(getKamas)
    global:printSuccess("Kamas.")
    global:printSuccess("4000 recoltes max, je me reco dans quelques heures")
    global:reconnect(temps_reconection)
end

function move0()

	if character:level() >= 1 then
			zone = 1
	                if character:level() >= 6 then
		        	zone = 2
		 		if character:level() >=10 then
					zone = 3
				        if character:level() >=25 then
					        zone = 4
					        if character:level () >= 45 then
						         zone = 5
                            			         if character:level () >= 60 then
						                 zone = 6
                                                                 if character:level () >= 80 then
						                         zone = 7
                                                                 end
                                                         end
                                                end          						               
					end			
				end
		end
end
if zone == 1 then 
                MIN_MONSTERS = monstresmini1
                MAX_MONSTERS = monstresmax1
		return move1()
        elseif zone == 2 then 
                MIN_MONSTERS = monstresmini2
                MAX_MONSTERS = monstresmax2
		return move1()
	elseif zone == 3 then
                MIN_MONSTERS = monstresmini3
                MAX_MONSTERS = monstresmax3
		return move2()
	elseif zone == 4 then
                MIN_MONSTERS = monstresmini4
                MAX_MONSTERS = monstresmax4
		return move2()
	elseif zone == 5 then
                MIN_MONSTERS = monstresmini5
                MAX_MONSTERS = monstresmax5
		return move3()
	elseif zone == 6 then
                MIN_MONSTERS = monstresmini6
                MAX_MONSTERS = monstresmax6
		return move3()
        elseif zone == 7 then
                MIN_MONSTERS = monstresmini7
                MAX_MONSTERS = monstresmax7
		return move3()
end
end

function bank()
if choixlevel > character:level() then
    return bank1()
else
    return bank2()
end
end




function sauvegarde()
map:saveZaap()
end


function move()
if choixlevel > character:level() then
    return move00()
else
    return move111()
end

end




function banquier()
    npc:npc(100,3)
    npc:reply(-1) 
    global:printSuccess("Ouvrant la banque en deposant les ressources et prenant les kamas")
    exchange:getKamas(0)
    exchange:putAllItems()
    global:leaveDialog()
    if character:kamas() < 50 then
    global:printSuccess("plus assez de kamas pour continuer j'attend la vente")
    global:reconnect(5)
    end
    map:moveToCell(424)
end

function revente()
if character:kamas() > 100 and autovente == true then
 npc:npcSale() -- On parle au npc qui permet de vendre
            Priceitem = sale:getPriceItem(287, 3) -- On déclare "Priceitem" qui contiendra le prix des Graines de Sésame.
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(287) > 99) and (sale:availableSpace() > 0) do -- Boucle qui continue tant qu'on a des objets sur nous et que y'a de la place dans l'hdv
            sale:sellItem(287, 100, Priceitem -1) -- On vend l'item un kamas en dessous du prix précédamment récupéré
        end 
	    Priceitem = sale:getPriceItem(6897, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(6897) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(6897, 100, Priceitem -1) 
        end 
	   Priceitem = sale:getPriceItem(6898, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(6898) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(6898, 100, Priceitem -1) 
        end 
	   Priceitem = sale:getPriceItem(6899, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(6899) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(6899, 100, Priceitem -1) 
        end 
	   Priceitem = sale:getPriceItem(6900, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(6900) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(6900, 100, Priceitem -1) 
        end 
	   Priceitem = sale:getPriceItem(6902, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(6902) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(6902, 100, Priceitem -1) 
        end 
		   Priceitem = sale:getPriceItem(6903, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(6903) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(6903, 100, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(365, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(365) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(365, 100, Priceitem -1) 
        end
	           Priceitem = sale:getPriceItem(17112, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(17112) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(17112, 100, Priceitem -1) 
        end
	           Priceitem = sale:getPriceItem(2656, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(2656) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(2656, 100, Priceitem -1) 
        end  
	           Priceitem = sale:getPriceItem(519, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(519) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(519, 100, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(519, 2) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(519) > 9) and (sale:availableSpace() > 0) do 
            sale:sellItem(519, 10, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(311, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(311) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(311, 100, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(311, 2) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(311) > 9) and (sale:availableSpace() > 0) do 
            sale:sellItem(311, 10, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(678, 1) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(678) > 0) and (sale:availableSpace() > 0) do 
            sale:sellItem(678, 1, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(425, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(425) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(425, 100, Priceitem -1) 
        end 
	           Priceitem = sale:getPriceItem(533, 3) 
        while character:kamas() > (Priceitem *0.03) and (inventory:itemCount(533) > 99) and (sale:availableSpace() > 0) do 
            sale:sellItem(533, 100, Priceitem -1) 
        end 
	npc:leaveDialog()
end
        map:door(383)
end

function zaapbonta()
map:useById(260872,-2)
end


function paysan1()
if map:currentCell() == 289 then
      map:changeMap("left")
end
if map:currentCell() != 289  then
      map:door(275)
end
end

function paysan2()
      npc:npc(558,3)
      npc:reply(-1)
      npc:reply(-1) 
      global:leaveDialog()
      map:moveToCell(424)
end

function move111()
  return {
   { map = "2,6", path = "right" },
   { map = "1,5", path = "right" },
   { map = "2,5", path = "right" },
   { map = "2,4", path = "right" },
   { map = "1,4", path = "right" },
   { map = "0,4", path = "right" },
   { map = "-1,4", path = "right" },
   { map = "-1,5", path = "right" },
   { map = "0,5", path = "right" },
   { map = "-1,6", path = "right" },
   { map = "0,6", path = "right" },
   { map = "1,6", path = "right" },
   { map = "2,7", path = "top" },
   { map = "2,8", path = "top" },
   { map = "3,7", path = "left" },
   { map = "3,8", path = "left" },
   { map = "1,7", path = "right" },
   { map = "1,8", path = "right" },
   { map = "0,7", path = "right" },
        { map = "3,4", path = "top" },
        { map = "3,5", path = "top" },
        { map = "3,6", path = "top" },
        { map = "5,4", path = "top" },
        { map = "4,4", path = "right" },
        { map = "4,5", path = "right" },
        { map = "5,5", path = "top" },
        { map = "5,6", path = "top" },
        { map = "4,6", path = "top" },
        { map = "4,7", path = "top" },
        { map = "5,7", path = "top" },
        { map = "6,4", path = "top" },
        { map = "6,5", path = "top" },
        { map = "6,6", path = "top" },
        { map = "6,7", path = "top" },
        { map = "7,5", path = "top" },
        { map = "7,4", path = "top" },
        { map = "3,2", path = "bottom" },
        { map = "3,1", path = "bottom" },
        { map = "2,2", path = "bottom" },
        { map = "2,1", path = "bottom" },
        { map = "2,0", path = "bottom" },
        { map = "2,-1", path = "bottom" },
        { map = "8,3", path = "right" },
        { map = "7,3", path = "right" },
        { map = "6,3", path = "right" },
        { map = "5,3", path = "right" },
        { map = "4,3", path = "right" },
        { map = "3,3", path = "right" },
        { map = "2,3", path = "right" },
        { map = "1,3", path = "right" },
        { map = "0,3", path = "right" },
        { map = "1,1", path = "bottom" },
        { map = "1,0", path = "bottom" },
        { map = "1,-1", path = "bottom" },
        { map = "0,1", path = "bottom" },
        { map = "0,-1", path = "bottom" },
        { map = "-1,1", path = "bottom" },
        { map = "-1,0", path = "bottom" },
        { map = "1,2", path = "bottom" },
        { map = "0,2", path = "right" },
        { map = "-1,2", path = "right" },
        { map = "9,3", custom = customNpcToAstrub },

   { map = "4,-16", path = "top" },
   { map = "4,-18", path = "top" },
   { map = "4,-17", path = "top" },
   { map = "3,-17", path = "top" },
   { map = "3,-18", path = "top" },
   { map = "3,-16", path = "top" },
   { map = "3,-15", path = "top" },
   { map = "4,-15", path = "top" },
   { map = "5,-16", path = "top" },
   { map = "5,-15", path = "top" },
   { map = "5,-17", path = "top" },
   { map = "5,-18", path = "top" },
   { map = "6,-18", path = "top" },
   { map = "6,-17", path = "top" },
   { map = "6,-15", path = "top" },
   { map = "6,-16", path = "top" },
   { map = "7,-15", path = "top" },
   { map = "7,-16", path = "top" },
   { map = "7,-17", path = "top" },
   { map = "7,-18", path = "top" },
   { map = "3,-14", path = "top" },
   { map = "2,-14", path = "right" },
   { map = "2,-15", path = "right" },
   { map = "2,-17", path = "right" },
   { map = "2,-18", path = "right" },
   { map = "2,-16", path = "right" },
   { map = "1,-17", path = "right" },
   { map = "1,-14", path = "right" },
   { map = "0,-14", path = "right" },
   { map = "-1,-14", path = "right" },
   { map = "-1,-15", path = "right" },
   { map = "0,-15", path = "right" },
   { map = "1,-15", path = "right" },
   { map = "1,-16", path = "right" },
   { map = "0,-16", path = "right" },
   { map = "-1,-16", path = "right" },
   { map = "0,-17", path = "right" },
   { map = "-1,-17", path = "right" },
   { map = "0,-19", path = "right" },
   { map = "0,-21", path = "right" },
   { map = "0,-20", path = "right" },
   { map = "1,-21", path = "right" },
   { map = "1,-20", path = "right" },
   { map = "2,-21", path = "right" },
   { map = "3,-20", path = "right" },
   { map = "2,-20", path = "right" },
   { map = "1,-19", path = "right" },
   { map = "2,-19", path = "right" },
   { map = "3,-19", path = "right" },
   { map = "3,-21", path = "right" },
   { map = "4,-21", path = "bottom" },
   { map = "4,-20", path = "bottom" },
   { map = "5,-21", path = "bottom" },
   { map = "5,-20", path = "bottom" },
   { map = "6,-21", path = "bottom" },
   { map = "6,-20", path = "bottom" },
   { map = "7,-21", path = "bottom" },
   { map = "7,-20", path = "bottom" },
   { map = "3,-22", path = "bottom" },
   { map = "2,-22", path = "bottom" },

   { map = "4,-19", path = "right" },
   { map = "5,-19", path = "right" },
   { map = "6,-19", path = "right" },
   { map = "7,-19", path = "right" },
   { map = "8,-19",custom = supprimer , path = "top" },
   { map = "8,-20", path = "top" },
   { map = "8,-21", path = "top" },
   { map = "8,-23", path = "top" },
   { map = "8,-24", path = "top" },
   { map = "8,-22", path = "top" },
   { map = "8,-25", path = "left" },
   { map = "6,-25", path = "left" },
   { map = "5,-25", path = "left" },
   { map = "4,-25", path = "left" },
   { map = "3,-25", path = "left" },
   { map = "2,-25", path = "left" },
   { map = "0,-25", path = "left" },
   { map = "1,-25", path = "left" },
   { map = "-1,-25", path = "left" },
   { map = "-2,-25", path = "bottom" },
   { map = "-2,-24", path = "bottom" },
   { map = "-2,-23", path = "bottom" },
   { map = "-2,-22", path = "bottom" },
   { map = "-2,-21", path = "bottom" },
   { map = "5,-24", path = "bottom" },
   { map = "5,-23", path = "bottom" },
   { map = "5,-22", path = "bottom" },
   { map = "5,-21", path = "bottom" },
   { map = "5,-20", path = "left" },
   { map = "84676355", custom=paysan1 },
   { map = "83623938", custom=paysan2 },

   { map = "4,-20", path = "left" },
   { map = "3,-20", path = "left" },
   { map = "2,-20", path = "left" },
   { map = "1,-20", path = "left" },
   { map = "0,-20", path = "left" },
   { map = "-1,-20", path = "left" },
   { map = "-2,-20", path = "left" },
   { map = "-3,-20", path = "left" },
   { map = "-4,-20", path = "left" },
   { map = "-5,-20", path = "left" },
   { map = "-6,-20", path = "left" },
   { map = "-7,-20", path = "left" },
   { map = "-8,-20", path = "left" },
   { map = "-9,-20", path = "left" },
   { map = "-10,-20", path = "left" },
   { map = "-11,-20", path = "left" },
   { map = "-12,-20", path = "left" },
   { map = "-13,-20", path = "left" },
   { map = "-14,-20", path = "left" },
   { map = "-15,-20", path = "left" },
   { map = "-16,-20", path = "left" },
   { map = "-17,-20", path = "left" },
   { map = "-19,-20", path = "left" },
   { map = "-18,-20", path = "left" },
   { map = "-20,-20", path = "top" },
   { map = "-20,-21", path = "top" },
   { map = "-20,-22", path = "top" },
   { map = "-20,-23", path = "top" },
   { map = "-20,-24", path = "top" },
   { map = "-20,-26", path = "top" },
   { map = "-20,-25", path = "top" },
   { map = "-20,-27", path = "top" },
   { map = "-20,-28", path = "top" },
   { map = "-19,-29", path = "top" },
   { map = "-20,-29", path = "right" },
   { map = "-19,-31", path = "top" },
   { map = "-19,-30", path = "top" },
   { map = "-19,-32", path = "top" },
   { map = "-19,-34", path = "top" },
   { map = "-19,-35", path = "top" },
   { map = "-19,-36", path = "top" },
   { map = "-19,-33", path = "top" },
   { map = "-32,-56",custom=zaapbonta,path = "bottom" },
   { map = "-26,-37", path = "top", gather = true },
   { map = "-26,-36", path = "top", gather = true },
   { map = "-26,-39", path = "right", gather = true },
   { map = "-25,-39", path = "top", gather = true },
   { map = "-24,-40", path = "top", gather = true },
   { map = "-24,-41", path = "left(280)", gather = true },
   { map = "-25,-42", path = "left", gather = true },
   { map = "-25,-40", path = "right", gather = true },
   { map = "-26,-40", path = "left", gather = true },
   { map = "-27,-40", path = "top", gather = true },
   { map = "-27,-41", path = "top", gather = true },
   { map = "-27,-43", path = "left", gather = true },
   { map = "-28,-45", path = "left", gather = true },
   { map = "-29,-44", path = "left", gather = true },
   { map = "-30,-44", path = "left", gather = true },
   { map = "-31,-41", path = "left", gather = true },
   { map = "-32,-41", path = "bottom", gather = true },
   { map = "-28,-44", path = "top", gather = true },
   { map = "-31,-42", path = "right(307)", gather = true },
   { map = "-29,-41", path = "left", gather = true },
   { map = "-29,-42", path = "bottom", gather = true },
   { map = "-28,-40", path = "bottom", gather = true },
   { map = "-31,-39", path = "bottom", gather = true },
   { map = "-29,-38", path = "right", gather = true },
   { map = "-28,-36", path = "right", gather = true },
   { map = "-29,-36", path = "right", gather = true },
   { map = "-28,-37", path = "left(280)", gather = true },
   { map = "-29,-37", path = "left", gather = true },
   { map = "-30,-37", path = "bottom", gather = true },
   { map = "-29,-39", path = "left", gather = true },
   { map = "-30,-39", path = "left", gather = true },
   { map = "-29,-40", path = "right", gather = true },
   { map = "-30,-38", path = "right", gather = true },
   { map = "-26,-38", path = "top" },
   { map = "-25,-41", path = "top" },
   { map = "-26,-42", path = "bottom" },
   { map = "-26,-41", path = "bottom" },
   { map = "-27,-42", path = "top" },
   { map = "-28,-43", path = "top" },
   { map = "-29,-45", path = "bottom" },
   { map = "-31,-44", path = "bottom" },
   { map = "-31,-43", path = "bottom" },
   { map = "-30,-42", path = "right" },
   { map = "-32,-40", path = "right" },
   { map = "-31,-40", path = "right" },
   { map = "-30,-40", path = "right" },
   { map = "-28,-39", path = "left" },
   { map = "-31,-38", path = "right" },
   { map = "-28,-38", path = "bottom" },
   { map = "-30,-36", path = "right" },
   { map = "-27,-36", path = "right" },
   { map = "-30,-41", path = "left" },
   { map = "-18,-37", path = "top" },
   { map = "-19,-37", path = "right" },
   { map = "-18,-38", path = "top" },
   { map = "-18,-39", path = "top" },
   { map = "-18,-40", path = "top" },
   { map = "-18,-41", path = "top" },
   { map = "-18,-42", path = "top" },
   { map = "-18,-43", path = "top" },
   { map = "-18,-44", path = "top" },
   { map = "-18,-45", path = "top" },
   { map = "-19,-46", path = "top" },
   { map = "-20,-47", path = "top" },
   { map = "-20,-48", path = "left" },
   { map = "-21,-48", path = "left" },
   { map = "-22,-48", path = "left" },
   { map = "-23,-48", path = "left" },
   { map = "-24,-48", path = "left" },
   { map = "-25,-48", path = "top" },
   { map = "-25,-49", path = "top" },
   { map = "-25,-50", path = "top" },
   { map = "-25,-51", path = "top" },
   { map = "-25,-52", path = "top" },
   { map = "-25,-53", path = "top" },
   { map = "-25,-54", path = "top" },
   { map = "-25,-55", path = "top" },
   { map = "-25,-56", path = "left" },
   { map = "-26,-56", path = "left" },
   { map = "-27,-56", path = "left" },
   { map = "-28,-56", path = "left" },
   { map = "-18,-46", path = "left" },
   { map = "-19,-47", path = "left" },
   { map = "-29,-56", path = "left" },
   { map = "-30,-56", path = "left" },
   { map = "-31,-56", path = "left" },
   { map = "-32,-55", path = "bottom" },
   { map = "-32,-54", path = "right" },
   { map = "-30,-54", path = "right" },
   { map = "-29,-54", path = "bottom" },
   { map = "-29,-53", path = "bottom" },
   { map = "-29,-52", path = "bottom" },
   { map = "-29,-51", path = "bottom" },
   { map = "-29,-49", path = "bottom" },
   { map = "-29,-48", path = "bottom" },
   { map = "-29,-47", path = "bottom" },
   { map = "-29,-50", path = "bottom" },
   { map = "-29,-46", path = "bottom" },
   { map = "147254",path = "right" }, 
   { map = "2885641", path = "424" },
  }
end


function bank2()
  return {
   { map = "2,6", path = "right" },
   { map = "1,5", path = "right" },
   { map = "2,5", path = "right" },
   { map = "2,4", path = "right" },
   { map = "1,4", path = "right" },
   { map = "0,4", path = "right" },
   { map = "-1,4", path = "right" },
   { map = "-1,5", path = "right" },
   { map = "0,5", path = "right" },
   { map = "-1,6", path = "right" },
   { map = "0,6", path = "right" },
   { map = "1,6", path = "right" },
   { map = "2,7", path = "top" },
   { map = "2,8", path = "top" },
   { map = "3,7", path = "left" },
   { map = "3,8", path = "left" },
   { map = "1,7", path = "right" },
   { map = "1,8", path = "right" },
   { map = "0,7", path = "right" },
   { map = "-26,-37", path = "left" },
   { map = "-26,-36", path = "left" },
   { map = "-26,-39", path = "left" },
   { map = "-25,-39", path = "left" },
   { map = "-24,-40", path = "left" },
   { map = "-24,-41", path = "left(280)" },
   { map = "-25,-42", path = "left" },
   { map = "-25,-40", path = "left" },
   { map = "-26,-40", path = "left" },
   { map = "-27,-40", path = "left" },
   { map = "-27,-41", path = "left" },
   { map = "-27,-43", path = "left" },
   { map = "-28,-45", path = "left" },
   { map = "-29,-44", path = "top" },
   { map = "-30,-44", path = "right" },
   { map = "-31,-41", path = "right" },
   { map = "-32,-41", path = "right" },
   { map = "-28,-44", path = "left" },
   { map = "-31,-42", path = "right(307)" },
   { map = "-29,-41", path = "top" },
   { map = "-29,-42", path = "top" },
   { map = "-28,-40", path = "left" },
   { map = "-31,-39", path = "right" },
   { map = "-29,-38", path = "top" },
   { map = "-28,-36", path = "left" },
   { map = "-29,-36", path = "top(5)" },
   { map = "-28,-37", path = "left(280)" },
   { map = "-29,-37", path = "top" },
   { map = "-30,-37", path = "right" },
   { map = "-29,-39", path = "top" },
   { map = "-30,-39", path = "right" },
   { map = "-29,-40", path = "top" },
   { map = "-30,-38", path = "right" },
   { map = "-26,-38", path = "left" },
   { map = "-25,-41", path = "left" },
   { map = "-26,-42", path = "left" },
   { map = "-26,-41", path = "left" },
   { map = "-27,-42", path = "left" },
   { map = "-28,-43", path = "left" },
   { map = "-29,-45", path = "top" },
   { map = "-31,-44", path = "right" },
   { map = "-31,-43", path = "right" },
   { map = "-30,-42", path = "right" },
   { map = "-32,-40", path = "right" },
   { map = "-31,-40", path = "right" },
   { map = "-30,-40", path = "right" },
   { map = "-28,-39", path = "left" },
   { map = "-31,-38", path = "right" },
   { map = "-28,-38", path = "left" },
   { map = "-30,-36", path = "right" },
   { map = "-27,-36", path = "left" },
   { map = "-30,-41", path = "right" },
   { map = "-28,-41", path = "left" },
   { map = "-28,-42", path = "left" },
   { map = "-27,-39", path = "left" },
   { map = "-27,-38", path = "left" },
   { map = "-27,-37", path = "left" },
   { map = "-30,-43", path = "right" },
   { map = "-29,-43", path = "top" },
   { map = "-30,-54", path = "left" },
   { map = "-29,-54", path = "left" },
   { map = "-29,-53", path = "top" },
   { map = "-29,-52", path = "top" },
   { map = "-29,-51", path = "top" },
   { map = "-29,-49", path = "top" },
   { map = "-29,-48", path = "top" },
   { map = "-29,-47", path = "top" },
   { map = "-29,-50", path = "top" },
   { map = "-29,-46", path = "top" },
   { map = "147254",custom = revente }, 
   { map = "2885641", custom = banquier },
  }
end


function move1()
    return {

         -- Déplacements
        { map = "81264644", path ="bottom" },
        { map = "83887104", door = "396"},
        { map = "81267714", path ="bottom" },
        { map = "84674566", path ="left" },
        { map = "3,-16", custom=statue },
        { map = "81266690", path = "bottom" },
        { map = "81264642", path = "bottom" },
        { map = "81266688", path = "bottom" },
        { map = "81267712", path = "bottom" },
        { map = "81268739", path = "right" },
        { map = "81269763", path = "right" },
        { map = "81270787", path = "bottom" },
        { map = "1,3", path = "left" },
        { map = "-42,-33", path = "top" },
        { map = "-22,-29", path = "top" },
        { map = "3,-22", path = "top" },
        { map = "31,2", path = "top" },
        { map = "30,2", path = "top" },
        { map = "27,1", path = "top" },
        { map = "23,0", path = "top" },
        { map = "19,-1", path = "top" },
        { map = "16,-1", path = "top" },
        { map = "13,-2", path = "top" },
        { map = "19,10", path = "top" },
        { map = "0,2", path = "top" },
        { map = "0,3", path = "top" },
        { map = "6,6", path = "left" },
        { map = "5,6", path = "left" },
        { map = "4,6", path = "left" },
        { map = "3,6", path = "left" },
        { map = "2,6", path = "left" },
        { map = "1,6", path = "left" },
        { map = "0,6", path = "top" },
        { map = "0,5", path = "top" },
        { map = "0,4", path = "top" },

        -- Combats
        { map = "-1,-1", path = "top|right|bottom", fight = true, custom = Selling },
        { map = "0,-2", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "1,-1", path = "left|bottom", fight = true, custom = Selling },
        { map = "1,0", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "-1,0", path = "right|bottom", fight = true, custom = Selling },
        { map = "0,-1", path = "right|bottom", fight = true, custom = Selling },
        { map = "-1,1", path = "top|bottom|right", fight = true, custom = Selling },
        { map = "-2,1", path = "top|right", fight = true, custom = Selling },
        { map = "-1,2", path = "top|right", fight = true, custom = Selling },
        { map = "-2,0", path = "right|bottom", fight = true, custom = Selling },
        { map = "-1,-2", path = "right|bottom", fight = true, custom = Selling },
        { map = "1,-2", path = "left|bottom", fight = true, custom = Selling },
        { map = "2,0", path = "left|bottom", fight = true, custom = Selling },
        { map = "2,1", path = "top|left", fight = true, custom = Selling },
        { map = "1,1", path = "top|left|right", fight = true, custom = Selling },
        { map = "0,1", path = "top|left|right", fight = true, custom = Selling },
        { map = "0,0", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "-5,-1", path ="bottom" },
    }
end


function move2()
    return {


        -- Déplacements
        { map = "0,2", path = "top" },
        { map = "-1,2", path = "top" },
        { map = "81267714", path ="bottom" },
        { map = "81264642", path = "bottom" },
        { map = "0,3", path = "right" },
        { map = "1,3", path = "right" },
        { map = "2,3", path = "right" },
        { map = "3,3", path = "bottom" },
        { map = "83887104", path = "396" },
        { map = "84674566", path ="left" },
        { map = "3,-16", custom=statue },
        { map = "81266690", path = "bottom" },
        { map = "81266688", path = "bottom" },
        { map = "81267712", path = "bottom" },
        { map = "81268739", path = "right" },
        { map = "81269763", path = "right" },
        { map = "81270787", path = "bottom" },
        { map = "2,-1", path = "bottom" },
        { map = "2,0", path = "bottom" },
        { map = "-2,0", path = "bottom" },
        { map = "1,0", path = "bottom" },
        { map = "1,-1", path = "bottom" },
        { map = "0,-1", path = "bottom" },
        { map = "-1,0", path = "bottom" },
        { map = "-1,-1", path = "bottom" },
        { map = "3,3", path = "bottom" },
        { map = "3,2", path = "bottom" },
        { map = "3,1", path = "bottom" },
        { map = "-2,1", path = "right" },
        { map = "-1,1", path = "right" },
        { map = "0,1", path = "right" },
        { map = "1,1", path = "right" },
        { map = "2,1", path = "right" },
        { map = "5,6", path = "left" },
        { map = "6,6", path = "left" },
        { map = "0,0", path = "right" },

        -- Combats
        { map = "2,6", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "1,6", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "0,6", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "1,5", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "2,5", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "0,5", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "2,7", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "0,4", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "1,4", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "2,4", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "-1,4", path = "right|bottom", fight = true, custom = Selling },
        { map = "-1,5", path = "top|right|bottom", fight = true, custom = Selling },
        { map = "-1,6", path = "top|right", fight = true, custom = Selling },
        { map = "0,7", path = "top|right", fight = true, custom = Selling },
        { map = "1,8", path = "top|right", fight = true, custom = Selling },
        { map = "2,8", path = "top|left|right", fight = true, custom = Selling },
        { map = "1,7", path = "top|left|right|bottom", fight = true, custom = Selling },
        { map = "3,8", path = "top|left", fight = true, custom = Selling },
        { map = "3,7", path = "top|left|bottom", fight = true, custom = Selling },
        { map = "5,4", path = "left(168)|bottom", fight = true, custom = Selling },
        { map = "4,4", path = "left|right(139)", fight = true, custom = Selling },
        { map = "3,4", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "3,5", path = "left|top|right|bottom", fight = true, custom = Selling },
        { map = "3,6", path = "left|bottom|top|right", fight = true, custom = Selling },
        { map = "4,5", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "5,5", path = "bottom|left(476)", fight = true, custom = Selling },
        { map = "4,6", path = "top|left", fight = true, custom = Selling },
        { map = "-5,-1", path ="bottom" },

    }
end



function move3()
    return {

        -- Déplacements

   { map = "2,4", path = "right" },
   { map = "1,4", path = "right" },
   { map = "0,4", path = "right" },
   { map = "-1,4", path = "right" },
   { map = "-1,5", path = "right" },
   { map = "0,5", path = "right" },
   { map = "2,5", path = "right" },
   { map = "1,5", path = "right" },
   { map = "-1,6", path = "right" },
   { map = "0,6", path = "right" },
   { map = "1,6", path = "right" },
   { map = "2,6", path = "right" },
   { map = "0,7", path = "top" },
   { map = "2,7", path = "top" },
   { map = "1,7", path = "top" },
   { map = "3,7", path = "top" },
   { map = "3,8", path = "top" },
   { map = "2,8", path = "top" },
   { map = "1,8", path = "top" },
        { map = "81264642", path = "bottom" },
        { map = "0,3", path = "right" },
        { map = "1,3", path = "right" },
        { map = "2,3", path = "right" },
        { map = "3,3", path = "right" },
        { map = "4,3", path = "right" },
        { map = "5,3", path = "right" },
        { map = "6,3", path = "bottom" },
        { map = "83887104", path = "396" },
        { map = "84674566", path ="left" },
        { map = "3,-16",custom=statue },
        { map = "81266690", path = "bottom" },
        { map = "81266688", path = "bottom" },
        { map = "81267712", path = "bottom" },
        { map = "81268739", path = "right" },
        { map = "81269763", path = "right" },
        { map = "81270787", path = "bottom" },
        { map = "5,4", path = "right" },
        { map = "4,4", path = "right" },
        { map = "3,4", path = "right" },
        { map = "4,6", path = "right" },
        { map = "3,6", path = "right" },
        { map = "3,5", path = "right" },
        { map = "4,5", path = "right" },
        { map = "5,5", path = "right|bottom" },
        { map = "6,6", path = "left" },
        { map = "6,5", path = "top|left" },
        { map = "7,5", path = "left" },
        { map = "7,6", path = "top" },
        -- Combats

        { map = "5,7", path = "top|left|right", fight = true, custom = Selling },
        { map = "6,7", path = "left", fight = true, custom = Selling },
        { map = "5,6", path = "top|bottom", fight = true, custom = Selling },
        { map = "4,7", path = "right", fight = true, custom = Selling },
        { map = "7,4", path = "left|bottom", fight = true, custom = Selling },
        { map = "8,3", path = "left", fight = true, custom = Selling },
        { map = "5,3", path = "right", fight = true, custom = Selling },
        { map = "6,3", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "7,3", path = "left|right|bottom", fight = true, custom = Selling },
        { map = "6,4", path = "top|right|bottom", fight = true, custom = Selling },
        { map = "-5,-1", path ="bottom" },
    }
end

function phenix()
    return {
           {map = "80219143", door = "176", path = "left"},

           { map = "6,4", path = "right" },
           { map = "7,3", path = "bottom" },
           { map = "7,4", path = "bottom" },
           { map = "7,5", path = "bottom" },
           { map = "7,6", path = "left" },
    }

end

function bank1()
    return {
        { map = "-28,-38", path = "left" },
        { map = "-28,-39", path = "left" },
        { map = "-30,-43", path = "top" },
        { map = "-30,-42", path = "top" },
        { map = "-30,-41", path = "top" },
        { map = "-27,-45", path = "left" },
        { map = "-30,-38", path = "right" },
        { map = "-28,-42", path = "top" },
        { map = "-27,-42", path = "top" },
        { map = "-30,-40", path = "right" },
        { map = "-31,-40", path = "right" },
        { map = "-31,-38", path = "right" },
        { map = "-30,-38", path = "right" },
        { map = "-26,-38", path = "top" },
        { map = "-32,-40", path = "top" },
        { map = "-26,-42", path = "bottom" },
        { map = "-27,-40", path = "left" },
        { map = "-27,-44", path = "left" },
        { map = "-29,-36", path = "top(6)" },
        { map = "-29,-37", path = "top" },
        { map = "-29,-38", path = "top" },
        { map = "-29,-39", path = "top" },
        { map = "-29,-40", path = "top" },
        { map = "-29,-41", path = "top" },
        { map = "-29,-42", path = "top" },
        { map = "-29,-43", path = "top" },
        { map = "-29,-44", path = "top" },
        { map = "-29,-45", path = "top" },
        { map = "-29,-46", path = "top" },
        { map = "-29,-47", path = "top" },
        { map = "-29,-48", path = "top" },
        { map = "-29,-49", path = "top" },
        { map = "-29,-50", path = "top" },
        { map = "-29,-51", path = "top" },
        { map = "-29,-52", path = "top" },
        { map = "-29,-53", path = "top" },
        { map = "-29,-54", path = "left" },
        { map = "146742", path = "left(294)" },
        { map = "-31,-44", path = "right" },
        { map = "-30,-44", path = "right" },
        { map = "-31,-39", path = "right" },
        { map = "-30,-39", path = "right" },
        { map = "-30,-37", path = "right" },
        { map = "-30,-36", path = "right" },
        { map = "-32,-43", path = "right" },
        { map = "-32,-42", path = "right" },
        { map = "-32,-41", path = "right" },
        { map = "-31,-41", path = "top" },
        { map = "-31,-42", path = "top" },
        { map = "-31,-43", path = "top" },
        { map = "-28,-44", path = "left" },
        { map = "-28,-45", path = "left" },
        { map = "-27,-43", path = "left" },
        { map = "-26,-43", path = "left" },
        { map = "-28,-43", path = "left" },
        { map = "-24,-41", path = "left(252)" },
        { map = "-25,-41", path = "left(196)" },
        { map = "-26,-41", path = "left" },
        { map = "-27,-41", path = "left" },
        { map = "-28,-41", path = "left" },
        { map = "-28,-37", path = "left(280)" },
        { map = "-28,-36", path = "left" },
        { map = "-26,-36", path = "left" },
        { map = "-27,-36", path = "left" },
        { map = "-26,-37", path = "bottom" },
        { map = "-25,-42", path = "bottom" },
        { map = "-25,-40", path = "top(7)" },
        { map = "-25,-39", path = "top" },
        { map = "-24,-40", path = "top" },
        { map = "-28,-40", path = "top" },
        { map = "-26,-39", path = "top" },
        { map = "-26,-40", path = "top(6)" },


        -- Retour en banque
        { map = "147254", door = "383" }, -- Map extérieure de la banque, on utilise la porte de la banque, MAPID OBLIGATOIRE
        { map = "2885641", npcBank = true, path = "424" }, -- Map intérieure de la banque, on parle au banquier, MAPID OBLIGATOIRE
    }
end

function retour()
    return {
        { map = "-78,-41",custom = bonta10 },
        { map = "-26,-40", path = "top(6)" },
        { map = "-26,-39", path = "top" },
        { map = "-28,-40", path = "top" },
        { map = "-24,-40", path = "top" },
        { map = "-25,-40", path = "top(7)" },
        { map = "-25,-42", path = "bottom" },
        { map = "-26,-37", path = "bottom" },
        { map = "-27,-36", path = "left" },
        { map = "-26,-36", path = "left" },
        { map = "-28,-36", path = "left" },
        { map = "-28,-37",path = "left(280)" },
        { map = "-28,-41", path = "left" },
        { map = "-27,-41", path = "left" },
        { map = "-26,-41", path = "left" },
        { map = "-25,-41", path = "left(196)" },
        { map = "-24,-41", path = "left(252)" },
        { map = "-28,-43", path = "left" },
        { map = "-27,-43", path = "left" },
        { map = "-28,-45", path = "left" },
        { map = "-28,-44", path = "left" },
        { map = "-31,-43", path = "top" },
        { map = "-31,-42", path = "top" },
        { map = "-31,-41", path = "top" },
        { map = "-32,-41", path = "right" },
        { map = "-32,-42", path = "right" },
        { map = "-32,-43", path = "right" },
        { map = "-30,-36", path = "right" },
        { map = "-30,-37", path = "right" },
        { map = "-30,-39", path = "right" },
        { map = "-31,-39", path = "right" },
        { map = "-30,-44", path = "right" },
        { map = "-31,-44", path = "right" },
        { map = "146742", path = "left(266)" },
        { map = "-29,-54", path = "left" },
        { map = "-29,-53", path = "top" },
        { map = "-29,-52", path = "top" },
        { map = "-29,-51", path = "top" },
        { map = "-29,-50", path = "top" },
        { map = "-29,-49", path = "top" },
        { map = "-29,-48", path = "top" },
        { map = "-29,-47", path = "top" },
        { map = "-29,-46", path = "top" },
        { map = "-29,-45", path = "top" },
        { map = "-29,-44", path = "top" },
        { map = "-29,-43", path = "top" },
        { map = "-29,-42", path = "top" },
        { map = "-29,-41", path = "top" },
        { map = "-29,-40", path = "top" },
        { map = "-29,-39", path = "top" },
        { map = "-29,-38", path = "top" },
        { map = "-29,-37", path = "top" },
        { map = "-29,-36", path = "top(6)" },
    }
end
  

function kamas4()
    return {
        { map = "3,4", path = "top" },
        { map = "3,5", path = "top" },
        { map = "3,6", path = "top" },
        { map = "5,4", path = "top" },
        { map = "4,4", path = "right" },
        { map = "4,5", path = "right" },
        { map = "5,5", path = "top" },
        { map = "5,6", path = "top" },
        { map = "4,6", path = "top" },
        { map = "4,7", path = "top" },
        { map = "5,7", path = "top" },
        { map = "6,4", path = "top" },
        { map = "6,5", path = "top" },
        { map = "6,6", path = "top" },
        { map = "6,7", path = "top" },
        { map = "7,5", path = "top" },
        { map = "7,4", path = "top" },
        { map = "3,2", path = "bottom" },
        { map = "3,1", path = "bottom" },
        { map = "2,2", path = "bottom" },
        { map = "2,1", path = "bottom" },
        { map = "2,0", path = "bottom" },
        { map = "2,-1", path = "bottom" },
        { map = "8,3", path = "right" },
        { map = "7,3", path = "right" },
        { map = "6,3", path = "right" },
        { map = "5,3", path = "right" },
        { map = "4,3", path = "right" },
        { map = "3,3", path = "right" },
        { map = "2,3", path = "right" },
        { map = "1,3", path = "right" },
        { map = "0,3", path = "right" },
        { map = "1,1", path = "bottom" },
        { map = "1,0", path = "bottom" },
        { map = "1,-1", path = "bottom" },
        { map = "0,1", path = "bottom" },
        { map = "0,-1", path = "bottom" },
        { map = "-1,1", path = "bottom" },
        { map = "-1,0", path = "bottom" },
        { map = "1,2", path = "bottom" },
        { map = "0,2", path = "right" },
        { map = "-1,2", path = "right" },
        { map = "9,3", custom = customNpcToAstrub },
        { map = "-1,-15", path = "top" },
        { map = "-1,-14", path = "top" },
        { map = "-1,-17", path = "bottom" },
        { map = "-1,-16", path = "right" },
        { map = "0,-16", path = "right" },
        { map = "1,-16", path = "right" },
        { map = "2,-16", path = "right" },
        { map = "4,-17", path = "bottom" },
        { map = "4,-18", path = "bottom" },
        { map = "4,-19", path = "bottom" },
        { map = "4,-20", path = "bottom" },
        { map = "4,-22", path = "bottom" },
        { map = "4,-21", path = "bottom" },
        { map = "2,-19", path = "right" },
        { map = "3,-19", path = "right" },
        { map = "0,-19", path = "right" },
        { map = "1,-19", path = "right" },
        { map = "5,-16", path = "left" },
        { map = "6,-16", path = "left" },
        { map = "7,-16", path = "left" },
        { map = "7,-15", path = "top" },
        { map = "7,-17", path = "bottom" },
        { map = "5,-19", path = "left" },
        { map = "6,-20", path = "left" },
        { map = "5,-20", path = "left" },
        { map = "7,-20", path = "left" },
        { map = "7,-21", path = "bottom" },
        { map = "3,-16", path = "right" },
        { map = "2,-22", path = "right" },
        { map = "3,-22", path = "right" },
        { map = "1,-21", path = "bottom" },
        { map = "1,-20", path = "bottom" },
        { map = "2,-20", path = "bottom" },
        { map = "84674566", door ="303" },
        { map = "83887104", door = "396",custom=prendrekamas4 },
        { map = "5,-22", path = "bottom" },
      { map = "5,-22", path = "bottom" },
      { map = "5,-23", path = "bottom" },
      { map = "5,-24", path = "bottom" },
      { map = "5,-25", path = "bottom" },
      { map = "5,-26", path = "bottom" },
      { map = "5,-27", path = "bottom" },
      { map = "5,-28", path = "bottom" },
      { map = "5,-29", path = "bottom" },
      { map = "5,-30", path = "bottom" },
      { map = "4,-31", path = "right" },
      { map = "5,-31", path = "bottom" },
      { map = "3,-32", path = "right" },
      { map = "4,-32", path = "bottom" },
      { map = "2,-32", path = "right" },
      { map = "1,-32", path = "right" },
      { map = "0,-32", path = "right" },
      { map = "-1,-32", path = "right" },
      { map = "-2,-32", path = "right" },
      { map = "-1,-33", path = "bottom" },
      { map = "0,-33", path = "bottom" },
      { map = "0,-34", path = "bottom" },
      { map = "1,-34", path = "bottom" },
      { map = "1,-33", path = "bottom" },
      { map = "2,-33", path = "bottom" },
      { map = "2,-34", path = "bottom" },
      { map = "3,-33", path = "bottom" },
      { map = "2,-31", path = "top" },
      { map = "1,-31", path = "top" },
      { map = "0,-31", path = "top" },
      { map = "-1,-31", path = "top" },
      { map = "-2,-31", path = "top" },
      { map = "-2,-30", path = "top" },
      { map = "-1,-30", path = "top" },
      { map = "0,-30", path = "top" },
      { map = "1,-30", path = "top" },
      { map = "1,-29", path = "top" },
      { map = "0,-29", path = "top" },
      { map = "-1,-29", path = "top" },
      { map = "5,-21", path = "bottom" },
      { map = "5,-20", path = "bottom" },
      { map = "5,-19", path = "bottom" },
      { map = "5,-18", path = "bottom" },
      { map = "5,-17", path = "bottom" },
      { map = "5,-16", path = "left" },
      { map = "4,-15", path = "top" },
      { map = "4,-14", path = "top" },
      { map = "4,-13", path = "top" },
      { map = "4,-12", path = "top" },
      { map = "3,-12", path = "right" },
      { map = "2,-12", path = "right"},

    }
end

-- END-ENCODE --
