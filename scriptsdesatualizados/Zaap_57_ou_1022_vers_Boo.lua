-- Zone : Amakana Boo
-- Départ Zaap :coin des bouf, Rivage du golfe sufokien
-- Départ Banque : Banque d'Amakna



function move()
  return {
   { map = "6,16", path = "top" },
   { map = "6,17", path = "top" },
   { map = "6,15", path = "top" },
   { map = "6,14", path = "top" },
   { map = "6,13", path = "top" },
   { map = "6,12", path = "top" },
   { map = "6,11", path = "top" },
   { map = "6,10", path = "top" },
   { map = "6,9", path = "top" },
   { map = "10,22", path = "left" },
   { map = "9,22", path = "top" },
   { map = "9,21", path = "top" },
   { map = "9,20", path = "left" },
   { map = "8,20", path = "left" },
   { map = "7,20", path = "left" },
   { map = "6,20", path = "top" },
   { map = "6,19", path = "top" },
   { map = "6,18", path = "top" },
   { map = "5,8", path = "right" },
   { map = "6,8", path = "right" },
   { map = "7,8", path = "right" },
   { map = "8,8", path = "right" },
   { map = "9,8", path = "right" },
   { map = "10,8", path = "right" },
   { map = "11,8", path = "right" },
   { map = "11,9", path = "right" },
   { map = "11,7", path = "right" },
   { map = "11,6", path = "right" },
   { map = "5,7", path = "bottom" },
   { map = "2,-1", path = "bottom" },
   { map = "88081177", path = "bottom" },     -- même coordonées que dans la banque, on remplace par la mapid de la map pour eviter le conflit
   { map = "2,0", path = "bottom" },
   { map = "2,1", path = "bottom" },
   { map = "2,4", path = "bottom" },
   { map = "2,3", path = "bottom" },
   { map = "2,2", path = "bottom" },
   { map = "2,5", path = "bottom" },
   { map = "2,6", path = "bottom" },
   { map = "2,7", path = "bottom" },
   { map = "2,8", path = "right" },
   { map = "3,8", path = "right" },
   { map = "4,8", path = "right" },
   { map = "12,6", path = "right|bottom", fight = true },
   { map = "12,7", path = "top|right|bottom", fight = true },
   { map = "12,8", path = "top|right|bottom", fight = true },
   { map = "12,9", path = "top", fight = true },
   { map = "13,8", path = "top|left", fight = true },
   { map = "13,7", path = "top|left|bottom", fight = true },
   { map = "12,5", path = "right|bottom" },
   { map = "13,4", path = "bottom" },
   { map = "13,5", path = "bottom", fight = true },
   { map = "13,6", path = "top|left|bottom", fight = true },


   -- action banque interieur
   { map = "99095051", path = "410" },
  }
end


function bank()
  return {
   { map = "5,8", path = "left" },
   { map = "6,8", path = "left" },
   { map = "7,8", path = "left" },
   { map = "8,8", path = "left" },
   { map = "9,8", path = "left" },
   { map = "10,8", path = "left" },
   { map = "11,8", path = "left" },
   { map = "2,-1", path = "top" },
   { map = "2,0", path = "top" },
   { map = "2,1", path = "top" },
   { map = "2,4", path = "top" },
   { map = "2,3", path = "top" },
   { map = "2,2", path = "top" },
   { map = "2,5", path = "top" },
   { map = "2,6", path = "top" },
   { map = "2,7", path = "top" },
   { map = "2,8", path = "top" },
   { map = "3,8", path = "left" },
   { map = "4,8", path = "left" },
   { map = "12,6", path = "bottom" },
   { map = "12,7", path = "bottom" },
   { map = "12,8", path = "left" },
   { map = "12,9", path = "top" },
   { map = "13,8", path = "left" },
   { map = "13,7", path = "bottom" },
   { map = "13,5", path = "bottom" },
   { map = "13,6", path = "bottom" },


   -- actions banque interieur & exterieur
   { map = "99095051", npcBank = true, path = "410" },
   { map = "88081177", door = "216" },
  }
end
