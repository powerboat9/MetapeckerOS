local yNo = ""

while true do
    term.clear()
    term.setCursorPos(1, 1)
    term.write("Repair Installation? (y/n): ")
    yNo = read():lower()
    
    if yNo == "y" then
        yNo = true
        break
    elseif yNo == "n" then
        yNo = false
        break
    else
        term.write("Enter \"y\" or \"n\")
        sleep(1)
    end
end

if not yNo then
    term.clear()
    term.setCursorPos(1, 1)
    return nil
end

if fs.exists("/MetapeckerOS/.fixingTemp") then
    fs.delete("/MetapeckerOS/.fixingTemp")
end

sys.stop(function()
    
