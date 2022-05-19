local Core = Config.Core
local CoreFolder = Config.CoreFolder
local Core = exports[CoreFolder]:GetCoreObject()
local TargetName = Config.TargetName
local MenuName = Config.MenuName
local InputName = Config.InputName
local RemoveStress = Config.RemoveStress


exports[TargetName]:AddTargetModel(`a_c_husky`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
exports[TargetName]:AddTargetModel(`a_c_poodle`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
exports[TargetName]:AddTargetModel(`a_c_pug`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
exports[TargetName]:AddTargetModel(`a_c_retriever`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
exports[TargetName]:AddTargetModel(`a_c_rottweiler`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
exports[TargetName]:AddTargetModel(`a_c_shepherd`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
exports[TargetName]:AddTargetModel(`a_c_westy`, {
    options = {
        {
            event = 'king-pets:client:PetDog',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['doglabel'],
        },
    },
distance = 2.0 
})
RegisterNetEvent('king-pets:client:PetDog', function()
    local player = PlayerPedId()
    Core.Functions.Progressbar('king_petdog', Config.Lang['petdog'], Config.PetTime, false, false, {
        disableMovement = true, 
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@medic@standing@kneel@idle_a', 
        anim = 'idle_a', 
        --flags = 49,
    }, {}, {}, function()
        TriggerServerEvent(RemoveStress, Config.DogStress)  
		TriggerEvent('king-pets:notifications', Config.Lang['petdogfin'], 'success')
        ClearPedTasks(player)
    end, function()
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('king-pets:notifications', Config.Lang['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)

--Rabbit--
exports[TargetName]:AddTargetModel(`a_c_rabbit_01`, {
    options = {
        {
            event = 'king-pets:client:PetRabbit',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['rabbitlabel'],
        },
    },
distance = 2.0 
})
RegisterNetEvent('king-pets:client:PetRabbit', function()
    local player = PlayerPedId()
    Core.Functions.Progressbar('king_petrabbit', Config.Lang['petrabbit'], Config.PetTime, false, false, {
        disableMovement = true, 
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@medic@standing@kneel@idle_a', 
        anim = 'idle_a', 
        --flags = 49,
    }, {}, {}, function()
        TriggerServerEvent(RemoveStress, Config.DogStress)  
		TriggerEvent('king-pets:notifications', Config.Lang['petrabbitfin'], 'success')
        ClearPedTasks(player)
    end, function()
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('king-pets:notifications', Config.Lang['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)

--Rooster--
exports[TargetName]:AddTargetModel(`a_c_hen`, {
    options = {
        {
            event = 'king-pets:client:PetRooster',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['roosterlabel'],
        },
    },
distance = 2.0 
})
RegisterNetEvent('king-pets:client:PetRooster', function()
    local player = PlayerPedId()
    Core.Functions.Progressbar('king_petrooster', Config.Lang['petrooster'], Config.PetTime, false, false, {
        disableMovement = true, 
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@medic@standing@kneel@idle_a', 
        anim = 'idle_a', 
        --flags = 49,
    }, {}, {}, function()
        TriggerServerEvent(RemoveStress, Config.DogStress)  
		TriggerEvent('king-pets:notifications', Config.Lang['petroosterfin'], 'success')
        ClearPedTasks(player)
    end, function()
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('king-pets:notifications', Config.Lang['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)

--Pig--
exports[TargetName]:AddTargetModel(`a_c_pig`, {
    options = {
        {
            event = 'king-pets:client:PetPig',
            icon = Config.Lang['dogicon'],
            label = Config.Lang['piglabel'],
        },
    },
distance = 2.0 
})
RegisterNetEvent('king-pets:client:PetPig', function()
    local player = PlayerPedId()
    Core.Functions.Progressbar('king_petpig', Config.Lang['petpig'], Config.PetTime, false, false, {
        disableMovement = true, 
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {
        animDict = 'amb@medic@standing@kneel@idle_a', 
        anim = 'idle_a', 
        --flags = 49,
    }, {}, {}, function()
        TriggerServerEvent(RemoveStress, Config.DogStress)  
		TriggerEvent('king-pets:notifications', Config.Lang['petpigfin'], 'success')
        ClearPedTasks(player)
    end, function()
        TriggerEvent('inventory:client:busy:status', false)
        TriggerEvent('king-pets:notifications', Config.Lang['cancel'], 'error')
        ClearPedTasks(player)
    end)
end)

