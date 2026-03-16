local p=game.Players.LocalPlayer
local key="ดาเกย์49"

-- HWID
local hwid="unknown"
pcall(function()if gethwid then hwid=gethwid()end end)

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
task.wait(0.2) -- 🔥 กันบัคโหลดตัว

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

local function apply()
local k=Instance.new("SpecialMesh",l)
k.MeshType="FileMesh"
k.MeshId="rbxassetid://101851696"
k.TextureId="rbxassetid://101851254"
end

apply()

-- 🔥 กันโดนรีเซ็ต
l.ChildAdded:Connect(function(v)
if v:IsA("SpecialMesh") then
v:Destroy()
apply()
end
end)
end
end

if p.Character then a(p.Character)end
p.CharacterAdded:Connect(a)

end

-- เช็ค HWID
local saved=false
pcall(function()
if isfile and readfile and isfile("paokuy_hwid.txt") then
if readfile("paokuy_hwid.txt")==hwid then
saved=true
end
end
end)

if saved then
main()
return
end

-- UI
local g=Instance.new("ScreenGui",p:WaitForChild("PlayerGui"))

local f=Instance.new("Frame",g)
f.Size=UDim2.new(0,240,0,130)
f.Position=UDim2.new(.5,-120,.5,-65)
f.BackgroundColor3=Color3.fromRGB(30,30,30)
Instance.new("UICorner",f).CornerRadius=UDim.new(0,10)

local stroke=Instance.new("UIStroke",f)
stroke.Color=Color3.fromRGB(80,80,80)

local grad=Instance.new("UIGradient",f)
grad.Color=ColorSequence.new{
ColorSequenceKeypoint.new(0,Color3.fromRGB(50,50,50)),
ColorSequenceKeypoint.new(1,Color3.fromRGB(20,20,20))
}

local title=Instance.new("TextLabel",f)
title.Size=UDim2.new(1,0,0,30)
title.BackgroundTransparency=1
title.Text="Paokuy Hub"
title.TextScaled=true
title.TextColor3=Color3.new(1,1,1)

local b=Instance.new("TextBox",f)
b.Size=UDim2.new(0,200,0,30)
b.Position=UDim2.new(.5,-100,0,40)
b.PlaceholderText="Enter Key"
b.BackgroundColor3=Color3.fromRGB(40,40,40)
b.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",b).CornerRadius=UDim.new(0,6)

local s=Instance.new("TextButton",f)
s.Size=UDim2.new(0,200,0,30)
s.Position=UDim2.new(.5,-100,0,75)
s.Text="Submit"
s.BackgroundColor3=Color3.fromRGB(50,50,50)
s.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",s).CornerRadius=UDim.new(0,6)

local x=Instance.new("TextButton",f)
x.Size=UDim2.new(0,25,0,25)
x.Position=UDim2.new(1,-30,0,5)
x.Text="X"
x.BackgroundTransparency=1
x.TextColor3=Color3.fromRGB(255,80,80)

local w=Instance.new("TextLabel",f)
w.Size=UDim2.new(1,0,0,20)
w.Position=UDim2.new(0,0,1,-20)
w.BackgroundTransparency=1
w.TextColor3=Color3.fromRGB(255,0,0)

-- Drag
local UIS=game:GetService("UserInputService")
local drag=false
local mousePos,framePos

f.InputBegan:Connect(function(i)
if i.UserInputType==Enum.UserInputType.MouseButton1 then
drag=true mousePos=i.Position framePos=f.Position end end)

f.InputEnded:Connect(function(i)
if i.UserInputType==Enum.UserInputType.MouseButton1 then drag=false end end)

UIS.InputChanged:Connect(function(i)
if drag and i.UserInputType==Enum.UserInputType.MouseMovement then
local d=i.Position-mousePos
f.Position=UDim2.new(framePos.X.Scale,framePos.X.Offset+d.X,framePos.Y.Scale,framePos.Y.Offset+d.Y)
end end)

-- Animation
f.Size=UDim2.new(0,0,0,0)
f:TweenSize(UDim2.new(0,240,0,130),"Out","Back",0.4,true)

x.MouseButton1Click:Connect(function()g:Destroy()end)

s.MouseButton1Click:Connect(function()
if b.Text==key then
pcall(function()if writefile then writefile("paokuy_hwid.txt",hwid)end end)
g:Destroy()
main()
else
w.Text="no key"
end
end)
