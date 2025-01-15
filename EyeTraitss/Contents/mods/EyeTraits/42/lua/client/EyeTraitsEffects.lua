local function applyBlindness(player)
    if player:HasTrait("Blindness") then
        player:setViewDistance(0) -- Reducir completamente la visión
        local zombiesNearby = getCell():getZombieList()
        if zombiesNearby then
            for i = 0, zombiesNearby:size() - 1 do
                local zombie = zombiesNearby:get(i)
                local distance = player:DistTo(zombie)
                if distance < 10 then
                    player:Say("I hear a zombie nearby...")
                    break
                end
            end
        end
    end
end

local function applyNightVision(player)
    if player:HasTrait("NightVision") then
        local hour = getGameTime():getHour()
        if hour >= 20 or hour <= 6 then
            player:setViewDistance(20) -- Ampliar visión nocturna
            player:Say("My night vision is helping me see in the dark.")
        end
    end
end

-- Llamar a las funciones cada tick del juego
Events.OnTick.Add(function()
    local player = getPlayer()
    if player then
        applyBlindness(player)
        applyNightVision(player)
    end
end)
