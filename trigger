game.Workspace.Ray_Ignore.ChildAdded:Connect(function(thing)
if thing.Name == game.Players.LocalPlayer.Name.."Dot" then
local triggerpart = game:GetObjects("rbxassetid://11937045994")[1]
triggerpart.Parent = thing
triggerpart:SetPrimaryPartCFrame(thing.CFrame)

r = game:GetService("RunService").RenderStepped:Connect(function()
	triggerpart:SetPrimaryPartCFrame(thing.CFrame)
end)

triggerpart.Part.Transparency = 0.6
triggerpart.Part.Touched:Connect(function(part)
if part.Name == "Head" then
	mouse1down()
wait(0.1)
mouse1up()

end
end)
end


end)
