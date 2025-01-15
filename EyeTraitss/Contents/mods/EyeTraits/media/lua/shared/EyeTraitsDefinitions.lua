local TraitFactory = TraitFactory

-- Comprueba si `TraitFactory` es válido
if not TraitFactory then
    error("TraitFactory no está inicializado. Comprueba la versión del juego o si estás cargando en el contexto adecuado.")
end

-- Definir el rasgo
local blindnessTrait = TraitFactory.addTrait(
    "Blindness",                -- ID del rasgo
    "Ceguera Total",            -- Nombre visible
    -10,                        -- Puntos negativos
    "No puedes ver absolutamente nada y debes confiar en el sonido para sobrevivir.", -- Descripción
    false                       -- No es oculto
)

-- Comprueba si el rasgo fue creado correctamente antes de aplicar propiedades adicionales
if blindnessTrait then
    blindnessTrait:setIcon("Trait_Blindness") -- Asigna la textura del rasgo
else
    error("No se pudo crear el rasgo 'Blindness'. Comprueba la sintaxis.")
end
