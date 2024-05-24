-- Copyright (c) 2024 RAMPAGE Interactive. All rights reserved.

AddEventHandler("bearduty_rich:DUTY_STATUS_CHANGE", function(source, isOnDuty, trackData)
    TriggerClientEvent('BearLEOLoadouts:OnEvent', source, isOnDuty)
end)
