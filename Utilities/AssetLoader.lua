local AssetLoader = {}

local function GetAsset(Path: string, Url: string)
	if not isfile(Path) then
		writefile(Path, game:HttpGet(Url))
	end

	if getcustomasset then
		return getcustomasset(Path)
	end
end

AssetLoader.Assets = {
	StatusImage = GetAsset(
		"UDSPLOIT/assets/status.png",
		string.format(
			"https://raw.githubusercontent.com/jaeelin/Test/main/Assets/Rei/Status%d.%s",
			math.random(3),
			({"png","jpg","jpeg"})[math.random(3)]
		)
	),
}

return AssetLoader
