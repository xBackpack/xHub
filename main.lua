local validPlaceIds = { "12552538292" }

local directory = "https://raw.githubusercontent.com/xBackpack/xHub/refs/heads/main/places"

local placeId = game.PlaceId

for _, id in ipairs(validPlaceIds) do
    if placeId == id then
        loadstring(game:HttpGet(directory .. placeId .. ".lua"))
        break
    end
end