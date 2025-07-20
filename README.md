# Remote Dumper 💾

Lightweight tool to cleanly inspect and print the response from a `RemoteFunction` in Roblox.

## 🚀 usage

upload the module to your github and get the raw url.  
in your Roblox client script, do:  

```lua
local remoteDumper = loadstring(game:HttpGet("https://raw.githubusercontent.com/TismaCod/remote-dumper/refs/heads/main/dumperlib.lua"))()

remoteDumper.Dump("YourRemoteName", arg1, arg2, ...)
