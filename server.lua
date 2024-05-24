-- Copyright (c) 2024 RAMPAGE Interactive. All rights reserved.

function tablefind(t, v)
	for _, a in pairs(t) do
		if a == v then
			return a
		end
	end

	return nil
end

AddEventHandler("bearduty_rich:DUTY_STATUS_CHANGE", function(source, isOnDuty, trackData)
    if not tablefind(AllowedDepartments, trackData.Department) then
        return
    end

    TriggerClientEvent('BearLEOLoadouts:OnEvent', source, isOnDuty)
end)
