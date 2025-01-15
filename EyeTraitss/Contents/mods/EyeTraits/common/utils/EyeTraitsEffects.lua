-- Función de utilidad para calcular distancias
local function getDistanceBetween(x1, y1, x2, y2)
    return math.sqrt((x2 - x1)^2 + (y2 - y1)^2)
end

-- Función de utilidad para enviar mensajes al jugador
local function notifyPlayer(player, message)
    if player then
        player:Say(message)
    end
end

-- Exportar funciones para usarlas en otras partes del mod
return {
    getDistanceBetween = getDistanceBetween,
    notifyPlayer = notifyPlayer,
}

