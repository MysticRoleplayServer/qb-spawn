local QBCore = exports['qb-core']:GetCoreObject()

QBCore.Functions.CreateCallback('qb-spawn:server:getOwnedHouses', function(_, cb, cid) -- bcs-housing
    if cid ~= nil then
        local houses = exports['bcs_housing']:GetOwnedHomes(cid)
        if houses[1] ~= nil then
            cb(houses)
        else
            cb({})
        end
    else
        cb({})
    end
end)
