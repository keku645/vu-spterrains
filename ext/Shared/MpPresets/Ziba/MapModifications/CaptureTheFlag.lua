------------------------
------------------------
----Exclude Objects-----
------------------------
------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('65002E2F-1D1D-429A-B517-541D2CDD90A6'), Guid('D849A434-D1AF-4170-97F6-C5F72FBEDA37'), function(instance)
if SharedUtils:GetLevelName() ~= 'Levels/XP2_Skybar/XP2_Skybar' or SharedUtils:GetCurrentGameMode() ~= 'CaptureTheFlag0' then
        return
    else
end
    --print('Excluding SquadRush_Objects...')
    local thisInstance = WorldPartReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

------------------------
------------------------
-----Block minimap------
------------------------
------------------------

ResourceManager:RegisterInstanceLoadHandler(Guid('268750F3-D6D1-42A7-85DE-A363AC18F130'), Guid('466F3AD5-3EDC-4BB9-93F7-0E3CD83FB1C4'), function(instance)
if SharedUtils:GetLevelName() ~= 'Levels/XP2_Skybar/XP2_Skybar' or SharedUtils:GetCurrentGameMode() ~= 'CaptureTheFlag0' then
        return
    else
end

    --print('Removing minimap textures...')

    local thisInstance = UICombatAreaEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.asset = nil
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('268750F3-D6D1-42A7-85DE-A363AC18F130'), Guid('A40903DE-5AFE-46EA-AF18-83ED09F38119'), function(instance)
if SharedUtils:GetLevelName() ~= 'Levels/XP2_Skybar/XP2_Skybar' or SharedUtils:GetCurrentGameMode() ~= 'CaptureTheFlag0' then
        return
    else
end

    --print('Removing minimap textures...')

    local thisInstance = UICombatAreaEntityData(instance)
    thisInstance:MakeWritable()
    thisInstance.asset = nil
end)

---------
---OOB---
---------

-- General
ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('05325AF5-57EC-4E0F-B069-5416E2C4408B'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
	thisInstance.height = 19
    thisInstance.points:clear()

    local points = {
       Vec3(58.447243, 7.817251, 52.938095), Vec3(-58.185600, 7.817251, 52.280270), Vec3(-59.158787, 7.817247, -40.175049), Vec3(57.054199, 7.817245, -41.244476)
    }


    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end

end)


-- US
ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('C745DCDD-8C9E-4FBC-B70A-0A4401C282DC'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    --[[local points = {
        Vec3(-234.779495, 270.234070, -116.273178), Vec3(-262.113373, 269.842194, -111.749878), Vec3(-261.852417, 269.046600, -139.293350), Vec3(-257.995819, 271.220184, -143.765930), Vec3(-258.606873, 271.220184, -161.968582), Vec3(-253.938202, 271.220184, -161.995041), Vec3(-237.763290, 270.800842, -162.461243), Vec3(-237.335434, 271.199280, -164.441544), Vec3(-229.209595, 270.893188, -164.580414), Vec3(-229.230072, 269.109009, -140.238113), Vec3(-224.411743, 269.904266, -127.944542)
    }


    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end]]

end)

-- RU
ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('199BE852-84D4-481D-93B7-21059AD53767'), function(instance)

    local thisInstance = VolumeVectorShapeData(instance)
    thisInstance:MakeWritable()
    thisInstance.points:clear()

    --[[local points = {
        Vec3(-234.779495, 270.234070, -116.273178), Vec3(-262.113373, 269.842194, -111.749878), Vec3(-261.852417, 269.046600, -139.293350), Vec3(-257.995819, 271.220184, -143.765930), Vec3(-258.606873, 271.220184, -161.968582), Vec3(-253.938202, 271.220184, -161.995041), Vec3(-237.763290, 270.800842, -162.461243), Vec3(-237.335434, 271.199280, -164.441544), Vec3(-229.209595, 270.893188, -164.580414), Vec3(-229.230072, 269.109009, -140.238113), Vec3(-224.411743, 269.904266, -127.944542)
    }


    for _, point in pairs(points) do
        thisInstance.points:add(point)
    end]]

end)


-----------------------
---Flag Capture Base---
-----------------------

--US
ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('8FF7A543-5847-4259-A890-4EB345584CF1'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
	
	    local CTFBaseUS = LinearTransform(
        Vec3(0.999555, 0.000000, -0.029826),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.029826, 0.000000, 0.999555),
Vec3(46.26, 10.13, -0.12)
    )

    thisInstance.blueprintTransform = CTFBaseUS

end)


--RU
ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('7F26C24A-26CD-499A-963A-B0FB10EBB12C'), function(instance)

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
	
	    local CTFBaseRU = LinearTransform(
        Vec3(0.999555, 0.000000, -0.029826),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.029826, 0.000000, 0.999555),
Vec3(-43.92, 10.27, -2.96)
    )

    thisInstance.blueprintTransform = CTFBaseRU

end)



----------------------
-------US SPAWNS------
----------------------

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('259ADA8B-A69D-4391-966A-EC244F749D2D'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn1 = LinearTransform(
        Vec3(0.999888, 0.000000, -0.014991),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.014991, 0.000000, 0.999888),
Vec3(41.164063, 10.243945, -17.212891)
    )

    thisInstance.transform = infSpawn1

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('4845788F-EF5F-4F3A-8F0B-D0D54450D478'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn2 = LinearTransform(
        Vec3(-0.999922, 0.000000, 0.012492),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(-0.012492, 0.000000, -0.999922),
Vec3(33.590820, 10.243945, 17.505859)
    )

    thisInstance.transform = infSpawn2

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('420EAD2D-5C18-48B5-9570-0BD51C92BB5F'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn3 = LinearTransform(
        Vec3(0.010380, 0.000000, 0.999946),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(-0.999946, 0.000000, 0.010380),
Vec3(30.870117, 15.360156, -26.742188)
    )

    thisInstance.transform = infSpawn3

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('E5DD7BBD-CE59-46C7-B9DF-821EDDAECCA9'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn4 = LinearTransform(
        Vec3(0.013166, 0.000000, 0.999913),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(-0.999913, 0.000000, 0.013166),
Vec3(22.814453, 15.362109, 16.288086)
    )

    thisInstance.transform = infSpawn4

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('E3182B12-6F93-43EB-BB7A-09447ABF70B9'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn5 = LinearTransform(
        Vec3(0.021876, 0.000000, 0.999761),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(-0.999761, 0.000000, 0.021876),
Vec3(27.520460, 10.902194, -17.389648)
    )

    thisInstance.transform = infSpawn5

end)



----------------------
-------RU Spawns------
----------------------

-- Infantry Spawn (using old)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('F0BDE603-F4DB-47AB-8DF0-F1E7799BE0DD'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn1 = LinearTransform(
        Vec3(-0.009165, 0.000000, -0.999958),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.999958, 0.000000, -0.009165),
Vec3(-40.480335, 10.879699, 7.644531)
    )

    thisInstance.transform = infSpawn1

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('67503F40-9280-4205-B75B-845BA028E4C5'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn2 = LinearTransform(
        Vec3(0.999953, 0.000000, 0.009730),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(-0.009730, 0.000000, 0.999953),
Vec3(-34.425781, 10.879704, -9.775391)
    )

    thisInstance.transform = infSpawn2

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('AC4C08C2-E106-4920-8AAE-00A99BD33B3F'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn3 = LinearTransform(
        Vec3(0.005119, 0.000000, -0.999987),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.999987, 0.000000, 0.005119),
Vec3(-34.893555, 15.361133, 16.562500)
    )

    thisInstance.transform = infSpawn3

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('5B9991C0-2E4E-4C3F-8DAE-ED691FB705A5'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn4 = LinearTransform(
        Vec3(-0.999999, 0.000000, -0.001661),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.001661, 0.000000, -0.999999),
Vec3(-35.431641, 15.386539, 2.710938)
    )

    thisInstance.transform = infSpawn4

end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('56F542C4-ADC1-4EAF-BC7C-2C6583C829E4'), function(instance)

    local thisInstance = AlternateSpawnEntityData(instance)
    thisInstance:MakeWritable()

    local infSpawn5 = LinearTransform(
        Vec3(-0.015662, 0.000000, -0.999877),
Vec3(0.000000, 1.000000, 0.000000),
Vec3(0.999877, 0.000000, -0.015662),
Vec3(-36.225586, 15.360156, -23.218750)
    )

    thisInstance.transform = infSpawn5

end)



---------------------------------
-------Disable All Vehicles------
---------------------------------


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('39A3F8AE-C13A-438F-9AF5-73BFA93A0FE4'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('5ECFFC86-AABC-45CF-9708-E31F860A3FA1'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('23BC3204-18A8-41F3-B804-601AF44FD696'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('07CD6A6F-E3E1-4977-9A69-0CD61890256A'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('AA7B99C4-5BA5-4CEE-8BDF-833195AB0FE3'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('10CF4427-4920-446B-A4B6-744D26B0DB21'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('D5B35FC4-32A0-4578-91E2-418550A5951E'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('FEE0B238-61E6-49D1-9819-48A81BE2172B'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('92ECE8F9-73F1-4CE1-B943-5C26D5DB6084'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('81729BB0-98CF-4924-A680-B09BFF99A6C1'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('63569C5A-48E9-4BBC-BD57-E5A47403B9EF'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('F26E5BE4-8E8A-410C-83DD-9309AFA236B2'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('D3627090-10A5-4677-81B5-F14AA1F14096'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('C11B4183-AFCD-4C16-B3EC-00014C7F6A1D'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('A569A5E5-CD71-4B90-BB3A-EC7A5BBC8460'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('46638A01-AEE6-42B0-A008-3ACD6E0824D6'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('A2FAFBFB-1428-4B72-9507-812C22F87968'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('FE645660-7D58-45DA-B883-FEB9F61EC022'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('1C3CC03D-4B7A-4740-80F1-3C3EFDAC52ED'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)


ResourceManager:RegisterInstanceLoadHandler(Guid('FA5DDE26-DCB4-45CF-80B8-D8301024BD7E'), Guid('A1A78C2C-6D1C-450C-B784-80D68529E631'), function(instance)

    --print('Vehicle Disabled...')

    local thisInstance = ReferenceObjectData(instance)
    thisInstance:MakeWritable()
    thisInstance.excluded = true
end)

