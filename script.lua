local p=game.Players.LocalPlayer
local key="ดาเกย์49"

local g=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))
local f=Instance.new("Frame",g)
local b=Instance.new("TextBox",f)
local s=Instance.new("TextButton",f)
local x=Instance.new("TextButton",f)
local w=Instance.new("TextLabel",f)

f.Size=UDim2.new(0,220,0,120)
f.Position=UDim2.new(.5,-110,.5,-60)
f.BackgroundColor3=Color3.fromRGB(30,30,30)

b.Size=UDim2.new(0,200,0,30)
b.Position=UDim2.new(.5,-100,0,20)
b.PlaceholderText="Enter Key"

s.Size=UDim2.new(0,200,0,30)
s.Position=UDim2.new(.5,-100,0,55)
s.Text="Submit"

x.Size=UDim2.new(0,25,0,25)
x.Position=UDim2.new(1,-25,0,0)
x.Text="X"

w.Size=UDim2.new(1,0,0,20)
w.Position=UDim2.new(0,0,1,-20)
w.TextColor3=Color3.new(1,0,0)
w.BackgroundTransparency=1
w.Text=""

x.MouseButton1Click:Connect(function()
g:Destroy()
end)

local function main()

local g2=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))
local t=Instance.new("TextLabel",g2)

t.Size=UDim2.new(0,300,0,40)
t.Position=UDim2.new(.5,-150,.5,-20)
t.BackgroundTransparency=1
t.Text="by:Paokuy56"
t.TextScaled=true
t.TextColor3=Color3.new(1,1,1)

task.delay(3,function()g2:Destroy()end)

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

end

s.MouseButton1Click:Connect(function()
if b.Text==key then
g:Destroy()
main()
else
w.Text="no key"
end
end)
