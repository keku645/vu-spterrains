-- Ticket count


Events:Subscribe('Level:LoadingInfo', function(screenInfo)
    if screenInfo ~= "Registering entity resources" then
        return
    end

    if SharedUtils:GetCurrentGameMode():match("TeamDeathMatchC0") then
        RCON:SendCommand('vars.gameModeCounter', {"100"})
		end
end)


Events:Subscribe('Level:LoadingInfo', function(screenInfo)
    if screenInfo ~= "Registering entity resources" then
        return
    end
	
    if SharedUtils:GetCurrentGameMode():match("SquadDeathMatch0") then
        RCON:SendCommand('vars.gameModeCounter', {"75"})
		end
end)

Events:Subscribe('Level:LoadingInfo', function(screenInfo)
if screenInfo ~= "Registering entity resources" then
        return
    end

    if SharedUtils:GetCurrentGameMode():match("SquadRush0") then
        RCON:SendCommand('vars.gameModeCounter', {"150"})
		end
end)

Events:Subscribe('Level:LoadingInfo', function(screenInfo)
    if screenInfo ~= "Registering entity resources" then
        return
    end


    if SharedUtils:GetCurrentGameMode():match("SquadDeathMatch0") then
        RCON:SendCommand('vars.gameModeCounter', {"100"})
		end
end)

Events:Subscribe('Level:LoadingInfo', function(screenInfo)
    if screenInfo ~= "Registering entity resources" then
        return
    end


    if SharedUtils:GetCurrentGameMode():match("Domination0") then
        RCON:SendCommand('vars.gameModeCounter', {"150"})
		end
end)

Events:Subscribe('Level:LoadingInfo', function(screenInfo)
    if screenInfo ~= "Registering entity resources" then
        return
    end


    if SharedUtils:GetCurrentGameMode():match("CaptureTheFlag0") then
        RCON:SendCommand('vars.gameModeCounter', {"50"})
		end
end)