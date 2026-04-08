--// SETUP \\--
if not getgenv().xhub_loaded then
	getgenv().xhub_loaded = true
else
	getgenv().Alert("[xHub] Already Loaded!")
	return
end

--// SERVICES \\--
local workspace = game:GetService("Workspace")
local lighting = game:GetService("Lighting")
local players = game:GetService("Players")
local repStorage = game:GetService("ReplicatedStorage")
local runService = game:GetService("RunService")
local proximityPromptService = game:GetService("ProximityPromptService")
local userInputService = game:GetService("UserInputService")

local gameFolder = workspace:WaitForChild("GameplayFolder")

local rooms = gameFolder:WaitForChild("Rooms")
local monsters = workspace:WaitForChild("Monsters")
local characters = workspace:WaitForChild("Characters")
local events = repStorage:WaitForChild("Events")
local blur = lighting:WaitForChild("Blur")
local depthOfField = lighting:WaitForChild("DepthOfField")

local library = getgenv().Library or print("CANT FIND LIBRARY")
local ESPLib = getgenv().mstudio45.ESPLibrary or print("CANT FIND ESPLIB")
local themes = getgenv().ThemeManager or print("CANT FIND THEMES")
local saves = getgenv().SaveManager or print("CANT FIND SAVES")
local options = getgenv().Linoria.Options or print("CANT FIND TOGGLES")
local toggles = getgenv().Linoria.Toggles or print("CANT FIND TOGGLES")
