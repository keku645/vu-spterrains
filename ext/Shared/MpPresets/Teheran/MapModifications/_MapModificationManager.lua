-- Only run the map modification scripts if the level is a SP or COOP map. When the level is destroyed, reset this script.



Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Damavand Peak
    if string.find(levelName, 'MP_003') then
     

    print('Initialising Teheran Highway Domination scripts...')

    require '__shared/MpPresets/Teheran/MapModifications/MapModifications_Ziba_Domination'
	else
	print('Blocking Teheran Highway Domination scripts...')
	return
	end

end)

Events:Subscribe('Level:LoadResources', function()

    local levelName = SharedUtils:GetLevelName()
    local gameModeName = SharedUtils:GetCurrentGameMode()

    -- Don't continue if the level is not Damavand Peak
    if string.find(levelName, 'MP_003') and gameModeName == 'GunMaster0' then
     

    print('Initialising Teheran Highway Gunmaster scripts...')

    require '__shared/MpPresets/Teheran/MapModifications/MapModifications_Ziba_GunMaster'
	else
	return
	end

end)

