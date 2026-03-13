local p=game.Players.LocalPlayer
local g=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))
local t=Instance.new("TextLabel",g)

t.Size=UDim2.new(0,300,0,40)
t.Position=UDim2.new(.5,-150,.5,-20)
t.BackgroundTransparency=1
t.Text="by:Paokuy56"
t.TextScaled=true
t.TextColor3=Color3.new(1,1,1)

task.delay(3,function()g:Destroy()end)

local function a(c)
local h=c:WaitForChild("Head")
h.Transparency=1
local f=h:FindFirstChild("face")if f then f:Destroy()end
local m=Instance.new("SpecialMesh",h)
m.MeshType="FileMesh"
m.MeshId="rbxassetid://1095708"
m.Scale=Vector3.new(.001,.001,.001)

local l=c:FindFirstChild("Right Leg")
if l then
l.Color=Color3.fromRGB(64,64,64)
for _,v in pairs(l:GetChildren())do
if v:IsA("SpecialMesh")then v:Destroy()end
end
local k=Instance.new("SpecialMesh",l)
k.MeshType="FileMesh"
k.MeshId="rbxassetid://101851696"
k.TextureId="rbxassetid://101851254"
end
end

if p.Character then a(p.Character)end
p.CharacterAdded:Connect(a)
