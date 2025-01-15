local function applyBlindness(player)
    -- Comprueba si el jugador tiene el rasgo de Ceguera Total
    if player:HasTrait("Blindness") then
        -- Reduce la visión del jugador a 0
        player:setViewDistance(0)

        -- Sistema de "radar auditivo" para detectar zombis cercanos
        local zombiesNearby = getCell():getZombieList()
        local playerX, playerY = player:getX(), player:getY()

        for i = 0, zombiesNearby:size() - 1 do
            local zombie = zombiesNearby:get(i)
            local zX, zY = zombie:getX(), zombie:getY()
            local distance = math.sqrt((zX - playerX)^2 + (zY - playerY)^2)

            if distance < 10 then -- Rango de detección de 10 tiles
                player:Say("Escucho un zombi cerca...")
                break
            end
        end
    end
end

-- Asignamos el efecto de ceguera en cada tick del juego
Events.OnTick.Add(function()
    local player = getPlayer()
    if player then
        applyBlindness(player)
    end
end)