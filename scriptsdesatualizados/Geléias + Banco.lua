
---------------------------------------------
-- Paramètres
---------------------------------------------
MIN_MONSTERS = 4
MAX_MONSTERS = 4
OPEN_BAGS = true -- Autorisation d'ouverture des sacs de récolte


---------------------------------------------
-- Structure de base
---------------------------------------------
function move()
    return {

      -- Déplacements
      { map = "12,29", path = "left" },
      { map = "13,29", path = "left" },
      { map = "-1,0", path = "left" },
	  { map = "0,0", path = "left" },
      { map = "1,0", path = "left" },
      { map = "2,0", path = "left" },
      { map = "2,-1", path = "bottom" },
	  { map = "-2,0", path = "zaap(95422468)" }, 
	 { map = "13,26", path = "zaapi(95424516)" },

        -- Combats
        { map = "11,29", path = "top|left", fight = true },
        { map = "11,28", path = "left|bottom", fight = true },
        { map = "9,28", path = "right|bottom", fight = true },
        { map = "10,28", path = "left|right|bottom", fight = true },
        { map = "6,29", path = "right|bottom", fight = true },
        { map = "6,30", path = "top|right|bottom", fight = true },
        { map = "8,31", path = "top|left", fight = true },
        { map = "6,31", path = "top|right", fight = true },
        { map = "7,31", path = "top|left|right", fight = true },
        { map = "8,29", path = "left|right|bottom", fight = true },
        { map = "7,29", path = "left|right|bottom", fight = true },
        { map = "7,30", path = "top|left|right|bottom", fight = true },
        { map = "8,30", path = "top|left|right|bottom", fight = true },
        { map = "9,29", path = "top|left|right|bottom", fight = true },
        { map = "10,29", path = "top|left|right|bottom", fight = true },
        { map = "10,30", path = "top|left", fight = true },
        { map = "9,30", path = "top|left|right", fight = true },

         --Retour en banque
    { map = "88081177", path = "bottom" }, -- Map extérieure de la banque, MAPID OBLIGATOIRE
     { map = "99095051", path = "410" }, -- Map intérieure de la banque pour sortir, MAPID OBLIGATOIRE
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
        { map = "11,29", path = "right" },
        { map = "10,29", path = "right" },
        { map = "8,31", path = "top" },
        { map = "10,30", path = "top" },
        { map = "10,28", path = "bottom" },
        { map = "11,28", path = "bottom" },
        { map = "9,28", path = "right" },
        { map = "9,29", path = "right" },
        { map = "9,30", path = "right" },
        { map = "8,29", path = "right" },
        { map = "8,30", path = "right" },
        { map = "7,31", path = "right" },
        { map = "7,30", path = "right" },
        { map = "7,29", path = "right" },
        { map = "6,29", path = "right" },
        { map = "6,30", path = "right" },
        { map = "6,31", path = "right" },
	{ map = "12,29", path = "zaapi(95422468)" },
	{ map = "12,29", path = "right" },
	{ map = "13,26", path = "zaap(88213271)" },
        --Retour en banque
        { map = "88081177", door = "216" }, -- Map extérieure de la banque, on utilise la porte de la banque, MAPID OBLIGATOIRE
        { map = "99095051", npcBank = true, path = "410" }, -- Map intérieure de la banque, on parle au banquier, MAPID OBLIGATOIRE
    }
end

