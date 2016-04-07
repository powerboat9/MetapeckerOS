--Handles the establishment of __OS__

local version = -1
pcall(function() --Failing Silently
    local file = assert(fs.open("/MetapeckerOS/lib/reg", "r"))
    local data = assert(file.readAll())
    file.close()
    data = assert(textutils.unserialize(data))
    version = data.version or version
end)

_G.__OS__.Metapecker = {
    name = "MetapeckerOS",
    version = version
}

--Makes some directories special

shell.setPath(shell.path .. ":/MetapeckerOS/cmds")
sys.refreshAddons()
