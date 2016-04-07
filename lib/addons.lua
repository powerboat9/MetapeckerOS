function getElementsFromPath()
    local returnValues = {}
    for v in (shell.path()):gfind("[^:]*") do
        returnValues[returnValues + 1] = v
    end
    return returnValues
end

function refreshAddons()
    local path = getElementsFromPath()
    for k, v in ipairs(path) do
        if v:sub(1, 1) ~= "/" then
            v = "/" .. v
        end
        if v:sub(1, 25) == "/MetapeckerOS/lib/addons/" then
            table.remove(path, k)
        end
    end
    local newPath = "."
    for _, v in ipairs(path) do
        newPath = newPath .. ":" .. v
    end
end
