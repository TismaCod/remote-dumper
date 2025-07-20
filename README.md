# remote-dumper

outil léger pour inspecter proprement les réponses d’une `RemoteFunction` sur roblox, formaté clé/valeur façon json lisible.

## 🚀 usage

place ce repo sur ton github et récupère le raw de `prettyRemote.lua`.  
dans ton script client roblox, fais juste :

```lua
local prettyRemote = loadstring(game:HttpGet("https://raw.githubusercontent.com/<ton_user>/<repo>/main/prettyRemote.lua"))()

prettyRemote.Dump("NomDeTaRemote", arg1, arg2, ...)
