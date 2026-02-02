local AssetLoader = {}

local SupportedExtensions = {
	"png",
	"jpg",
	"jpeg"
}

local function GetAsset(Path: string, Url: string)
	if not isfile(Path) then
		writefile(Path, game:HttpGet(Url))
	end

	if getcustomasset then
		return getcustomasset(Path)
	end
end

local chosen = math.random(3)
local extension = SupportedExtensions[math.random(#SupportedExtensions)]

AssetLoader.Assets = {
	StatusImage = GetAsset(
		string.format("UDSPLOIT/assets/Status%d.%s", chosen, extension),
		string.format("https://raw.githubusercontent.com/jaeelin/Test/main/Assets/Rei/Status%d.%s", chosen, extension)
	),
}

return AssetLoader
