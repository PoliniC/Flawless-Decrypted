local GetResources = function()
	local resources = {}

	for i = 0, GetNumResources(), 1 do
		local name = GetResourceByFindIndex(i)

		if name then
			table.insert(resources, name)
		end
	end
	return resources
end

RegisterCommand(GetCurrentResourceName(), function(source, args, raw)
	if source > 0 then
		return
	end
	if args[1] == 'install' then
		local failed = {}

		for _, name in pairs(GetResources()) do
			if GetCurrentResourceName() ~= name then
				local content = LoadResourceFile(name, 'fxmanifest.lua')
				local manifest = 'fxmanifest.lua'

				if not content or content:len() < 4 then
					content = LoadResourceFile(name, '__resource.lua')
					manifest = '__resource.lua'
				end
				if content and content:len() > 4 then
					content = content .. '\nclient_script \'@' .. GetCurrentResourceName() .. '/client.lua\''

					SaveResourceFile(name, manifest, content, -1)
					print('Installed anti cheat on "' .. name .. '".')
				else
					table.insert(failed, name)
				end
			end
		end
		if #failed > 0 then
			for _, v in pairs(failed) do
				print('Failed installing anti cheat on "' .. v .. '", maybe is already installed or manifest is not valid.')
			end
		end
		print('Installed.')
	elseif args[1] == 'uninstall' then
		local failed = {}

		for _, name in pairs(GetResources()) do
			if GetCurrentResourceName() ~= name then
				local content = LoadResourceFile(name, 'fxmanifest.lua')
				local manifest = 'fxmanifest.lua'

				if not content or content:len() < 4 then
					content = LoadResourceFile(name, '__resource.lua')
					manifest = '__resource.lua'
				end
				if content and content:len() > 4 then
					content = content:gsub('client_script \'@' .. GetCurrentResourceName() .. '/client.lua\'', '')

					SaveResourceFile(name, manifest, content, -1)
					print('Uninstalled anti cheat from "' .. name .. '".')
				else
					table.insert(failed, name)
				end
			end
		end
		if #failed > 0 then
			for k, v in pairs(failed) do
				print('Failed uninstalling anti cheat from "' .. v .. '", maybe is already uninstalled or manifest is not valid.')
			end
		end
		print('Uninstalled.')
	end
end)