-- Fixed sorting functions (no position jumping that causes info loss and 'duplication')
function sortByNameAsc(a, b) -- overridden
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByNameDes(a, b) -- overridden
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue > bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByStockAsc(a, b) -- overridden
    local aValue = a.stock / a.maxStock
    local bValue = b.stock / b.maxStock
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if stocks are equal, sort by good name
    aValue = a.good:displayName(2)
    bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByStockDes(a, b) -- overridden
    local aValue = a.stock / a.maxStock
    local bValue = b.stock / b.maxStock
    if aValue ~= bValue then
        return aValue > bValue
    end
    -- if stocks are equal, sort by good name
    aValue = a.good:displayName(2)
    bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByPriceAsc(a, b) -- overridden
    if a.good.price ~= b.good.price then
        return a.good.price < b.good.price
    end
    -- if prices are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByPriceDes(a, b) -- overridden
    if a.good.price ~= b.good.price then
        return a.good.price > b.good.price
    end
    -- if prices are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByVolAsc(a, b) -- overridden
    if a.good.size ~= b.good.size then
        return a.good.size < b.good.size
    end
    -- if volumes are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByVolDes(a, b) -- overridden
    if a.good.size ~= b.good.size then
        return a.good.size > b.good.size
    end
    -- if volumes are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByPriceFactorAsc(a, b) -- overridden
    local aValue = a.price / a.good.price
    local bValue = b.price / b.good.price
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if price factors are equal, sort by good name
    aValue = a.good:displayName(2)
    bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByPriceFactorDes(a, b) -- overridden
    local aValue = a.price / a.good.price
    local bValue = b.price / b.good.price
    if aValue ~= bValue then
        return aValue > bValue
    end
    -- if price factors are equal, sort by good name
    aValue = a.good:displayName(2)
    bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByStationAsc(a, b) -- overridden
    if a.station ~= b.station then
        return a.station < b.station
    end
    -- if station names are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByStationDes(a, b) -- overridden
    if a.station ~= b.station then
        return a.station > b.station
    end
    -- if station names are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByAmountOnShipAsc(a, b) -- overridden
    if a.amountOnShip ~= b.amountOnShip then
        return a.amountOnShip < b.amountOnShip
    end
    -- if amounts on ship are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

function sortByAmountOnShipDes(a, b) -- overridden
    if a.amountOnShip ~= b.amountOnShip then
        return a.amountOnShip > b.amountOnShip
    end
    -- if amounts on ship are equal, sort by good name
    local aValue = a.good:displayName(2)
    local bValue = b.good:displayName(2)
    if aValue ~= bValue then
        return aValue < bValue
    end
    -- if names are equal, sort by station index
    return a.stationIndex.string < b.stationIndex.string
end

sellableSortFunction = sortByNameAsc
buyableSortFunction = sortByNameAsc

-- Fix localization for good display names
function refreshBuyablesUI() -- overridden
    table.sort(buyable, buyableSortFunction)

    for index = 1, 15 do
        buyableGoodFrames[index]:hide()
        buyableGoodIcons[index]:hide()
        buyableGoodNameLabels[index]:hide()
        buyableGoodStockLabels[index]:hide()
        buyableGoodPriceLabels[index]:hide()
        buyableGoodSizeLabels[index]:hide()
        buyableGoodStationLabels[index]:hide()
        buyableGoodPriceFactorLabels[index]:hide()
        buyableGoodOnShipLabels[index]:hide()
        buyableGoodButtons[index]:hide()
    end
    
    local index = 0
    for i, good in pairs(buyable) do

        if i > buyablesPage * 15 and i <= (buyablesPage + 1) * 15 then
            index = index + 1
            if index > 15 then break end

            buyableGoodNameLabels[index].caption = good.good:displayName(100) -- Fix
            buyableGoodStockLabels[index].caption = math.floor(good.stock) .. " / " .. math.floor(good.maxStock)
            buyableGoodPriceLabels[index].caption = createMonetaryString(good.price)
            buyableGoodPriceFactorLabels[index].caption = string.format("%+i%%", round((good.price / good.good.price - 1.0) * 100))
            buyableGoodSizeLabels[index].caption = round(good.good.size, 2)
            buyableGoodIcons[index].picture = good.good.icon
            buyableGoodStationLabels[index].caption = good.station%_t % good.titleArgs
            if good.amountOnShip > 0 then
                buyableGoodOnShipLabels[index].caption = good.amountOnShip
            else
                buyableGoodOnShipLabels[index].caption = "-"
            end

            buyableGoodFrames[index]:show()
            buyableGoodIcons[index]:show()
            buyableGoodNameLabels[index]:show()
            buyableGoodStockLabels[index]:show()
            buyableGoodPriceLabels[index]:show()
            buyableGoodSizeLabels[index]:show()
            buyableGoodStationLabels[index]:show()
            buyableGoodPriceFactorLabels[index]:show()
            buyableGoodButtons[index]:show()
            buyableGoodOnShipLabels[index]:show()

            if getRarity().value < 0 then
                buyableGoodPriceLabels[index].caption = "-"
            end

            if getRarity().value < 1 then
                buyableGoodPriceFactorLabels[index].caption = "-"
            end

        end
    end
end

function refreshSellablesUI() -- overridden
    table.sort(sellable, sellableSortFunction)

    for index = 1, 15 do
        sellableGoodFrames[index]:hide()
        sellableGoodIcons[index]:hide()
        sellableGoodNameLabels[index]:hide()
        sellableGoodStockLabels[index]:hide()
        sellableGoodPriceLabels[index]:hide()
        sellableGoodSizeLabels[index]:hide()
        sellableGoodStationLabels[index]:hide()
        sellableGoodPriceFactorLabels[index]:hide()
        sellableGoodOnShipLabels[index]:hide()
        sellableGoodButtons[index]:hide()
    end
    
    local index = 0
    for i, good in pairs(sellable) do

        if i > sellablesPage * 15 and i <= (sellablesPage + 1) * 15 then
            index = index + 1
            if index > 15 then break end

            local priceFactor = ""
            if good.good.price > 0 then
                priceFactor = string.format("%+i%%", round((good.price / good.good.price - 1.0) * 100))
            end

            sellableGoodNameLabels[index].caption = good.good:displayName(100) -- Fix
            sellableGoodStockLabels[index].caption = math.floor(good.stock) .. " / " .. math.floor(good.maxStock)
            sellableGoodPriceLabels[index].caption = createMonetaryString(good.price)
            sellableGoodPriceFactorLabels[index].caption = priceFactor
            sellableGoodSizeLabels[index].caption = round(good.good.size, 2)
            sellableGoodIcons[index].picture = good.good.icon
            sellableGoodStationLabels[index].caption = good.station%_t % good.titleArgs
            if good.amountOnShip > 0 then
                sellableGoodOnShipLabels[index].caption = good.amountOnShip
            else
                sellableGoodOnShipLabels[index].caption = "-"
            end

            sellableGoodFrames[index]:show()
            sellableGoodIcons[index]:show()
            sellableGoodNameLabels[index]:show()
            sellableGoodStockLabels[index]:show()
            sellableGoodPriceLabels[index]:show()
            sellableGoodSizeLabels[index]:show()
            sellableGoodStationLabels[index]:show()
            sellableGoodPriceFactorLabels[index]:show()
            sellableGoodOnShipLabels[index]:show()
            sellableGoodButtons[index]:show()


            if getRarity().value < 0 then
                sellableGoodPriceLabels[index].caption = "-"
            end

            if getRarity().value < 1 then
                sellableGoodPriceFactorLabels[index].caption = "-"
            end

        end
    end
end