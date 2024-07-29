-- Key bindings
bind("F1", "toggle_FOG()")
bind("F2", "GiveResources()")
bind("F3", "switch_player_control()")
bind("F4", "setsimrate(5)")
bind("F5", "setsimrate(12)")
bind("F6", "setsimrate(30)")
bind("F7", "toggle_FOW()")
bind("F8", "toggle_screenmode()")

-- Toggle Fog
function toggle_FOG()
    fog_toggle()
end

-- Give resources to the player
function GiveResources()
    local player1 = World_GetPlayerAt(0)
    local player_race = Player_GetRaceName(player1)
    if player_race == "necron_race" then
        Player_SetResource(player1, RT_Power, 20000)
    else
        Player_SetResource(player1, RT_Requisition, 10000)
        Player_SetResource(player1, RT_Power, 10000)
    end
end

-- Switch player control between CPU and player
function switch_player_control()
    local player = World_GetPlayerAt(Tut_GetLocalPlayerIndex())
    if Cpu_IsCpuPlayer(player) then
        W40k_SwitchToPlayer(player, true)
    else
        Cpu_ControlLocalPlayer()
    end
end

-- Toggle Fog of War
fowmode = 0
function toggle_FOW()
    if fowmode == 0 then
        FOW_RevealAll()
        fowmode = 1
    else
        FOW_Reset()
        fowmode = 0
    end
end

-- Toggle screen mode
g_ScreenModeSwitch = true
function toggle_screenmode()
    if g_ScreenModeSwitch then
        g_ScreenModeSwitch = false
        taskbar_hide()
        message_hide()
        SS_ToggleModifierEvents(false)
        ingame_stats_mouseover_toggle(false)
        ingame_stats_toggle(false)
        ingame_select_ui_toggle(false)
    else
        g_ScreenModeSwitch = true
        taskbar_show()
        message_show()
        SS_ToggleModifierEvents(true)
        ingame_stats_mouseover_toggle(true)
        ingame_stats_toggle(true)
        ingame_select_ui_toggle(true)
    end
end
