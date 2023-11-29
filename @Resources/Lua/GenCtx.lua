
function StartCtx()
	local saveLocation = SKIN:GetVariable('SKINSPATH')..'#NekStart\\Ctx\\Main.ini'
	-- local SAW = tonumber(SKIN:GetVariable('SCREENAREAWIDTH'))
	local CCW = tonumber(SKIN:GetVariable('CURRENTCONFIGWIDTH'))
	-- local SAH = tonumber(SKIN:GetVariable('SCREENAREAHEIGHT'))
	local CCH = tonumber(SKIN:GetVariable('CURRENTCONFIGHEIGHT'))
	local SkinX = tonumber(SKIN:GetX())
	local SkinY = tonumber(SKIN:GetY())
	local Pos = tonumber(SKIN:GetVariable('Sec.Ctx.Pos', '0'))
	local Settings = tonumber(SKIN:GetVariable('Sec.Ctx.Settings', '1'))
	-- print(Blur, Settings)
	-- /////////////////////////////////////////////////////////

	if Pos == 1 then
		SKIN:Bang('!WriteKeyValue', 'Variables', 'CCW', CCW, saveLocation)
		SKIN:Bang('!WriteKeyValue', 'Variables', 'CCH', CCH, saveLocation)
		SKIN:Bang('!WriteKeyValue', 'Variables', 'SkinX', SkinX, saveLocation)
		SKIN:Bang('!WriteKeyValue', 'Variables', 'SkinY', SkinY, saveLocation)
	end

	SKIN:Bang('!WriteKeyValue', 'Variables', 'Sec.Ctx.Pos', Pos, saveLocation)
	SKIN:Bang('!WriteKeyValue', 'Variables', 'Sec.Ctx.Settings', Settings, saveLocation)

	if SKIN:GetMeasure('mToggle') then
		SKIN:Bang('!DisableMeasure', 'mToggle')
		SKIN:Bang('!WriteKeyValue', 'Variables', 'Ctx.Parent.Toggle', 1, SKIN:GetVariable('SKINSPATH')..'#NekStart\\Ctx\\Main.ini')
	else
		SKIN:Bang('!WriteKeyValue', 'Variables', 'Ctx.Parent.Toggle', 0, SKIN:GetVariable('SKINSPATH')..'#NekStart\\Ctx\\Main.ini')
	end

	-- local ParentZPOS = SKIN:GetVariable('CURRENTCONFIGZPOS')
	-- if ParentZPOS == '2' then
	-- 	SKIN:Bang('[!ZPos 1]')
	-- end
	-- SKIN:Bang('!WriteKeyValue', 'Variables', 'Ctx.Parent.ZPos', ParentZPOS, SKIN:GetVariable('SKINSPATH')..'#NekStart\\Ctx\\Main.ini')

	SKIN:Bang('!WriteKeyValue', 'Variables', 'Ctx.Parent', SKIN:GetVariable('CURRENTCONFIG'), SKIN:GetVariable('SKINSPATH')..'#NekStart\\Ctx\\Main.ini')
	SKIN:Bang('[!ActivateConfig "#NekStart\\Ctx"][!SetVariable Sec.Skin "#ROOTCONFIG#" "#NekStart\\Ctx"]')

end