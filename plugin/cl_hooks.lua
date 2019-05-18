local PLUGIN = PLUGIN;

-- Open the datafile, start the population functions. Restricted: means it is limited.
netstream.Hook("CreateRestrictedDatafile", function(data)
	local target = data[1];
	local GenericData = data[2]
	local datafile = data[3];

	PLUGIN.Datafile = vgui.Create("cwRestrictedDatafile");
	PLUGIN.Datafile:PopulateDatafile(target, datafile);
	PLUGIN.Datafile:PopulateGenericData(target, datafile, GenericData);
end);

-- Create the full datafile.
netstream.Hook("CreateFullDatafile", function(data)
	local target = data[1];
	local GenericData = data[2]
	local datafile = data[3];

	PLUGIN.Datafile = vgui.Create("cwFullDatafile");
	PLUGIN.Datafile:PopulateDatafile(target, datafile);
	PLUGIN.Datafile:PopulateGenericData(target, datafile, GenericData);
end);

-- Management panel, for removing entries.
netstream.Hook("CreateManagementPanel", function(data)
	local target = data[1];
	local datafile = data[2];

	PLUGIN.Managefile = vgui.Create("cwDfManageFile");
	PLUGIN.Managefile:PopulateEntries(target, datafile);
end);
