local AssetLoader = {}

local StatusFiles = {
	"Status1.jpg",
	"Status2.jpg",
	"Status3.jpg"
}

local function GetAsset(Path: string, Url: string)
	if not isfile(Path) then
		writefile(Path, game:HttpGet(Url))
	end

	if getcustomasset then
		return getcustomasset(Path)
	end
end

local File = StatusFiles[math.random(#StatusFiles)]

AssetLoader.Assets = {
	StatusImage = GetAsset(
		string.format("UDSPLOIT/assets/%s", File),
		string.format("https://raw.githubusercontent.com/jaeelin/Test/main/Assets/Images/%s", File)
	),
}

return AssetLoader
