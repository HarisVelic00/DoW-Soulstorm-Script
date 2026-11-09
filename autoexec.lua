bind("F1", "toggle_fog()")
bind("F2", "give_resources()")
bind("F3", "switch_player_control()")
bind("F4", "setsimrate(5)")
bind("F5", "setsimrate(8)")
bind("F6", "setsimrate(40)")
bind("F7", "toggle_fow()")
bind("F8", "toggle_ui_visibility()")
bind("F9", "toggle_instant_build()")

local fow_mode = false
local ui_visible = true
local instant_build = false

local RESOURCES = {
    default = {RT_Requisition, RT_Power},
    necron_race = {RT_Power},
    dark_eldar_race = {RT_Requisition, RT_Power, RT_Souls},
    sisters_race = {RT_Requisition, RT_Power, RT_Faith},
}

local RESOURCE_AMOUNT = {
    [RT_Requisition] = 100000,
    [RT_Power] = 100000,
    [RT_Souls] = 10000,
    [RT_Faith] = 10000,
}

function toggle_fog()
    fog_toggle()
end

function give_resources()
    local player = World_GetPlayerAt(Tut_GetLocalPlayerIndex())
    if not player then return end

    local race = Player_GetRaceName(player)

    for _, resource in ipairs(RESOURCES[race] or RESOURCES.default) do
        Player_SetResource(player, resource, RESOURCE_AMOUNT[resource])
    end
end

function switch_player_control()
    local player = World_GetPlayerAt(Tut_GetLocalPlayerIndex())
    if not player then return end
    if Cpu_IsCpuPlayer(player) then
        W40k_SwitchToPlayer(player, true)
    else
        Cpu_ControlLocalPlayer()
    end
end

function toggle_fow()
    fow_mode = not fow_mode

    if fow_mode then
        FOW_RevealAll()
    else
        FOW_Reset()
    end
end

function toggle_ui_visibility()
    ui_visible = not ui_visible

    if ui_visible then
        taskbar_show()
        cursor_show()
        W40k_EnableSelectionUI(true)
    else
        taskbar_hide()
        cursor_hide()
        W40k_EnableSelectionUI(false)
    end

    message_hide()
end

function toggle_instant_build()
    if instant_build == false then
        sd_instant_build = 1
        instant_build = true
    else
        sd_instant_build = 0
        instant_build = false
    end
end