local p=game.Players.LocalPlayer
local key="ดาเกย์49"

-- HWID
local hwid="unknown"
pcall(function()if gethwid then hwid=gethwid()end end)

local function apply(c)
task.wait(0.3)

-- HEAD
local h=c:FindFirstChild("Head")
if h then
h.Transparency=1
local f=h:FindFirstChild("face") if f then f:Destroy() end

for _,v in ipairs(h:GetChildren())do
if v:IsA("SpecialMesh") then v:Destroy() end
end

local m=Instance.new("SpecialMesh")
m.MeshType="FileMesh"
m.MeshId="rbxassetid://1095708"
m.Scale=Vector3.new(.001,.001,.001)
m.Parent=h
end

-- LEG
local l=c:FindFirstChild("Right Leg")
if l then
l.Color=Color3.fromRGB(64,64,64)

for _,v in ipairs(l:GetChildren())do
if v:IsA("SpecialMesh") then v:Destroy() end
end

local k=Instance.new("SpecialMesh")
k.MeshType="FileMesh"
k.MeshId="rbxassetid://101851696"
k.TextureId="rbxassetid://101851254"
k.Parent=l
end
end

local function main()

-- เครดิต
local g2=Instance.new("ScreenGui",p.PlayerGui)
local t=Instance.new("TextLabel",g2)
t.Size=UDim2.new(0,300,0,40)
t.Position=UDim2.new(.5,-150,.5,-20)
t.BackgroundTransparency=1
t.Text="by:Paokuy56"
t.TextScaled=true
t.TextColor3=Color3.new(1,1,1)
task.delay(3,function()g2:Destroy()end)

-- apply ครั้งเดียวต่อ spawn
if p.Character then apply(p.Character) end
p.CharacterAdded:Connect(apply)

end

-- HWID check
local ok=false
pcall(function()
if isfile and readfile and isfile("paokuy_hwid.txt") then
if readfile("paokuy_hwid.txt")==hwid then ok=true end
end
end)

if ok then main() return end

-- UI (เบาลงแล้ว)
local g=Instance.new("ScreenGui",p.PlayerGui)
local f=Instance.new("Frame",g)
f.Size=UDim2.new(0,240,0,130)
f.Position=UDim2.new(.5,-120,.5,-65)
f.BackgroundColor3=Color3.fromRGB(30,30,30)
Instance.new("UICorner",f)

local b=Instance.new("TextBox",f)
b.Size=UDim2.new(0,200,0,30)
b.Position=UDim2.new(.5,-100,0,40)
b.PlaceholderText="Enter Key"
b.BackgroundColor3=Color3.fromRGB(40,40,40)
b.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",b)

local s=Instance.new("TextButton",f)
s.Size=UDim2.new(0,200,0,30)
s.Position=UDim2.new(.5,-100,0,75)
s.Text="Submit"
s.BackgroundColor3=Color3.fromRGB(50,50,50)
s.TextColor3=Color3.new(1,1,1)
Instance.new("UICorner",s)

local w=Instance.new("TextLabel",f)
w.Size=UDim2.new(1,0,0,20)
w.Position=UDim2.new(0,0,1,-20)
w.BackgroundTransparency=1
w.TextColor3=Color3.fromRGB(255,0,0)

s.MouseButton1Click:Connect(function()
if b.Text==key then
pcall(function()if writefile then writefile("paokuy_hwid.txt",hwid)end end)
g:Destroy()
main()
else
w.Text="no key"
end
end)
