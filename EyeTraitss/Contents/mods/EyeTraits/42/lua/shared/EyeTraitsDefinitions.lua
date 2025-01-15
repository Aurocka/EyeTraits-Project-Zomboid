local TraitFactory = TraitFactory

-- Definir Ceguera Total
local blindnessTrait = TraitFactory.addTrait(
    "Blindness",                -- ID del rasgo
    "Total Blindness",          -- Nombre visible
    -10,                        -- Puntos negativos
    "You cannot see anything and must rely on your hearing to survive.", -- Descripción
    false                       -- No oculto
)
if blindnessTrait then
    blindnessTrait:setIcon("Trait_Blindness") -- Asignar icono
end

-- Definir Visión Nocturna
local nightVisionTrait = TraitFactory.addTrait(
    "NightVision",              -- ID del rasgo
    "Night Vision",             -- Nombre visible
    6,                          -- Puntos positivos
    "You can see clearly in the dark.", -- Descripción
    false                       -- No oculto
)
if nightVisionTrait then
    nightVisionTrait:setIcon("Trait_NightVision") -- Asignar icono
end
