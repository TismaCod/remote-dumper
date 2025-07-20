local remoteDumper = {}

local function prettyPrint(tbl, indent)
	indent = indent or 0
	local prefix = string.rep("  ", indent)
	for k, v in pairs(tbl) do
		if typeof(v) == "table" then
			print(prefix .. tostring(k) .. " : {")
			prettyPrint(v, indent + 1)
			print(prefix .. "}")
		else
			print(prefix .. tostring(k) .. " : " .. tostring(v))
		end
	end
end

function remoteDumper.Dump(remoteName, ...)
	local remote = game.ReplicatedStorage:FindFirstChild(remoteName, true)
	if not remote then
		warn("RemoteFunction '" .. remoteName .. "' introuvable")
		return
	end

	local result = remote:InvokeServer(...)
	if typeof(result) == "table" then
		prettyPrint(result)
	else
		print(result)
	end
end

return remoteDumper
